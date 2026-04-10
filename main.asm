# ORG 2026.1
# Sistema de combate de RPG simulado em RISCV

  .data

# DIVISORES
deco_vine:      .string " ~<>-~<>-~<>-~<>-~<>-~<>-~<>-~<>-~<>-~<>-~ \n"
deco_banana:    .string " \_/> \_/> \_/> \_/> \_/> \_/> \_/> \n"
deco_leaves:    .string " \|/ \|/ \|/ \|/ \|/ \|/ \|/ \n"
deco_monkey:    .string " @(o.o)@ @(o.o)@ @(o.o)@ @(o.o)@ \n"

# SEPARADORES
line_thin:      .string " ----------------------------------------- \n"
line_thick:     .string " ========================================= \n"
line_double:    .string " ========================================= \n"
line_dot:       .string " ......................................... \n"

# MENUS DE ACAO
menu_yn:        .string " [ S ] SIM [ N ] NAO \n"
menu_continue:  .string " [ PRESSIONE QUALQUER TECLA ] \n"
menu_combat:    .string " [1] ATACAR [2] DEFENDER [3] ITEM \n"
menu_magic:     .string " [1] MAGIA [2] FUGIR \n"
menu_nav:       .string " [N] NORTE [S] SUL [L] LESTE [O] OESTE\n"

# BARRAS DE STATUS
bar_hp_full:    .string " HP: [##########] "
bar_hp_half:    .string " HP: [##### ] "
bar_hp_crit:    .string " HP: [# ] "

bar_mp_full:    .string " MP: [**********] "
bar_mp_half:    .string " MP: [***** ] "
bar_mp_crit:    .string " MP: [* ] "

action_interface: .string "[ ATTACK ]  [  SKILL  ]  [  DEFEND  ]\n"


# Mensagens de Escolha de Estrategia
msg_titulo_estrategia:  .string " === SELECAO DE ESTRATEGIA === \n"
msg_j1_estrategia:      .string "\n Escolhendo aleatoriamente a estrategia do Jogador 1...\n"
msg_j2_estrategia:      .string "\n Escolhendo aleatoriamente a estrategia do Jogador 2...\n"
msg_op_aleatoria:       .string " [1] Aleatorio (IA decide na hora)\n"
msg_op_agressiva:       .string " [2] Agressivo (sempre ataca)\n"
msg_op_defensiva:       .string " [3] Defensivo (prioriza defesa)\n"
msg_estrategia_ok:      .string " Estrategia registrada!\n"

# NOVAS MENSAGENS DE PREFIXO
msg_j1_escolha:         .string " O jogador 1 escolheu: "
msg_j2_escolha:         .string " O jogador 2 escolheu: "

