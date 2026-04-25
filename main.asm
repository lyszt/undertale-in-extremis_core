# ORG 2026.1
# Sistema de combate de RPG simulado em RISCV
# Era pra parecer World of Warcraft mas na verdade parece pokemon
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


 # TEXTOS 
event_alert:    .string " !!! PREPARE PARA O COMBATE !!! \n"
event_dead:     .string " VOCE MORREU.\n"
event_exclamation: .string "!!!"
event_interrogation: .string "?"
event_surprise: .string "?!!"

suffix_j1: .string " (Jogador 1) "
suffix_j2: .string " (Jogador 2) "

name_aleatorio: .string " Flowey"
name_smart: .string "Chara"
name_troll: .string "Toby"


# TEXTOS PARA ESTADOS DE BATALHA 

current_state: .word 0

msg_jogador_1: .string " O jogador 1 "
msg_jogador_2: .string " O jogador 2 "

attack: .string "tentou fazer um ataque básico!\n"
attack_crit: .string "o ataque foi crítico!\n"
attack_success: .string "acertou!\n"
attack_fail: .string "errou!\n"

skill_usage: .string "Usa a habilidade "
skill_absolute_grit: .string "usou Força de Vontade Absoluta!"
skill_soul_suck: .string "sugou a alma do outro jogador!"
skill_final_execution: .string "realizou a execução final!"
skill_final_execution_fail: .string "tentou realizar a execução final, mas falhou!"
skill_mirror_shield_ready:  .string "ergue o Escudo Espelho e aguarda o impacto!"
skill_mirror_shield:        .string "reflete o dano recebido!"
skill_mirror_shield_fail:   .string "tentou erguer o Escudo Espelho, mas não estava preparado!"

defense: .string "tentou defender!\n"
defense_crit: .string "defendeu e realizou um contra ataque!\n"
defense_fail: .string "tentou defender mas falhou! o inimigo recebe um bonus!\n"
defense_success: .string "defendeu!\n"


damage_log: .string  "       Dano causado (hp): "
newline:    .string  "\n"

died_text: .string "morreu! "
died_p1: .string "O jogador 1 morreu!\n"
died_p2: .string "O jogador 2 morreu!\n"

# CAIXAS DE TEXTO E DIALOGO
box_top:        .string " +---------------------------------------+ \n"
box_mid:        .string "                                           \n"
box_bot:        .string " +---------------------------------------+ \n"

# PONTEIROS E ESPACAMENTO
ui_arrow:       .string " > "
ui_dot:         .string " * "
pad_nl:         .string "\n"
pad_dnl:        .string "\n\n"
pad_tab:        .string " "


line_break: .string "\n"
health_max: .string "  / 100  | "
mana_max:   .string "  / 100 \n"
turn_message: .string ""

clear_screen: .byte 27, 91, 50, 74, 27, 91, 72, 0

player_turn:    .word   0
player_strategy:    .word   1, 2
players_health: .word   100, 100
players_mp:     .word   100, 100
seed:           .word   5
current_time:   .word   0
current_frame:  .word   0
last_damage:    .word   0
defense_fail_bonus: .word 0 
is_defending: .word 0, 0
mirror_shield_status: .word 0,0


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
    addi       sp, sp, -20
    sw         ra, 16(sp)
    sw         s0, 12(sp)
    sw         s1, 8(sp)
    sw         s2, 4(sp)
    sw         s3, 0(sp)
    .end_macro

    .macro     endF
    lw         ra, 16(sp)
    lw         s0, 12(sp)
    lw         s1, 8(sp)
    lw         s2, 4(sp)
    lw         s3, 0(sp)
    addi       sp, sp, 20
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


  li a0, 3
  call    randomizer

  la      t0, player_strategy
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

  la      t0, player_strategy
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
  # t0 = xorshift bruto

  remu    s1, t0, s0   # s1 preserva o resultado apos o ecall; remu unsigned evita valor negativo
  addi    s1, s1, 1

  # atualiza current_time com o tempo real para aumentar entropia
  la      t4, current_time
  li      a7, 30
  ecall
  sw      a0, 0(t4)

  # nova seed = (current_time * xorshift) XOR xorshift
  # o XOR garante que a seed nunca vira zero mesmo se o mul der overflow
  mul     t5, a0, t0
  xor     t5, t5, t0
  sw      t5, 0(t3)

  mv      a1, s1
  
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
  li a0, 200
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

  li      a0, 0
  call    draw_health
  li      a0, 1
  call    draw_health

  call    draw_ui_box

  endF
  ret

