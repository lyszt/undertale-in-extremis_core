# ORG 2026.1
# Sistema de combate de RPG simulado em RISCV

  .data

# --- DIVISORES ---
deco_vine:      .string " ~<>-~<>-~<>-~<>-~<>-~<>-~<>-~<>-~<>-~<>-~ \n"
deco_banana:    .string " \_/> \_/> \_/> \_/> \_/> \_/> \_/> \n"
deco_leaves:    .string " \|/ \|/ \|/ \|/ \|/ \|/ \|/ \n"
deco_monkey:    .string " @(o.o)@ @(o.o)@ @(o.o)@ @(o.o)@ \n"

# --- SEPARADORES ---
line_thin:      .string " ----------------------------------------- \n"
line_thick:     .string " ========================================= \n"
line_double:    .string " ========================================= \n"
line_dot:       .string " ......................................... \n"

# --- MENUS DE ACAO ---
menu_yn:        .string " [ S ] SIM [ N ] NAO \n"
menu_continue:  .string " [ PRESSIONE QUALQUER TECLA ] \n"
menu_combat:    .string " [1] ATACAR [2] DEFENDER [3] ITEM \n"
menu_magic:     .string " [1] MAGIA [2] FUGIR \n"
menu_nav:       .string " [N] NORTE [S] SUL [L] LESTE [O] OESTE\n"

# --- BARRAS DE STATUS ---
bar_hp_full:    .string " HP: [##########] \n"
bar_hp_half:    .string " HP: [##### ] \n"
bar_hp_crit:    .string " HP: [# ] \n"

bar_mp_full:    .string " MP: [**********] \n"
bar_mp_half:    .string " MP: [***** ] \n"
bar_mp_crit:    .string " MP: [* ] \n"

action_interface: .string "[ ATTACK ]  [  SKILL  ]  [  DEFEND  ]\n"


# --- Mensagens de Escolha de Estrategia ---
msg_titulo_estrategia:  .string " === SELECAO DE ESTRATEGIA === \n"
msg_j1_estrategia:      .string "\n Escolhendo aleatoriamente a estrategia do Jogador 1...\n"
msg_j2_estrategia:      .string "\n Escolhendo aleatoriamente a estrategia do Jogador 2...\n"
msg_op_aleatoria:       .string " [1] Aleatorio (IA decide na hora)\n"
msg_op_agressiva:       .string " [2] Agressivo (sempre ataca)\n"
msg_op_defensiva:       .string " [3] Defensivo (prioriza defesa)\n"
msg_estrategia_ok:      .string " Estrategia registrada!\n"

# --- NOVAS MENSAGENS DE PREFIXO ---
msg_j1_escolha:         .string " O jogador 1 escolheu: "
msg_j2_escolha:         .string " O jogador 2 escolheu: "

# --- ASCII ARTS DOS PERSONAGENS ---
ascii_aleatorio:
  .ascii "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣶⣶⣶⣶⣶⣶⣆⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠀⠀⠀⣿⠋⠁⠀⣀⠀⢹⣿⣿⣿⠀⢀⡀⠀⠉⢻⡇⠀⠀⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠀⠀⠀⢹⣆⡀⠀⠉⠀⣾⡟⠙⣿⡄⠈⠁⠀⣀⣾⠁⠀⠀⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠀⠀⠀⢠⣿⡟⢯⣭⣾⣿⣀⣀⣻⣿⣮⣽⠛⢿⣧⠀⠀⠀⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠀⠀⠀⠸⣧⣄⠒⢠⣙⢛⡛⣛⣛⢛⡋⡄⣠⣴⡟⠀⠀⠀⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⢀⣶⣦⡀⠙⠿⣷⣶⣭⣘⣃⣘⣃⣘⣥⣾⡿⠏⣡⣾⠟⠒⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠂⠈⠙⠛⢶⣄⠀⠀⠛⡛⠛⠋⣛⠛⠃⠀⢀⣠⡿⠃⠀⠀⢦⡀⠀⠀\n"
  .ascii "⠀⠀⡠⠊⠀⠀⣴⠀⠀⠈⡟⠒⡤⠙⠿⠿⠁⠤⢶⠚⠉⠉⠀⢠⠁⠀⠀⠱⣄⠀\n"
  .ascii "⠀⢠⠁⠀⠀⠀⣿⡀⣀⣀⡁⠤⡇⢰⣷⣶⡄⣴⢼⠀⠀⢀⣠⢿⠀⠀⠀⠀⢹⡄\n"
  .ascii "⠰⢿⠀⠀⠀⢠⡉⠉⠀⠀⠀⡄⢺⢸⣿⣿⡇⡗⢺⢰⠈⠉⠀⠘⡆⠀⠀⠀⠀⡇\n"
  .ascii "⠀⠈⠳⣄⡀⢸⡇⠀⠀⠀⠀⣡⢚⢸⣿⣿⠇⠗⣆⠆⠀⠀⠀⠀⡇⠀⠀⢀⡴⠃\n"
  .ascii "⠀⠀⠀⠈⠃⠘⣷⣤⠀⠀⠀⢹⣾⣶⠒⠒⠀⢳⣧⣤⣄⣠⣄⣾⠃⢴⠆⠉⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⢉⠀⠀⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠀⠀⢰⠀⢠⡟⠀⠀⠀⠀⢀⢄⠀⠀⠀⢸⡇⠀⠀⠨⡆⠀⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠀⠀⡘⢀⣜⠇⠀⠀⠀⠀⢸⠸⡀⠀⠀⢸⣿⠀⠀⠀⢡⠀⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠀⠀⡇⢸⣿⠀⠀⠀⠀⠠⡇⠀⡇⠀⠀⠈⣿⠀⠀⠀⢸⠀⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠀⠀⠙⠛⠋⠤⠤⠤⠤⠄⠁⠀⠁⠤⠄⠠⠿⠧⠄⠛⠛⠀⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⢀⣴⣶⣦⣄⠲⣶⠀⠀⠀⠀⠀⠀⠀⢠⣷⣶⡶⢂⣠⣴⣶⣤⡀⠀⠀\n"
  .string "⠀⠀⠀⠀⠸⠿⠿⠿⠿⠧⠠⠄⠀⠀⠀⠀⠀⠀⠤⠤⠤⠐⠿⠿⠿⠿⠿⠃⠀⠀\n\n"