ascii_aleatorio_idle_1:
  .ascii "⠀⠀⠀⠀⠀⢀⣀⣠⡤⠤⠤⣤⣄⣀⣀⣤⠤⠤⠤⣤⣀⣀⠀⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⢠⠿⠋⠙⣛⡧⣤⣬⣭⣽⣿⣽⡦⠤⢼⠛⠉⠳⢦⠀⠀⠀⠀\n"
  .ascii "⠁⣠⡤⠤⠼⣶⡤⣶⡿⠓⠛⠉⠉⠉⠉⠉⠛⠒⠻⣶⣦⣴⡿⠤⢤⣤⣀\n"
  .ascii "⣿⠟⢅⣁⣀⣹⣿⠋⠀⠀⠀⢸⡆⠀⠀⠀⠀⠀⠀⠙⢻⣏⣁⣀⣠⠛⣿\n"
  .ascii "⣟⣀⠈⠉⠉⢿⣽⠀⠀⢀⠀⠸⠧⠀⠒⠒⠂⣀⠀⠀⢸⡟⠋⠉⠉⢀⣸\n"
  .ascii "⠉⠻⣦⣄⣀⣐⣿⣆⡀⠈⠛⡟⡿⣿⠒⠒⠒⠋⠀⣰⣞⡧⠤⠤⠴⡟⠛\n"
  .ascii "⠀⠀⠈⣩⡽⠛⠻⣟⣻⣄⣀⠑⠛⠋⠀⠀⢀⣀⣼⣻⡏⠛⠿⣆⡀⠀⠀\n"
  .ascii "⠀⠀⠀⣿⠁⠠⡜⠉⠙⠛⡿⠶⣶⣶⢶⠿⠿⠛⠛⠉⠑⡄⠀⢹⠀⠀⠀\n"
  .ascii "⠀⠀⠀⣿⣤⡈⠁⠀⠀⡤⣤⣽⣻⣟⠛⣿⢤⣤⡄⠀⠀⠁⣤⡼⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠈⠉⠉⠉⠉⠁⠀⡞⠉⠙⡆⠀⠀⠀⠉⠉⠉⠉⠉⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣇⠀⠐⢧⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣶⡄⠘⢷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠀⠀⠀⠀⠀⡖⣶⡶⠛⠁⠀⠉⣷⠒⡆⠀⠀⠀⠀⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⣯⠳⣤⣤⣤⣶⣫⣷⠃⠀⠀⠀⠀⠀⠀⠀⠀\n"
  .string "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠓⠒⠒⠒⠒⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n\n"

ascii_aleatorio_idle_2:
  .ascii "\n"
  .ascii "⠀⠀⠀⠀⠀⢀⣀⣠⡤⠤⠤⣤⣄⣀⣀⣤⠤⠤⠤⣤⣀⣀⠀⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⢠⠿⠋⠙⣛⡧⣤⣬⣭⣽⣿⣽⡦⠤⢼⠛⠉⠳⢦⠀⠀⠀⠀\n"
  .ascii "⠁⣠⡤⠤⠼⣶⡤⣶⡿⠓⠛⠉⠉⠉⠉⠉⠛⠒⠻⣶⣦⣴⡿⠤⢤⣤⣀\n"
  .ascii "⣿⠟⢅⣁⣀⣹⣿⠋⠀⠀⠀⢸⡆⠀⠀⠀⠀⠀⠀⠙⢻⣏⣁⣀⣠⠛⣿\n"
  .ascii "⣟⣀⠈⠉⠉⢿⣽⠀⠀⢀⠀⠸⠧⠀⠒⠒⠂⣀⠀⠀⢸⡟⠋⠉⠉⢀⣸\n"
  .ascii "⠉⠻⣦⣄⣀⣐⣿⣆⡀⠈⠛⡟⡿⣿⠒⠒⠒⠋⠀⣰⣞⡧⠤⠤⠴⡟⠛\n"
  .ascii "⠀⠀⠈⣩⡽⠛⠻⣟⣻⣄⣀⠑⠛⠋⠀⠀⢀⣀⣼⣻⡏⠛⠿⣆⡀⠀⠀\n"
  .ascii "⠀⠀⠀⣿⠁⠠⡜⠉⠙⠛⡿⠶⣶⣶⢶⠿⠿⠛⠛⠉⠑⡄⠀⢹⠀⠀⠀\n"
  .ascii "⠀⠀⠀⣿⣤⡈⠁⠀⠀⡤⣤⣽⣻⣟⠛⣿⢤⣤⡄⠀⠀⠁⣤⡼⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠈⠉⠉⠉⠉⠁⠀⡞⠉⠙⡆⠀⠀⠀⠉⠉⠉⠉⠉⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣶⡄⠘⢷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠀⠀⠀⠀⠀⡖⣶⡶⠛⠁⠀⠉⣷⠒⡆⠀⠀⠀⠀⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⣯⠳⣤⣤⣤⣶⣫⣷⠃⠀⠀⠀⠀⠀⠀⠀⠀\n"
  .string "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠓⠒⠒⠒⠒⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n\n"