draw_health:
  # recebe o jogador em a0 (0 = jogador 1, 1 = jogador 2)
  startF
  mv      s0, a0

  # imprime o nome do personagem baseado na estrategia do jogador
  la      t0, player_strategy
  beq     s0, x0, draw_health_load_j1_strat
  lw      s2, 4(t0)           # estrategia do jogador 2
  j       draw_health_check_name
draw_health_load_j1_strat:
  lw      s2, 0(t0)           # estrategia do jogador 1
draw_health_check_name:
  li      t1, 2
  beq     s2, t1, draw_health_print_name_smart
  li      t1, 3
  beq     s2, t1, draw_health_print_name_troll
draw_health_print_name_random:
  la      a0, name_aleatorio
  li      a7, 4
  ecall
  j draw_health_print_name
draw_health_print_name_troll:
  la      a0, name_troll
  li      a7, 4
  ecall
  j draw_health_print_name
draw_health_print_name_smart:
  la      a0, name_smart
  li      a7, 4
  ecall
  j draw_health_print_name
draw_health_print_name:
  # imprime o sufixo (Jogador 1) ou (Jogador 2)
  beq     s0, x0, draw_health_suffix_j1
  la      a0, suffix_j2
  j       draw_health_suffix_done
draw_health_suffix_j1:
  la      a0, suffix_j1
draw_health_suffix_done:
  li      a7, 4
  ecall

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

  mv      a0, s0
  call    draw_mana

  endF
  ret

draw_mana:
  # recebe o jogador em a0 (0 = jogador 1, 1 = jogador 2)
  startF
  mv      s0, a0

  la      t0, players_mp
  beq     s0, x0, draw_mana_player_1

  lw      s1, 4(t0)
  j       draw_mana_bar

draw_mana_player_1:
  lw      s1, 0(t0)

draw_mana_bar:
  li      t1, 50
  blt     s1, t1, draw_mana_half
  la      a0, bar_mp_full
  j       draw_mana_end

draw_mana_half:
  li      t1, 10
  blt     s1, t1, draw_mana_crit
  la      a0, bar_mp_half
  j       draw_mana_end

draw_mana_crit:
  la      a0, bar_mp_crit

draw_mana_end:
  li      a7, 4
  ecall

  mv      a0, s1
  li      a7, 1
  ecall

  la      a0, mana_max
  li      a7, 4
  ecall

  endF
  ret

print_newlines:
  startF
  mv s0, a0
print_newlines_loop:
  beqz s0, print_newlines_end
  la a0, newline
  li a7, 4
  ecall
  addi s0, s0, -1
  j print_newlines_loop
print_newlines_end:
  endF
  ret

draw_ui_box:
  startF
  la a0, box_top
  li a7, 4
  ecall

  li a0, 1
  call print_newlines
  # mensagem do turno, ou 3 newlines de padding se vazio
  la t0, current_state
  lw a0, 0(t0)
  beqz a0, state_empty
  # imprime prefixo "O jogador 1/2 " antes do estado
  la t1, player_turn
  lw t2, 0(t1)
  beqz t2, print_prefix_j1
  la a0, msg_jogador_2
  j print_prefix_done
print_prefix_j1:
  la a0, msg_jogador_1
print_prefix_done:
  li a7, 4
  ecall
  # imprime o estado
  la t0, current_state
  lw a0, 0(t0)
  li a7, 4
  ecall
  li a0, 1
  call print_newlines
  j state_done
state_empty:
  li a0, 2
  call print_newlines
state_done:

  # dano causado
  la t0, last_damage
  lw s1, 0(t0)
  beqz s1, skip_damage_print
  la a0, damage_log
  li a7, 4
  ecall
  mv a0, s1
  li a7, 1
  ecall
  la a0, newline
  li a7, 4
  ecall
skip_damage_print:

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

