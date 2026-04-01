# ORG 2026.1
# Sistema de combate de RPG simulado em RISCV

.data

# decoradores

.data

# --- DIVISORES ---
deco_vine:      .string " ~<>-~<>-~<>-~<>-~<>-~<>-~<>-~<>-~<>-~<>-~ \n"
deco_banana:    .string "  \_/>  \_/>  \_/>  \_/>  \_/>  \_/>  \_/> \n"
deco_leaves:    .string " \|/   \|/   \|/   \|/   \|/   \|/   \|/ \n"
deco_monkey:    .string " @(o.o)@   @(o.o)@   @(o.o)@   @(o.o)@ \n"

# --- SEPARADORES ---
line_thin:      .string " ----------------------------------------- \n"
line_thick:     .string " ========================================= \n"
line_double:    .string " ========================================= \n"
line_dot:       .string " ......................................... \n"

# --- MENUS DE ACAO ---
menu_yn:        .string "        [ S ] SIM             [ N ] NAO     \n"
menu_continue:  .string "         [ PRESSIONE QUALQUER TECLA ]      \n"
menu_combat:    .string "  [1] ATACAR   [2] DEFENDER [3] ITEM       \n"
menu_magic:     .string "  [1] MAGIA    [2] FUGIR                   \n"
menu_nav:       .string "  [N] NORTE  [S] SUL    [L] LESTE [O] OESTE\n"

# --- BARRAS DE STATUS ---
bar_hp_full:    .string " HP: [##########] \n"
bar_hp_half:    .string " HP: [#####     ] \n"
bar_hp_crit:    .string " HP: [#         ] \n"

bar_mp_full:    .string " MP: [**********] \n"
bar_mp_half:    .string " MP: [***** ] \n"
bar_mp_crit:    .string " MP: [* ] \n"

# --- ALERTAS DE COMBATE E EVENTOS ---
event_alert:    .string " !!! PREPARE PARA O COMBATE !!! \n"
event_crit:     .string " >>> ACERTO CRITICO <<< \n"
event_miss:     .string " ... o ataque errou ... \n"
event_dead:     .string " VOCE MORREU.\n"
event_hit:      .string " Voce ataca "
event_exclamation: .string "!!!"
event_interrogation: .string "?"
event_surprise: .string "?!!"

# --- CAIXAS DE TEXTO E DIALOGO ---
box_top:        .string " +---------------------------------------+ \n | "
box_mid:        .string " | \n | "
box_bot:        .string " | \n +---------------------------------------+ \n"

# --- PONTEIROS E ESPACAMENTO ---
ui_arrow:       .string "  > "
ui_dot:         .string "  * "
pad_nl:         .string "\n"
pad_dnl:        .string "\n\n"
pad_tab:        .string "    "

# flag para determinar qual jogador esta jogando 
player_turn: .word 0 

# flag para determinar as estrategias selecionadas 
estrategias: .word 0, 0

# matrix dos pontos de vida dos jogadores
players_health: .word 100, 100
# matrix dos pontos de mana dos jogadores 
players_mp: .word 100, 100

# ps: esse codigo segue o estilo do
# simulador venus, com id da chamada
# em a0 

.text 
.globl _start
_start:
  la a1, event_alert
  li a0, 4
  ecall

  li a0, 10
  ecall
