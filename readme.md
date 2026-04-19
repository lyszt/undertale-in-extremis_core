# Extremis Lite

Lite version of the Extremis combat system built for battle benchmarking using different "AI/BOT" strategies.

https://github.com/user-attachments/assets/379521ff-3ec5-4981-8845-8c0878b5ebea

## Overview

RISC-V assembly RPG battle simulator. Two bots fight until one dies. Each bot gets a random strategy and acts autonomously each turn.

Built as a university project (ORG 2026.1). Must be run via `make simulate` — terminal output is required for screen clearing, frame timing, and animated ASCII sprites.

## Combat System

### Stats
| Stat | Starting Value |
|------|---------------|
| HP   | 100           |
| MP   | 100           |

MP regenerates **+2 per turn** (capped at 100, unless Soul Suck overcharges it).

### Actions
Each turn the bot rolls randomly between 4 actions:

| Action | Effect |
|--------|--------|
| **Attack** | 1d20 hit check. Miss on <10, hit on ≥10, crit on 20 (double damage). Defender can counter if defending. |
| **Defend** | Marks player as defending. Next incoming attack triggers a defense roll — success blocks, crit on 20 ripostes the attacker. |
| **Absolute Grit** | Forces a critical attack. Costs 20 MP. Falls back to normal attack if no mana. |
| **Soul Suck** | Takes 1–12 self-damage, steals 4× that as MP from self (overcharge possible). Costs 0 MP. |

### Strategies
Currently only `Aleatorio` (random) is active. `Agressivo` and `Defensivo` sprites exist but strategy branching is reserved for future class implementations.

## Running

```sh
make simulate
```

Runs headless in the terminal. Screen clearing and frame delays depend on terminal syscalls — animated sprites and the combat log won't work correctly outside of this mode.

**Copy source to clipboard:**
```sh
make copy
```

## Files

| File | Description |
|------|-------------|
| `main.asm` | Entire simulation in RISC-V assembly |
| `Makefile` | Build shortcuts |