game_loop_start:
  # limpa o estado e o dano antes de cada turno
  la t0, current_state
  sw x0, 0(t0)
  la t0, last_damage
  sw x0, 0(t0)
  call do_player_turn

  la      t0, player_turn
  lw      a0, 0(t0)
  # exclusive OR immediate 
  xori    a0, a0, 1
  sw      a0, 0(t0)
  
  la t0, players_health
  lw t1, 0(t0)
  lw t2, 4(t0)
  
  ble t1, x0, game_loop_p1_died
  ble t2, x0, game_loop_p2_died
  j game_loop_start

game_loop_p1_died:
  la a0, died_p1
  li a7, 4
  ecall
  j game_loop_end

game_loop_p2_died:
  la a0, died_p2
  li a7, 4
  ecall

game_loop_end:
  endF
  ret

do_attack:
    startF

  # current state mostra mensagem do jogador atacar
  la t1, current_state
  la t2, attack 
  sw t2, 0(t1)


    call calculate_success
    # caso d20 > 10, acertamos. se nao, erramos. se 20, critico
  call calculate_damage

    li t1, 20 
    beq a1, t1, do_attack_crit
    li t1, 10 
    bge a1, t1, do_attack_normal
    j do_attack_fail

do_attack_fail: 
  la t5, current_state
  la t4, attack_fail 
  sw t4, 0(t5)

    endF
    ret


do_attack_defended: 
  la t5, current_state
  la t4, defense_success 
  sw t4, 0(t5)

    endF
    ret

do_attack_crit:

  la t5, current_state
  la t4, attack_crit 
  sw t4, 0(t5)

    # dobra o ataque
    li t3, 2
    mul s0, s0, t3
    sub t0, t0, s0

    la t1, last_damage
    sw s0, 0(t1)

    la t1, players_health
    add t2, t1, s3
    sw t0, 0(t2)
    endF
    ret

do_attack_crit_no_message:

    # dobra o ataque
    li t3, 2
    mul s0, s0, t3
    sub t0, t0, s0

    la t1, last_damage
    sw s0, 0(t1)

    la t1, players_health
    add t2, t1, s3
    sw t0, 0(t2)
    endF
    ret




do_attack_normal:
  la t5, is_defending 
  add t5, t5, s3 
  li t6, 1 
  lw a5, 0(t5)
  beq a5, t6, do_attack_check_is_defending

    la t5, current_state
    la t4, attack_success
    sw t4, 0(t5)
  
  # O randomizer destruiu o t0 antigo, então pegamos da memoria de novo.
  la t1, players_health
  add t2, t1, s3
  lw t0, 0(t2)

    sub t0, t0, s0

    la t1, last_damage
    sw s0, 0(t1)

    la t1, players_health
    add t2, t1, s3
    sw t0, 0(t2)
    endF
    ret 

do_attack_check_is_defending:
  li a5, 0
  sw a5, 0(t5)
  call calculate_success
  # check if defense will succeed or not 
  li t6, 20 
  beq a1, t6, do_counter_attack
  
  li t6, 10 
  bgt a1, t6, do_attack_defended

  j do_attack_normal
  
do_counter_attack:
    la t5, current_state
    la t4, defense_crit
    sw t4, 0(t5)
  
  # dano ao jogador contrário (Riposte!)
    la t1, players_health
  add t2, t1, s2        # aponta para a vida do atacante
  lw t0, 0(t2)

  sub t0, t0, s0
    la t1, last_damage
    sw s0, 0(t1)
    sw t0, 0(t2)
    endF
    ret 


do_skill:
  startF
  la t0, last_damage
  sw x0, 0(t0)
  # recebe em a0 o nome da habilidade 
  # recebe em a1 o endereço de uma função
  # recebe o alvo em a2
  # recebe o custo em mp em a3 
  mv s3, a3 
  mv s2, a0
  mv s1, a2 
  mv s0, a1 
  
  la t0, player_turn
  lw t1, 0(t0)

  # 2. Puxa o MP do jogador 
  slli t2, t1, 2
  la t0, players_mp
  add t0, t0, t2
  lw t3, 0(t0)
  
  # por enquanto vai pro do attack quando não tem mana 
  blt t3, a3, do_attack
  la t3, current_state
  sw a0, 0(t3)

  jalr a1

