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

# --- Mensagens de Escolha de Estrategia ---
msg_titulo_estrategia:  .string " === SELECAO DE ESTRATEGIA === \n"
msg_j1_estrategia:      .string "\n Escolhendo aleatoriamente a estrategia do Jogador 1...\n"
msg_j2_estrategia:      .string "\n Escolhendo aleatoriamente a estrategia do Jogador 2...\n"
msg_op_aleatoria:       .string "  [1] Aleatorio  (IA decide na hora)\n"
msg_op_agressiva:       .string "  [2] Agressivo  (sempre ataca)\n"
msg_op_defensiva:       .string "  [3] Defensivo  (prioriza defesa)\n"
msg_estrategia_ok:      .string " Estrategia registrada!\n"

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


  # imprime: " === SELECAO DE ESTRATEGIA === "
  la a1, msg_titulo_estrategia
  li a0, 4
  ecall

# --- Estrategia do Jogador 1 ---
  # imprime: "Escolha a estrategia do Jogador 1:"
  la a1, msg_j1_estrategia
  li a0, 4
  ecall

  # imprime: "[1] Aleatorio"
  la a1, msg_op_aleatoria
  li a0, 4
  ecall

  # imprime: "[2] Agressivo"
  la a1, msg_op_agressiva
  li a0, 4
  ecall

  # imprime: "[3] Defensivo"
  la a1, msg_op_defensiva
  li a0, 4
  ecall

  call randomizer
  call print_int

  la t0, estrategias
  sw a0, 0(t0)                 # salva estrategia do jogador 1



  # imprime: "-----------------------------------------"
  la a1, line_thin
  li a0, 4
  ecall

# --- Estrategia do Jogador 2 ---
  # imprime: "Escolha a estrategia do Jogador 2:"
  la a1, msg_j2_estrategia
  li a0, 4
  ecall

  la t0, estrategias
  sw a0, 4(t0)                 # salva estrategia do jogador 2

  
  # imprime: " !!! PREPARE PARA O COMBATE !!! "
  la a1, event_alert
  li a0, 4
  ecall


  li a0, 10
  ecall




randomizer:
	# algoritmo popular de randomização que usa bitshift
	# xorshift
	li t0, 5
	xor t0, t0, t1

	slli t1, t0, 13
	xor t0, t0, t1

	srli t1, t0, 17
	xor t0, t0, t1

	slli t1, t0, 5
	xor t0, t0, t1

	li t1, 5

	rem t0, t0, t1
	mv a1, t0
	ret

print_int:
	# supoe que há um dado em a1
	li a0, 1
	ecall 
	ret
