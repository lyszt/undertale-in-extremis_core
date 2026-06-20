#!/usr/bin/env python3
# Graficos do contraste entre cargas de trabalho (mista vs aleatoria),
# para a versao estendida do relatorio. Dados de m5out/{,random_}{local,bimode}.
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np

workloads = ["Mista", "Aleatória"]
c_local, c_bimode = "#4C72B0", "#C44E52"

# condPredicted / condIncorrect por (carga, preditor)
cond_pred = {"local": [900700, 1526991], "bimode": [803703, 1424053]}
cond_inc  = {"local": [101531, 192211],  "bimode": [68838, 143453]}
ipc       = {"local": [1.460320, 1.418401], "bimode": [1.516467, 1.479837]}

rate = {k: [100*cond_inc[k][i]/cond_pred[k][i] for i in range(2)] for k in cond_pred}
# vantagem relativa do BiMode = reducao % da taxa de erro vs LocalBP
advantage = [100*(rate["local"][i]-rate["bimode"][i])/rate["local"][i] for i in range(2)]

x = np.arange(2); w = 0.36

def grouped(ax, data_local, data_bimode, ylabel, title, fmt):
    b1 = ax.bar(x - w/2, data_local,  w, label="LocalBP",  color=c_local)
    b2 = ax.bar(x + w/2, data_bimode, w, label="BiModeBP", color=c_bimode)
    ax.set_xticks(x); ax.set_xticklabels(workloads)
    ax.set_ylabel(ylabel); ax.set_title(title)
    ax.legend(fontsize=8)
    for b in list(b1)+list(b2):
        h = b.get_height()
        ax.annotate(fmt.format(h), (b.get_x()+b.get_width()/2, h), ha="center",
                    va="bottom", fontsize=8, xytext=(0,1), textcoords="offset points")

# Fig A: taxa de erro por carga x preditor
fig, ax = plt.subplots(figsize=(4.8, 2.7))
grouped(ax, rate["local"], rate["bimode"], "Taxa de erro (%)",
        "Erro de predição por carga", "{:.2f}")
ax.set_ylim(0, max(rate["local"])*1.2)
fig.tight_layout(); fig.savefig("wl_mispred.png", dpi=200); plt.close(fig)

# Fig B: IPC por carga x preditor
fig, ax = plt.subplots(figsize=(4.8, 2.7))
grouped(ax, ipc["local"], ipc["bimode"], "IPC", "IPC por carga", "{:.3f}")
ax.set_ylim(0, max(ipc["local"])*1.18)
fig.tight_layout(); fig.savefig("wl_ipc.png", dpi=200); plt.close(fig)

# Fig C: vantagem relativa do BiMode (reducao da taxa de erro) por carga
fig, ax = plt.subplots(figsize=(4.8, 2.7))
bars = ax.bar(workloads, advantage, color=["#55A868", "#8172B3"], width=0.5)
ax.set_ylabel("Redução de erro do BiMode (%)")
ax.set_title("Vantagem do BiModeBP vs LocalBP")
ax.set_ylim(0, max(advantage)*1.25)
for b in bars:
    h = b.get_height()
    ax.annotate("{:.0f}%".format(h), (b.get_x()+b.get_width()/2, h), ha="center",
                va="bottom", fontsize=10, xytext=(0,2), textcoords="offset points")
fig.tight_layout(); fig.savefig("wl_advantage.png", dpi=200); plt.close(fig)

print("rates:", rate, "advantage:", advantage)