ascii_aleatorio_idle_3:
  .ascii "\n"
  .ascii "⠀⠀⠀⠀⠀⢀⣀⣠⡤⠤⠤⣤⣄⣀⣀⣤⠤⠤⠤⣤⣀⣀⠀⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⢠⠿⠋⠙⣛⡧⣤⣬⣭⣽⣿⣽⡦⠤⢼⠛⠉⠳⢦⠀⠀⠀⠀\n"
  .ascii "⠁⣠⡤⠤⠼⣶⡤⣶⡿⠓⠛⠉⠉⠉⠉⠉⠛⠒⠻⣶⣦⣴⡿⠤⢤⣤⣀\n"
  .ascii "⣿⠟⢅⣁⣀⣹⣿⠋⠀⠀⠀⠒⠒⠀⠀⠀⠀⠀⠀⠙⢻⣏⣁⣀⣠⠛⣿\n"
  .ascii "⣟⣀⠈⠉⠉⢿⣽⠀⠀⢀⠀⠒⠒⠀⠒⠒⠂⣀⠀⠀⢸⡟⠋⠉⠉⢀⣸\n"
  .ascii "⠉⠻⣦⣄⣀⣐⣿⣆⡀⠈⠛⡟⡿⣿⠒⠒⠒⠋⠀⣰⣞⡧⠤⠤⠴⡟⠛\n"
  .ascii "⠀⠀⠈⣩⡽⠛⠻⣟⣻⣄⣀⠑⠛⠋⠀⠀⢀⣀⣼⣻⡏⠛⠿⣆⡀⠀⠀\n"
  .ascii "⠀⠀⠀⣿⠁⠠⡜⠉⠙⠛⡿⠶⣶⣶⢶⠿⠿⠛⠛⠉⠑⡄⠀⢹⠀⠀⠀\n"
  .ascii "⠀⠀⠀⣿⣤⡈⠁⠀⠀⡤⣤⣽⣻⣟⠛⣿⢤⣤⡄⠀⠀⠁⣤⡼⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠈⠉⠉⠉⠉⠁⠀⡞⠉⠙⡆⠀⠀⠀⠉⠉⠉⠉⠉⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣶⡄⠘⢷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠀⠀⠀⠀⠀⡖⣶⡶⠛⠁⠀⠉⣷⠒⡆⠀⠀⠀⠀⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⣯⠳⣤⣤⣤⣶⣫⣷⠃⠀⠀⠀⠀⠀⠀⠀⠀\n"
  .string "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠓⠒⠒⠒⠒⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n\n"

ascii_aleatorio_idle_4:
  .ascii "\n"
  .ascii "⠀⠀⠀⠀⠀⢀⣀⣠⡤⠤⠤⣤⣄⣀⣀⣤⠤⠤⠤⣤⣀⣀⠀⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⢠⠿⠋⠙⣛⡧⣤⣬⣭⣽⣿⣽⡦⠤⢼⠛⠉⠳⢦⠀⠀⠀⠀\n"
  .ascii "⠁⣠⡤⠤⠼⣶⡤⣶⡿⠓⠛⠉⠉⠉⠉⠉⠛⠒⠻⣶⣦⣴⡿⠤⢤⣤⣀\n"
  .ascii "⣿⠟⢅⣁⣀⣹⣿⠋⠀⠀⠀⢸⡆⠀⠀⠀⠀⠀⠀⠙⢻⣏⣁⣀⣠⠛⣿\n"
  .ascii "⣟⣀⠈⠉⠉⢿⣽⠀⠀⢀⠀⠸⠧⠀⠒⠒⠂⣀⠀⠀⢸⡟⠋⠉⠉⢀⣸\n"
  .ascii "⠉⠻⣦⣄⣀⣐⣿⣆⡀⠈⠛⡟⡿⣿⠒⠒⠒⠋⠀⣰⣞⡧⠤⠤⠴⡟⠛\n"
  .ascii "⠀⠀⠈⣩⡽⠛⠻⣟⣻⣄⣀⠑⠛⠋⠀⠀⢀⣀⣼⣻⡏⠛⠿⣆⡀⠀⠀\n"
  .ascii "⠀⠀⠀⣿⠁⠠⡜⠉⠙⠛⡿⠶⣶⣶⢶⠿⠿⠛⠛⠉⠑⡄⠀⢹⠀⠀⠀\n"
  .ascii "⠀⠀⠀⣿⣤⡈⠁⠀⠀⡤⣤⣽⣻⣟⠛⣿⢤⣤⡄⠀⠀⠁⣤⡼⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠈⠉⠉⠉⠉⠁⠀⡞⠉⠙⡆⠀⠀⠀⠉⠉⠉⠉⠉⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣶⡄⠘⢷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠀⠀⠀⠀⠀⡖⣶⡶⠛⠁⠀⠉⣷⠒⡆⠀⠀⠀⠀⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⣯⠳⣤⣤⣤⣶⣫⣷⠃⠀⠀⠀⠀⠀⠀⠀⠀\n"
  .string "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠓⠒⠒⠒⠒⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n\n"