do_skill_end: 
  la t0, player_turn
  la t2, players_mp
  lw t3, 0(t0)

  slli t1, t3, 2
  add t2, t2, t1 
  lw t3, 0(t2)
  sub t3, t3, s3 
  sw t3, 0(t2)
  endF 
  ret 


do_defense:
    startF
  la t0, last_damage
  sw x0, 0(t0)

  # current state mostra mensagem do jogador ao defender 
  la t1, current_state
  la t2, defense 
  sw t2, 0(t1)
  
    la t0, player_turn
    lw s1, 0(t0)
  slli s1, s1, 2

  la t1, is_defending
  add t1, t1, s1 

  li t2, 1
  sw t2, 0(t1)

  endF
  ret


print_player_ascii:
  startF
  li      t1, 1
  beq     a0, t1, print_p1_strat

  la      t0, player_strategy
  lw      a1, 4(t0)
  j       p_ascii_branch

print_p1_strat:
  la      t0, player_strategy
  lw      a1, 0(t0)

p_ascii_branch:
  # salva o jogador e a estrategia para o loop
  mv      s0, a0
  mv      s1, a1
  # reinicia o frame para garantir que os 5 frames tocam em ordem
  la      t0, current_frame
  sw      x0, 0(t0)
  li      s2, 5

p_ascii_loop:
  mv      a0, s0
  mv      a1, s1
  call    print_ascii
  addi    s2, s2, -1
  bnez    s2, p_ascii_loop

  endF
  ret

 
detect_strategy: 
  startF
  la t0, player_turn
  lw t1, 0(t0)       # pega de quem é o turno (0 ou 1)
  slli t1, t1, 2     # multiplica por 4
  la t0, player_strategy
  add t0, t0, t1
  lw a0, 0(t0)       # retorna a estratégia em a0
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
  call decision
  li t1, 1
  beq t1, a0, do_turn_attack
  li t1, 2
  beq t1, a0, do_turn_skill_absolute_grit
  li t1, 3
  beq t1, a0, do_turn_defense
  li t1, 4 
  beq t1, a0, do_turn_skill_soul_suck
  li t1, 5
  beq t1, a0, do_turn_skill_final_execution
  li t1, 6
  beq t1, a0, do_turn_skill_mirror_shield
  j do_turn_render_action

do_turn_skill_absolute_grit:
  la a0, skill_absolute_grit
  la a1, do_absolute_grit
  li a2, 0
  li a3, 20
  call do_skill

  j do_turn_render_action

do_turn_skill_final_execution:
  la a0, skill_final_execution
  la a1, do_final_execution
  li a2, 0
  li a3, 150
  call do_skill

  j do_turn_render_action

do_turn_skill_mirror_shield:
  la a0, skill_mirror_shield_ready
  la a1, do_mirror_shield
  li a2, 0
  li a3, 30
  call do_skill

  j do_turn_render_action


do_turn_skill_soul_suck:
  la a0, skill_soul_suck
  la a1, do_soul_suck
  li a2, 0
  li a3, 0
  call do_skill

  j do_turn_render_action
do_turn_attack:
  call do_attack 
  j do_turn_render_action

do_turn_defense:
  call do_defense

do_turn_render_action:
    # renderiza um frame completo com sprite + vida + resultado do ataque
    la t0, player_turn
    lw s4, 0(t0)       # salva o indice do jogador (0=j1, 1=j2)
    call detect_strategy
    mv a1, a0          # estrategia em a1
    mv a0, s4          # indice do jogador em a0
    call print_ascii
    li a0, 500
    li a7, 32
    ecall
  j do_end_turn

do_end_turn:
  call do_check_mirror_shield
  bnez a0, do_end_turn_reflect
  j do_end_turn_end
do_end_turn_reflect:
  la t1, player_turn
  lw t1, 0(t1)
  slli t1, t1, 2 

  la t0, players_health
  add t0, t0, t1 
  lw t1, 0(t0)

  la t2, last_damage
  lw t3, 0(t2)
  beqz t3, do_end_turn_end

  # exibe mensagem de reflexo no estado atual
  la t4, current_state
  la t5, skill_mirror_shield
  sw t5, 0(t4)

  # devolve o dano ao defensor (jogador oposto ao atacante)
  # assim o escudo espelho realmente bloqueia o dano recebido
  la t4, player_turn
  lw t4, 0(t4)
  xori t4, t4, 1
  slli t4, t4, 2
  la t5, players_health
  add t5, t5, t4
  lw t4, 0(t5)
  add t4, t4, t3
  sw t4, 0(t5)

  # reflete o dano no atacante
  sub t1, t1, t3
  sw t1, 0(t0)
  call do_deactivate_mirror_shield


