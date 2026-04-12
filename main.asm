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

player_one_title: .string " JOGADOR 1 "
player_two_title: .string " JOGADOR 2 "

# TEXTOS PARA ESTADOS DE BATALHA 

current_state: .word 0

msg_jogador_1: .string " O jogador 1 "
msg_jogador_2: .string " O jogador 2 "

attack: .string "tentou fazer um ataque básico!\n"
attack_crit: .string "o ataque foi crítico!\n"
attack_success: .string "acertou!\n"

attack_fail: .string "errou!\n"

defense: .string "tentou defender!\n"
defense_crit: .string "defendeu e realizou um contra ataque!\n"
defense_fail: .string "tentou defender mas falhou! o inimigo recebe um bonus!\n"
defense_success: .string "defendeu!\n"


damage_log: .string  "       Dano causado (hp): "
newline:    .string  "\n"

# CAIXAS DE TEXTO E DIALOGO
box_top:        .string " +---------------------------------------+ \n"
box_mid:        .string "                                          \n"
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
last_damage:    .word   0
defense_fail_bonus: .word 0 
is_defending: .word 0, 0 

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


  # 1 por enquanto, porque a estratégia agressiva e defensiva foi removida 
  # será substituida por classes depois que eu implementar habilidades de classe 
  li a0, 1 
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

  li a0, 1
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

  la      t0, players_health
  beq     s0, x0, draw_health_player_1
  
  la a0, player_two_title
  li a7, 4 
  ecall 


  lw      s1, 4(t0)
  j       draw_health_bar

draw_health_player_1:
  la a0, player_one_title
  li a7, 4 
  ecall 

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
  li a0, 1
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
  
  ble t1, x0, game_loop_end
  ble t2, x0, game_loop_end
  j game_loop_start

game_loop_end: 
  endF 
  ret

do_attack:
	startF

  # current state mostra mensagem do jogador atacar
  la t1, current_state
  la t2, attack 
  sw t2, 0(t1)

	la t0, player_turn
	lw s1, 0(t0)

	# s2 = offset do atacante na memoria (indice do jogador atual * 4 bytes)
	# jogador 0 fica no offset 0, jogador 1 fica no offset 4
	li t2, 4
	mul s2, s1, t2

	# s3 = offset do inimigo (o oposto do atacante)
	# xori inverte o bit menos significativo: 0 vira 1, 1 vira 0
	# assim achamos o indice do jogador que vai RECEBER o dano
	xori t4, s1, 1
	# multiplicamos por 4 para obter o offset de memoria do inimigo
	mul s3, t4, t2

	# 1d5 de dano
	li a0, 5
	call randomizer
	mv s0, a1
	# adicionamos 1 pro ataque nao dar 0 de dano (erro)
	addi s0, s0, 1
	call calculate_success
	# caso d20 > 10, acertamos. se nao, erramos. se 20, critico

	# lemos a vida do INIMIGO usando o offset do inimigo (s3)
	la t3, players_health
	add t3, t3, s3
	lw t0, 0(t3)

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


do_defense:
	startF

  # current state mostra mensagem do jogador ao defender 
  la t1, current_state
  la t2, defense 
  sw t2, 0(t1)
  
	la t0, player_turn
	lw s1, 0(t0)
  li t1, 4 
  mul s1, s1, t1 

  la t1, is_defending
  add t1, t1, s1 

  li t2, 1 
  sw t2, 0(t1)
  



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
  call decision 
  li t1, 1 
  beq t1, a0, do_turn_attack
  j do_turn_defense

do_turn_attack:
  call do_attack 
  j do_turn_render_action

do_turn_defense:
  call do_defense

do_turn_render_action:
	# renderiza um frame completo com sprite + vida + resultado do ataque
	la t0, player_turn
	lw s4, 0(t0)       # salva o indice do jogador (0=j1, 1=j2)
	xori a0, s4, 1     # converte para detect_strategy (j1=1, j2=0)
	call detect_strategy
	mv a1, a0          # estrategia em a1
	mv a0, s4          # indice do jogador em a0
	call print_ascii
	li a0, 500
	li a7, 32
	ecall
  j do_end_turn

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


decision:
  startF 
  call detect_strategy

  li t1, 1 
  beq a0, t1, decision_random
decision_random:
  # there's only two possible decisions now so I'll leave it at that 
  li a0, 2
  call randomizer
decision_end:
  # returns decision in a0 (and accidentally in a1 as well)
  mv a0, a1
  endF 
  ret
