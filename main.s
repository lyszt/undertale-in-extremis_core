# ORG 2026.1
# Sistema de combate de RPG simulado em RISCV

.data

# flag para determinar qual jogador está jogando 
player_turn: .word 0 

# flag para determinar as estratégias selecionadas 
estrategias: .word 0, 0

# matrix dos pontos de vida dos jogadores
players_health: .word 100, 100

.text 