ascii_agressivo:
  .ascii "⠀⠀⢀⣤⣶⣶⣶⣶⣶⣶⣶⣤⠀⠀⠀\n"
  .ascii "⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣆⠀\n"
  .ascii "⢰⣾⣿⠛⠉⠙⣿⠛⠛⠛⢿⣿⣿⣿⡀\n"
  .ascii "⣾⣿⠉⠀⢸⡇⠀⠀⢸⡇⠀⣿⠿⢹⣿\n"
  .ascii "⣿⣿⠀⠀⠈⢡⡀⣀⣬⠁⠀⢉⣴⣾⣿\n"
  .ascii "⢿⡿⣿⣶⣖⣀⣉⠉⠀⣰⣶⣿⡿⢿⠿\n"
  .ascii "⠘⠃⠙⠛⠛⢛⣯⣀⣀⣟⡛⠛⠇⠘⠀\n"
  .ascii "⠀⠀⣤⠒⣶⢊⣛⢛⣛⢋⠛⣶⢢⡄⠀\n"
  .ascii "⠀⢸⣸⣿⠀⠀⠀⠀⠀⠀⠀⢻⣇⣸⠀\n"
  .ascii "⠀⢸⣭⣿⣾⣷⣿⣾⣷⣿⣿⣾⣯⣽⠀\n"
  .ascii "⠀⠀⠀⣿⣿⣿⡟⠛⣿⣿⣿⣿⡇⠀⠀\n"
  .string "⠀⠀⠀⠉⣭⣿⣏⠀⣿⣿⣿⣭⠁⠀⠀\n\n"

ascii_defensivo:
  .ascii "⢰⠑⠉⠉⠊⢆⠀⠀⠀⠀\n"
  .ascii "⡇⡈⡤⢁⠀⠈⠑⠢⠴⢱\n"
  .ascii "⡇⠈⠉⠁⠀⠀⠀⠀⠀⢸\n"
  .ascii "⢇⠀⠀⠀⠀⠀⠀⠀⠀⡜\n"
  .string "⠘⠔⠹⡠⠋⠹⡠⠛⠔⠁\n\n"

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
box_top:        .string " +---------------------------------------+ \n"
box_mid:        .string " |                                       | \n"
box_bot:        .string " +---------------------------------------+ \n"

# --- PONTEIROS E ESPACAMENTO ---
ui_arrow:       .string " > "
ui_dot:         .string " * "
pad_nl:         .string "\n"
pad_dnl:        .string "\n\n"
pad_tab:        .string " "


turn_message: .string ""
clear_screen: .byte 27, 91, 50, 74, 27, 91, 72, 0

player_turn:    .word   0
estrategias:    .word   0, 0
players_health: .word   100, 100
players_mp:     .word   100, 100
seed:           .word   5

# MACROS 

.macro     startF
    addi       sp, sp, -16
    sw         ra, 12(sp)
    sw         s0, 8(sp)
    sw         s1, 4(sp)
    sw         s2, 0(sp)
    .end_macro

    .macro     endF
    lw         ra, 12(sp)
    lw         s0, 8(sp)
    lw         s1, 4(sp)
    lw         s2, 0(sp)
    addi       sp, sp, 16
    .end_macro

  .text
  .globl  _start
_start:

  # imprime: " === SELECAO DE ESTRATEGIA === "
  la      a0, msg_titulo_estrategia
  li      a7, 4
  ecall