ascii_aleatorio_idle_5:
  .ascii "⠀⠀⠀⠀⠀⢀⣀⣠⡤⠤⠤⣤⣄⣀⣀⣤⠤⠤⠤⣤⣀⣀⠀⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⢠⠿⠋⠙⣛⡧⣤⣬⣭⣽⣿⣽⡦⠤⢼⠛⠉⠳⢦⠀⠀⠀⠀\n"
  .ascii "⠁⣠⡤⠤⠼⣶⡤⣶⡿⠓⠛⠉⠉⠉⠉⠉⠛⠒⠻⣶⣦⣴⡿⠤⢤⣤⣀\n"
  .ascii "⣿⠟⢅⣁⣀⣹⣿⠋⠀⠀⠀⢸⡆⠀⠀⠀⠀⠀⠀⠙⢻⣏⣁⣀⣠⠛⣿\n"
  .ascii "⣟⣀⠈⠉⠉⢿⣽⠀⠀⢀⠀⠸⠧⠀⠒⠒⠂⣀⠀⠀⢸⡟⠋⠉⠉⢀⣸\n"
  .ascii "⠉⠻⣦⣄⣀⣐⣿⣆⡀⠈⠛⡟⡿⣿⠒⠒⠒⠋⠀⣰⣞⡧⠤⠤⠴⡟⠛\n"
  .ascii "⠀⠀⠈⣩⡽⠛⠻⣟⣻⣄⣀⠑⠛⠋⠀⠀⢀⣀⣼⣻⡏⠛⠿⣆⡀⠀⠀\n"
  .ascii "⠀⠀⠀⣿⠁⠠⡜⠉⠙⠛⡿⠶⣶⣶⢶⠿⠿⠛⠛⠉⠑⡄⠀⢹⠀⠀⠀\n"
  .ascii "⠀⠀⠀⣿⣤⡈⠁⠀⠀⡤⣤⣽⣻⣟⠛⣿⢤⣤⡄⠀⠀⠁⣤⡼⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠈⠉⠉⠉⠉⠁⠀⡞⠉⠙⡆⠀⠀⠀⠉⠉⠉⠉⠉⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣇⠀⠐⢧⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣶⡄⠘⢷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠀⠀⠀⠀⠀⡖⣶⡶⠛⠁⠀⠉⣷⠒⡆⠀⠀⠀⠀⠀⠀⠀⠀\n"
  .ascii "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⣯⠳⣤⣤⣤⣶⣫⣷⠃⠀⠀⠀⠀⠀⠀⠀⠀\n"
  .string "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠓⠒⠒⠒⠒⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n\n"

ascii_agressivo_idle_1:
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

