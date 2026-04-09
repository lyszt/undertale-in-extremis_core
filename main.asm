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
box_top:        .string " +---------------------------------------+ \n | "
box_mid:        .string " | \n | "
box_bot:        .string " | \n +---------------------------------------+ \n"

# --- PONTEIROS E ESPACAMENTO ---
ui_arrow:       .string " > "
ui_dot:         .string " * "
pad_nl:         .string "\n"
pad_dnl:        .string "\n\n"
pad_tab:        .string " "

player_turn:    .word   0
estrategias:    .word   0, 0
players_health: .word   100, 100
players_mp:     .word   100, 100
seed:           .word   5

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

  la      t0, estrategias
  sw      s1, 0(t0)        # salva estrategia do jogador 1 (usando s1 para garantir o valor correto)

# --- Estrategia do Jogador 2 ---
  la      a0, msg_j2_estrategia
  li      a7, 4
  ecall

  call    randomizer
  mv      s1, a1           # Salva novo valor

  # Imprime: " O jogador 2 escolheu: "
  la      a0, msg_j2_escolha
  li      a7, 4
  ecall
  
  mv      a1, s1
  call    print_int

  # Imprime a ASCII art baseada na escolha
  mv      a1, s1
  call    print_ascii

  la      t0, estrategias
  sw      s1, 4(t0)        # salva estrategia do jogador 2

# imprime: " !!! PREPARE PARA O COMBATE !!! "
  la      a0, event_alert
  li      a7, 4
  ecall

  li      a7, 10
  ecall

randomizer:
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

  li      t1, 3            
  remu    t0, t0, t1 
  addi    t0, t0, 1
    
  mv      a1, t0
  ret

print_int:
  mv      a0, a1           
  li      a7, 1
  ecall
  
  # Nova linha para organizar o console
  la      a0, pad_nl
  li      a7, 4
  ecall
  ret

print_ascii:
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
  ret