do_end_turn_end:
  call do_mana_regen
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


decision:
  startF 
  call detect_strategy
  li t1, 1
  beq a0, t1, decision_random
  li t1, 3
  beq a0, t1, decision_troll
  j decision_smart
decision_random:
  li a0, 6
  call randomizer
  j decision_end

decision_troll:
  # usa as habilidades pra counterar a
  # ia "inteligente"
  la t0, players_health
  la t1, players_mp
  la t2, player_turn

  lw t3, 0(t2) # turno
  mv a0, t3
  xori a0, a0, 1 # inverte turno pra pegar o inimigo
  slli a0, a0, 2 # * 4


  mv a1, t0
  add a1, a1, a0 # vida do inimigo
  lw a2, 0(a1) # carrega em a2

  mv a1, t1 # agora vamos pegar o mp
  add a1, a1, a0
  lw a3, 0(a1) # mp do inimigo

  slli t3, t3, 2 # turno meu * 4
  add t0, t0, t3 # minha vida
  add t1, t1, t3 # meu mp

  lw t4, 0(t1) # mp
  lw t5, 0(t0) # vida

  # infelizmente essa estrategia tambem copia
  # a estrategia inteligente,
  # se o inimigo estiver fraco ele executa ele


  li t6, 150 # preço do execute
  blt t4, t6, decision_troll_checks
  li t6, 50
  bge a2, t6, decision_troll_checks
  j decision_smart_i_can_kill
  # e ele pula pra branch do decision_smart :p

decision_troll_checks:
  li t6, 50
  ble t5, t6, decision_troll_check_enemy_mp
  j decision_troll_not_execute
decision_troll_check_enemy_mp:
  li t6, 150
  bge a3, t6, decision_troll_prepare_against_execute
  j decision_troll_not_execute
decision_troll_prepare_against_execute:
  li a0, 6
  endF
  ret
decision_troll_not_execute:
  # pensando nisso logicamente,
  # se o inimigo nao tem mp, roube mp dele
  # e as vezes de dano pra enfraquecer ele
  # ja que ele usa o roubo de alma e o roubo tambem
  # tira vida. logo,
  li a0, 6
  call randomizer
  li t6, 3
  bge a1, t6, decision_troll_attack
  j decision_troll_soul_suck 
decision_troll_attack:
  li a0, 1
  endF
  ret
decision_troll_soul_suck:
  li a0, 4
  endF
  ret

decision_smart: 
  # eu escrevi essa estrategia 
  # ela se consiste em usar roubo de alma até poder usar execute 
  # só que pra isso também precisamos sobreviver e diminuir a vida do inimigo pra 50%
  # sem morrer 
  la t0, players_health
  la t1, players_mp
  la t2, player_turn

  lw t3, 0(t2) # turno
  mv a0, t3
  xori a0, a0, 1 
  slli a0, a0, 2 
  mv a1, t0
  add a1, a1, a0 
  lw a2, 0(a1)

  slli t3, t3, 2 
  add t1, t1, t3 
  add t2, t2, t3

  lw t4, 0(t1) # mp 
  lw t5, 0(t0) # vida 

  li t6, 150 # preço do execute
  blt t4, t6, decision_smart_my_mana_is_low
  li t6, 50 
  bge a2, t6, decision_smart_enemy_hp_high
  j decision_smart_i_can_kill

decision_smart_my_mana_is_low:
  # vamos rodar soul suck 
  li a0, 4 
  j decision_smart_end
decision_smart_enemy_hp_high:
  li a0, 2
  j decision_smart_end
decision_smart_i_can_kill:
  li a0, 5
  j decision_smart_end
decision_smart_end: 
  endF 
  ret 
decision_end:
  # returns decision in a0 (and accidentally in a1 as well)
  mv a0, a1
  endF 
  ret


# HABILIDADES

# Habilidades básicas 