ascii_agressivo_idle_2:
  .ascii "\n"
  .ascii "⠀⠀⢀⣤⣶⣶⣶⣶⣶⣶⣶⣤⠀⠀⠀\n"
  .ascii "⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣆⠀\n"
  .ascii "⢰⣾⣿⠛⠉⠙⣿⠛⠛⠛⢿⣿⣿⣿⡀\n"
  .ascii "⣾⣿⠉⠀⢸⡇⠀⠀⢸⡇⠀⣿⠿⢹⣿\n"
  .ascii "⣿⣿⠀⠀⠈⢡⡀⣀⣬⠁⠀⢉⣴⣾⣿\n"
  .ascii "⢿⡿⣿⣶⣖⣀⣉⠉⠀⣰⣶⣿⡿⢿⠿\n"
  .ascii "⠘⠃⠙⠛⠛⢛⣯⣀⣀⣟⡛⠛⠇⠘⠀\n"
  .ascii "⠀⢸⣸⣿⠀⠀⠀⠀⠀⠀⠀⢻⣇⣸⠀\n"
  .ascii "⠀⢸⣭⣿⣾⣷⣿⣾⣷⣿⣿⣾⣯⣽⠀\n"
  .ascii "⠀⠀⠀⣿⣿⣿⡟⠛⣿⣿⣿⣿⡇⠀⠀\n"
  .string "⠀⠀⠀⠉⣭⣿⣏⠀⣿⣿⣿⣭⠁⠀⠀\n\n"

ascii_agressivo_idle_3:
  .ascii "\n"
  .ascii "⠀⠀⢀⣤⣶⣶⣶⣶⣶⣶⣶⣤⠀⠀⠀\n"
  .ascii "⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣆⠀\n"
  .ascii "⢰⣾⣿⠛⠉⠙⣿⠛⠛⠛⢿⣿⣿⣿⡀\n"
  .ascii "⣾⣿⠉⠀⠤⠤⠀⠀⠤⠤⠀⣿⠿⢹⣿\n"
  .ascii "⣿⣿⠀⠀⠈⢡⡀⣀⣬⠁⠀⢉⣴⣾⣿\n"
  .ascii "⢿⡿⣿⣶⣖⣀⣉⠉⠀⣰⣶⣿⡿⢿⠿\n"
  .ascii "⠘⠃⠙⠛⠛⢛⣯⣀⣀⣟⡛⠛⠇⠘⠀\n"
  .ascii "⠀⢸⣸⣿⠀⠀⠀⠀⠀⠀⠀⢻⣇⣸⠀\n"
  .ascii "⠀⢸⣭⣿⣾⣷⣿⣾⣷⣿⣿⣾⣯⣽⠀\n"
  .ascii "⠀⠀⠀⣿⣿⣿⡟⠛⣿⣿⣿⣿⡇⠀⠀\n"
  .string "⠀⠀⠀⠉⣭⣿⣏⠀⣿⣿⣿⣭⠁⠀⠀\n\n"

ascii_agressivo_idle_4:
  .ascii "\n"
  .ascii "⠀⠀⢀⣤⣶⣶⣶⣶⣶⣶⣶⣤⠀⠀⠀\n"
  .ascii "⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣆⠀\n"
  .ascii "⢰⣾⣿⠛⠉⠙⣿⠛⠛⠛⢿⣿⣿⣿⡀\n"
  .ascii "⣾⣿⠉⠀⢸⡇⠀⠀⢸⡇⠀⣿⠿⢹⣿\n"
  .ascii "⣿⣿⠀⠀⠈⢡⡀⣀⣬⠁⠀⢉⣴⣾⣿\n"
  .ascii "⢿⡿⣿⣶⣖⣀⣉⠉⠀⣰⣶⣿⡿⢿⠿\n"
  .ascii "⠘⠃⠙⠛⠛⢛⣯⣀⣀⣟⡛⠛⠇⠘⠀\n"
  .ascii "⠀⢸⣸⣿⠀⠀⠀⠀⠀⠀⠀⢻⣇⣸⠀\n"
  .ascii "⠀⢸⣭⣿⣾⣷⣿⣾⣷⣿⣿⣾⣯⣽⠀\n"
  .ascii "⠀⠀⠀⣿⣿⣿⡟⠛⣿⣿⣿⣿⡇⠀⠀\n"
  .string "⠀⠀⠀⠉⣭⣿⣏⠀⣿⣿⣿⣭⠁⠀⠀\n\n"