# --- Estrategia do Jogador 1 ---
  la      a0, msg_j1_estrategia
  li      a7, 4
  ecall

  la      a0, msg_op_aleatoria
  li      a7, 4
  ecall

  la      a0, msg_op_agressiva
  li      a7, 4
  ecall

  la      a0, msg_op_defensiva
  li      a7, 4
  ecall

  call    randomizer

  la      t0, estrategias
  sw      a1, 0(t0)

  # Salva o valor em s1 antes de imprimir o texto e o numero
  mv      s1, a1
  
  # Imprime: " O jogador 1 escolheu: "
  la      a0, msg_j1_escolha
  li      a7, 4
  ecall
  
  # Imprime o numero da estrategia
  mv      a1, s1
  call    print_int

  # Imprime a ASCII art baseada na escolha
  mv      a1, s1
  call    print_ascii

# --- Estrategia do Jogador 2 ---
  la      a0, msg_j2_estrategia
  li      a7, 4
  ecall

  call    randomizer
  la      t0, estrategias 
  sw      a1, 4(t0)

  # Imprime: " O jogador 2 escolheu: "
  la      a0, msg_j2_escolha
  li      a7, 4
  ecall
  
  # Preserva retorno em s1 para nao perder durante print_int
  mv      s1, a1
  
  call    print_int

  # Imprime a ASCII art baseada na escolha
  mv      a1, s1
  call    print_ascii

# imprime: " !!! PREPARE PARA O COMBATE !!! "
  la      a0, event_alert
  li      a7, 4
  ecall

  call game_loop

  li      a7, 10
  ecall


randomizer:
  # recebe o range maximo em a0
  startF

  mv a0, t3

  la      t3, seed
  li      a7, 30
  ecall
  
  sw      a0, 0(t3)
  lw      t0, 0(t3)

  slli    t1, t0, 13
  xor     t0, t0, t1
  srli    t1, t0, 17
  xor     t0, t0, t1
  slli    t1, t0, 5
  xor     t0, t0, t1

  remu    t0, t0, t3 
  addi    t0, t0, 1
    
  mv      a1, t0
  endF
  ret

print_int:
  startF
  mv      a0, a1            
  li      a7, 1
  ecall
  
  # Nova linha para organizar o console
  la      a0, pad_nl
  li      a7, 4
  ecall
  endF
  ret

print_ascii:
  startF

  la      a0, clear_screen
  li      a7, 4
  ecall

  # Supoe que a1 contém o numero da estrategia escolhida (1, 2 ou 3)
  li      t1, 1
  beq     a1, t1, draw_aleatorio
  
  li      t1, 2
  beq     a1, t1, draw_agressivo
  
  # Se nao for 1 nem 2, é o 3 (Defensivo)
  la      a0, ascii_defensivo
  j       draw_finish

draw_aleatorio:
  la      a0, ascii_aleatorio
  j       draw_finish

draw_agressivo:
  la      a0, ascii_agressivo

draw_finish:
  li      a7, 4
  ecall

  la      a0, bar_hp_full
  li      a7, 4
  ecall

  call draw_ui_box

  endF
  ret

draw_ui_box:
  startF
  la a0, box_top
  li a7, 4 
  ecall 

  la a0, box_mid
  li a7, 4 
  ecall 

  # receberia um texto aqui 
  
  la a0, box_mid
  li a7, 4
  ecall 

  la a0, box_bot
  li a7, 4
  ecall 

  la a0, action_interface
  li a7, 4
  ecall 

  endF
  ret




# game loop 

game_loop:
  startF 

  
  la      t0, player_turn
  lw      a0, 0(t0)

  li t1, 1
  addi a0, a0, 2
  rem a0, t1, a0
  sw a0, 0(t0)

  call do_player_turn

  la t0, players_health
  lw t1, 0(t0)
  lw t2, 4(t0)
  
  beq t1, x0, game_loop_end
  beq t2, x0, game_loop_end
  j game_loop

game_loop_end: 
  endF 
  ret

print_player_ascii:
  startF
  li      t1, 1
  beq     a0, t1, print_p1_strat
  
  la      t0, estrategias
  lw      a1, 4(t0)
  j       p_ascii_branch
  
print_p1_strat:
  la      t0, estrategias
  lw      a1, 0(t0)
  
p_ascii_branch:
  call    print_ascii
  endF
  ret

detect_strategy: 
  startF
  # detects player strategy and returns on a0 
  # receives player on a0 
  li      t1, 1 
  
  beq     a0, t1, detect_player_one_st
  j       detect_player_two_st

detect_player_one_st:
  la      t0, estrategias
  lw      a0, 0(t0)
  j       detect_end
  
detect_player_two_st:
  la      t0, estrategias
  lw      a0, 4(t0)
  
detect_end: 
  endF 
  ret 
  
do_player_turn:
  # recebe estrategia em a0 
  startF 
  li      t1, 1
  

  beq     a0, t1, do_player_1_turn 
  j       do_player_2_turn

do_player_1_turn:
  li      a0, 0
  call    print_player_ascii
  j do_turn_action

do_player_2_turn:
  li      a0, 1 
  call    print_player_ascii
  j do_turn_action

do_turn_action: 
  call calculate_success


do_end_turn: 
  endF 
  ret

calculate_success:
  startF
  # 1d20, ação crítica se 20  
  li a0, 20
  call randomizer
  # se falha ou não a a ação feita
  endF 
  ret 
