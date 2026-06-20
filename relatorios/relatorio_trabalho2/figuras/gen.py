#!/usr/bin/env python3
# Gera graficos comparativos LocalBP vs BiModeBP a partir do stats.txt do gem5.
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt

labels = ["LocalBP", "BiModeBP"]
c_local, c_bimode = "#4C72B0", "#C44E52"
colors = [c_local, c_bimode]

# Dados extraidos de m5out/{local,bimode}/stats.txt
cond_pred   = [900700, 803703]
cond_inc    = [101531, 68838]
mispred_rate = [100 * cond_inc[i] / cond_pred[i] for i in range(2)]  # %
ipc         = [1.460320, 1.516467]
sim_ms      = [7.538814, 7.180693]   # simSeconds -> ms
squashed    = [102245, 62953]

def annotate(ax, bars, fmt):
    for b in bars:
        h = b.get_height()
        ax.annotate(fmt.format(h), (b.get_x() + b.get_width()/2, h),
                    ha="center", va="bottom", fontsize=10, xytext=(0, 2),
                    textcoords="offset points")

# Fig 1: taxa de erro de predicao
fig, ax = plt.subplots(figsize=(4.8, 2.7))
bars = ax.bar(labels, mispred_rate, color=colors, width=0.55)
ax.set_ylabel("Taxa de erro de predição (%)")
ax.set_title("Erros de predição de desvios condicionais")
ax.set_ylim(0, max(mispred_rate) * 1.25)
annotate(ax, bars, "{:.2f}%")
fig.tight_layout(); fig.savefig("mispred.png", dpi=200); plt.close(fig)

# Fig 2: total avaliados vs incorretos (barras agrupadas)
import numpy as np
x = np.arange(2); w = 0.38
fig, ax = plt.subplots(figsize=(4.8, 2.7))
b1 = ax.bar(x - w/2, [v/1e3 for v in cond_pred], w, label="Avaliados", color="#55A868")
b2 = ax.bar(x + w/2, [v/1e3 for v in cond_inc],  w, label="Incorretos", color="#C44E52")
ax.set_xticks(x); ax.set_xticklabels(labels)
ax.set_ylabel("Desvios condicionais (milhares)")
ax.set_title("Desvios avaliados vs. mal previstos")
ax.legend(fontsize=9)
fig.tight_layout(); fig.savefig("branches.png", dpi=200); plt.close(fig)

# Fig 3: IPC
fig, ax = plt.subplots(figsize=(4.8, 2.7))
bars = ax.bar(labels, ipc, color=colors, width=0.55)
ax.set_ylabel("IPC (instruções por ciclo)")
ax.set_title("Desempenho — IPC")
ax.set_ylim(0, max(ipc) * 1.18)
annotate(ax, bars, "{:.3f}")
fig.tight_layout(); fig.savefig("ipc.png", dpi=200); plt.close(fig)

# Fig 4: tempo de simulacao + instrucoes descartadas (eixo duplo)
fig, ax = plt.subplots(figsize=(4.8, 2.7))
bars = ax.bar(labels, sim_ms, color=colors, width=0.55)
ax.set_ylabel("Tempo simulado (ms)")
ax.set_title("Tempo total de simulação")
ax.set_ylim(0, max(sim_ms) * 1.18)
annotate(ax, bars, "{:.3f} ms")
fig.tight_layout(); fig.savefig("simtime.png", dpi=200); plt.close(fig)

# Fig 5: instrucoes descartadas (squashed)
fig, ax = plt.subplots(figsize=(4.8, 2.7))
bars = ax.bar(labels, [v/1e3 for v in squashed], color=colors, width=0.55)
ax.set_ylabel("Instruções descartadas (milhares)")
ax.set_title("Trabalho especulativo desperdiçado")
ax.set_ylim(0, max(squashed)/1e3 * 1.2)
annotate(ax, bars, "{:.1f}k")
fig.tight_layout(); fig.savefig("squashed.png", dpi=200); plt.close(fig)

print("figuras geradas:", mispred_rate)