ascii_agressivo_idle_5:
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

ascii_defensivo_idle_1:
  .ascii "⢰⠑⠉⠉⠊⢆⠀⠀⠀⠀\n"
  .ascii "⡇⡈⡤⢁⠀⠈⠑⠢⠴⢱\n"
  .ascii "⡇⠈⠉⠁⠀⠀⠀⠀⠀⢸\n"
  .ascii "⢇⠀⠀⠀⠀⠀⠀⠀⠀⡜\n"
  .string "⠘⠔⠹⡠⠋⠹⡠⠛⠔⠁\n\n"

ascii_defensivo_idle_2:
  .ascii "\n"
  .ascii "⢰⠑⠉⠉⠊⢆⠀⠀⠀⠀\n"
  .ascii "⡇⡈⡤⢁⠀⠈⠑⠢⠴⢱\n"
  .ascii "⡇⠈⠉⠁⠀⠀⠀⠀⠀⢸\n"
  .string "⠘⠔⠹⡠⠋⠹⡠⠛⠔⠁\n\n"

ascii_defensivo_idle_3:
  .ascii "\n\n"
  .ascii "⢰⠑⠉⠉⠊⢆⠀⠀⠀⠀\n"
  .ascii "⡇⡈⡤⢁⠀⠈⠑⠢⠴⢱\n"
  .string "⠘⠔⠹⡠⠋⠹⡠⠛⠔⠁\n\n"

ascii_defensivo_idle_4:
  .ascii "\n"
  .ascii "⢰⠑⠉⠉⠊⢆⠀⠀⠀⠀\n"
  .ascii "⡇⡈⡤⢁⠀⠈⠑⠢⠴⢱\n"
  .ascii "⡇⠈⠉⠁⠀⠀⠀⠀⠀⢸\n"
  .string "⠘⠔⠹⡠⠋⠹⡠⠛⠔⠁\n\n"

ascii_defensivo_idle_5:
  .ascii "⢰⠑⠉⠉⠊⢆⠀⠀⠀⠀\n"
  .ascii "⡇⡈⡤⢁⠀⠈⠑⠢⠴⢱\n"
  .ascii "⡇⠈⠉⠁⠀⠀⠀⠀⠀⢸\n"
  .ascii "⢇⠀⠀⠀⠀⠀⠀⠀⠀⡜\n"
  .string "⠘⠔⠹⡠⠋⠹⡠⠛⠔⠁\n\n"


 # ALERTAS DE COMBATE E EVENTOS
event_alert:    .string " !!! PREPARE PARA O COMBATE !!! \n"
event_crit:     .string " >>> ACERTO CRITICO <<< \n"
event_miss:     .string " ... o ataque errou ... \n"
event_dead:     .string " VOCE MORREU.\n"
event_hit:      .string " Voce ataca "
event_exclamation: .string "!!!"
event_interrogation: .string "?"
event_surprise: .string "?!!"

# CAIXAS DE TEXTO E DIALOGO
box_top:        .string " +---------------------------------------+ \n"
box_mid:        .string " |                                       | \n"
box_bot:        .string " +---------------------------------------+ \n"

# PONTEIROS E ESPACAMENTO
ui_arrow:       .string " > "
ui_dot:         .string " * "
pad_nl:         .string "\n"
pad_dnl:        .string "\n\n"
pad_tab:        .string " "


line_break: .string "\n"
health_max: .string "  / 100 \n"
turn_message: .string ""

clear_screen: .byte 27, 91, 50, 74, 27, 91, 72, 0

player_turn:    .word   0
estrategias:    .word   0, 0
players_health: .word   100, 100
players_mp:     .word   100, 100
seed:           .word   5
current_time:   .word   0
current_frame:  .word   0