# A habilidade mais facil de fazer 
do_absolute_grit:
  startF
  # Habilidade que te força a executar um ataque crítico
  call calculate_damage
  j do_attack_crit_no_message

# SOUL SUCK 
# Rouba MP do jogador inimigo 
# Única habilidade que te permite ter mais que 100 MP! Serve como um overcharge
do_soul_suck:
  startF
  # sofre quantidade aleatoria de dano, mas rouba 4x o MP  
  li a0, 12
  call randomizer
  la t1, player_turn
  lw t3, 0(t1)
  mv t4, t3 
  xori t4, t4, 1 
  slli t3, t3, 2
  slli t4, t4, 2 

  la t0, players_health
  add t0, t0, t3
  lw t2, 0(t0)
  # a1 é o dano da habilidade 
  sub t2, t2, a1
  sw t2, 0(t0)
  
  # subtrai mp do inimigo 
  la t0, players_mp
  mv t5, t0 
  add t5, t5, t4 
  lw t6, 0(t5)
  sub t6, t6, a1 
  sw t6, 0(t5)

  add t0, t0, t3
  lw t2, 0(t0)
  slli a1, a1, 2
  add t2, t2, a1 
  sw t2, 0(t0)
  endF 
  ret
  
# Execução final 
# Se o inimigo possuir menos de 50% de vida, causa 800% de dano a mais 
# Dano + 800% + 10 (meio op talvez)
# Só pode ser executada com 150 de MP (ou seja, precisa usar o soul suck)
do_final_execution: 
  startF 
  
  la t0, player_turn
  lw t1, 0(t0)
  xori t2, t1, 1 
  slli t2, t2, 2 
  
  la t4, players_health
  add t4, t4, t2
  lw t5, 0(t4)

  li t3, 50
  ble t3, t5, do_final_execution_fail
  call calculate_damage
  slli s0, s0, 2 
  addi s0, s0, 10
  j do_attack_crit_no_message

do_final_execution_fail: 
  la a0, current_state
  la a1, skill_final_execution_fail
  sw a1, 0(a0)
  endF 
  ret


do_final_execution_end:
  endF
  ret


# ESCUDO ESPELHO
# Prepara o jogador para refletir o próximo dano recebido de volta ao atacante
do_mirror_shield:
  la t0, player_turn
  lw t2, 0(t0)
  slli t2, t2, 2
  la t0, mirror_shield_status
  add t0, t0, t2 
  li t1, 1 
  sw t1, 0(t0)

  startF
  endF
  ret

do_deactivate_mirror_shield:
  startF
  la t0, player_turn
  lw t2, 0(t0)
  slli t2, t2, 2
  la t0, mirror_shield_status
  add t0, t0, t2 
  li t1, 0
  sw t1, 0(t0)

  endF
  ret


do_check_mirror_shield:
  startF

  la t0, player_turn
  lw t2, 0(t0)
  xori t2, t2, 1 

  slli t2, t2, 2
  la t0, mirror_shield_status
  add t0, t0, t2
  lw t1, 0(t0)
  
  bnez t1, do_check_mirror_shield_true 
  li a0, 0
  endF
  ret

do_check_mirror_shield_true:
  li a0, 1 
  endF 
  ret 


# Funções uteis
calculate_damage:
  addi sp, sp, -4
  sw ra, 0(sp)

  mv s4, a1
  li a0, 6
  call randomizer
  mv s0, a1
  addi s0, s0, 1
  mv a1, s4

  la t0, player_turn
  lw s1, 0(t0)

  slli s2, s1, 2

  xori t4, s1, 1
  slli s3, t4, 2

  la t3, players_health
  add t3, t3, s3
  lw t0, 0(t3)
  lw ra, 0(sp)
  addi sp, sp, 4
  ret


do_mana_regen:
  startF
  la t0, players_mp
  lw t1, 0(t0)
  li t2, 100
  bge t1, t2, player_2_check
player_1_regen: 
  addi t1, t1, 2
  sw t1, 0(t0)
player_2_check:
  addi t0, t0, 4
  lw t1, 0(t0)
  bge t1, t2, do_mana_regen_end
player_2_regen:
  addi t1, t1, 2
  sw t1, 0(t0)
do_mana_regen_end:
  endF
  ret