idle_aleatorio_frames:
  .word ascii_aleatorio_idle_1
  .word ascii_aleatorio_idle_2
  .word ascii_aleatorio_idle_3
  .word ascii_aleatorio_idle_4
  .word ascii_aleatorio_idle_5

idle_agressivo_frames:
  .word ascii_agressivo_idle_1
  .word ascii_agressivo_idle_2
  .word ascii_agressivo_idle_3
  .word ascii_agressivo_idle_4
  .word ascii_agressivo_idle_5

idle_defensivo_frames:
  .word ascii_defensivo_idle_1
  .word ascii_defensivo_idle_2
  .word ascii_defensivo_idle_3
  .word ascii_defensivo_idle_4
  .word ascii_defensivo_idle_5

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
  # pega o tempo atual pra usar no gerador de numero aleatorio
  la      t3, seed
  la t4, current_time
  li      a7, 30
  ecall

  sw      a0, 0(t3)
  sw a0, 0(t4)

  # imprime: " === SELECAO DE ESTRATEGIA === "
  la      a0, msg_titulo_estrategia
  li      a7, 4
  ecall

# Estrategia do Jogador 1
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

  li a0, 3
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

# Estrategia do Jogador 2
  la      a0, msg_j2_estrategia
  li      a7, 4
  ecall

  li a0, 3
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

  mv      s0, a0
  la t3, seed
  lw      t0, 0(t3)

  slli    t1, t0, 13
  xor     t0, t0, t1
  srli    t1, t0, 17
  xor     t0, t0, t1
  slli    t1, t0, 5
  xor     t0, t0, t1

  remu    t0, t0, s0
  addi    t0, t0, 1
  
  la t4, current_time
  lw      t5, 0(t4)

  mul t5, t5, t0 
  sw t5, 0(t3)
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
  mv      s1, a0

  # a instrução 32 recebe um tempo em ms em a0 e espera o tempo
  li a0, 100
  li a7, 32 
  ecall 

  la      a0, clear_screen
  li      a7, 4
  ecall

  # Supoe que a1 contém o numero da estrategia escolhida (1, 2 ou 3)
  la      t2, current_frame
  lw      s2, 0(t2)
  slli    t3, s2, 2

  li      t1, 1
  beq     a1, t1, draw_aleatorio

  li      t1, 2
  beq     a1, t1, draw_agressivo

  # Se nao for 1 nem 2, é o 3 (Defensivo)
  la      t0, idle_defensivo_frames
  j       draw_idle_frame

draw_aleatorio:
  la      t0, idle_aleatorio_frames
  j       draw_idle_frame

draw_agressivo:
  la      t0, idle_agressivo_frames

draw_idle_frame:
  add     t0, t0, t3
  lw      a0, 0(t0)

  addi    s2, s2, 1
  li      t1, 5
  rem     s2, s2, t1
  sw      s2, 0(t2)

  j       draw_finish

draw_finish:
  li      a7, 4
  ecall

  mv      a0, s1
  call    draw_health

  call    draw_ui_box

  endF
  ret

draw_health:
  # recebe o jogador em a0 (0 = jogador 1, 1 = jogador 2)
  startF
  mv      s0, a0

  la      t0, players_health
  beq     s0, x0, draw_health_player_1
  lw      s1, 4(t0)
  j       draw_health_bar

draw_health_player_1:
  lw      s1, 0(t0)

draw_health_bar:
  li      t1, 50
  blt     s1, t1, draw_health_half
  la      a0, bar_hp_full
  j       draw_health_end

draw_health_half:
  li      t1, 10
  blt     s1, t1, draw_health_crit
  la      a0, bar_hp_half
  j       draw_health_end

draw_health_crit:
  la      a0, bar_hp_crit

draw_health_end:
  li      a7, 4
  ecall

  mv      a0, s1
  li      a7, 1
  ecall

  la      a0, health_max
  li      a7, 4
  ecall

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
