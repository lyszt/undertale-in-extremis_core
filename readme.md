# Extremis Lite: How a Button-Mashing AI Broke My RISC-V RPG

> University project (ORG 2026.1) — An RPG combat simulator and Monte Carlo engine written entirely in RISC-V assembly.

https://github.com/user-attachments/assets/379521ff-3ec5-4981-8845-8c0878b5ebea

## The Setup

I built an RPG combat engine from scratch in raw RISC-V assembly. The goal was to write three distinct AI state machines, throw them into a headless emulator, and run 10,000 automated matches to see which strategy came out on top.

The combat revolves around a strict action economy. MP regenerates slowly, but can be overcharged using specific skills. 

| Skill | Cost | What it does |
|---|---|---|
| **Attack** | free | Rolls a 1d20. `< 10` misses, `10+` hits, `20` crits for double damage. |
| **Defend** | free | Blocks incoming damage. High rolls trigger a counter-attack. |
| **Absolute Grit** | 20 MP | Bypasses the dice for a guaranteed critical hit. |
| **Soul Suck** | free | The caster takes 1–12 recoil damage to steal 4× that amount in MP. The only way to bypass the 100 MP cap. |
| **Final Execution** | 150 MP | An 800% damage nuke. Fails if the target is above 50% HP. |
| **Mirror Shield** | 30 MP | Reflects the next incoming attack back at the caster. |

## The Contenders

I wrote three bots, each with a completely different brain:

**Flowey (The Chaos):** Pure RNG. He evaluates nothing and just rolls a random number to pick his next move.

```asm
decision_random:
  li a0, 6
  call randomizer  # picks a number between 1 and 6, that's the whole strategy
  j decision_end
```

**Chara (The Try-Hard):** She optimizes for one combo: spam *Soul Suck* until she hits 150 MP, chip the enemy below 50% HP, and drop the *Final Execution*. In the code the strategy is also named smart, but it is not quite so.

```asm
decision_smart:
  # eu escrevi essa estrategia
  # ela se consiste em usar roubo de alma até poder usar execute
  # só que pra isso também precisamos sobreviver e diminuir a vida do inimigo pra 50%
  # sem morrer
  ...
  li t6, 150        # preço do execute
  blt t4, t6, decision_smart_my_mana_is_low   # mp < 150? go farm
  bge a2, t6, decision_smart_enemy_hp_high    # enemy hp > 50? go bully
  j decision_smart_i_can_kill                 # otherwise, execute

decision_smart_my_mana_is_low:
  li a0, 4  # soul suck
decision_smart_enemy_hp_high:
  li a0, 2  # absolute grit
decision_smart_i_can_kill:
  li a0, 5  # final execution
```

**Toby (The Hard-Counter):** Built specifically to farm Chara. He watches her MP bar. If she gets close to 150, he holds up his *Mirror Shield* and waits for her to nuke herself. It is also capable of using Final Execution when the enemy has low HP, so beyond countering Chara, it is also a decent strategy overall.

```asm
decision_troll_checks:
  li t6, 50
  ble t5, t6, decision_troll_check_enemy_mp  # am I low enough to worry?
  j decision_troll_not_execute
decision_troll_check_enemy_mp:
  li t6, 150
  bge a3, t6, decision_troll_prepare_against_execute  # is enemy close to 150 mp?
  j decision_troll_not_execute
decision_troll_prepare_against_execute:
  li a0, 6  # mirror shield
  ret
```

## The Benchmark Results

After running 10,000 matches on Terminal using rars.jar, the jar from the Risc-V Java-based simulator RARS, the results came back. 

| Character | Win Rate |
|-----------|----------|
| **Flowey** | ~52% |
| **Toby** | ~29% |
| **Chara** | ~17% |

The dumbest AI won the absolute majority of the games. 

Chara's 17% win rate exposes the problem with rigid, greedy combos. To reach 150 MP, she has to take recoil damage from *Soul Suck*. Often, Toby just holds up his shield, and Chara's script forces her to keep draining her own health until she literally kills herself before she can even cast her ultimate. 

Toby's 29% comes from successfully baiting Chara. But against Flowey, Toby's victories are not assured. He can play really well if Flowey uses execute and acts as he plans, but if that doesn't happen, he can lose dramatically. Toby is wired to wait for an ultimate attack—so he just stands there, playing passively, while Flowey randomly crits him to death.

Flowey won 52% of the time because having no strategy is impossible to counter-read consistently. He never takes recoil damage trying to set up a massive play; he just throws out high-value moves by accident. It turns out, if your entire codebase relies on predicting enemy behavior, you automatically lose to an enemy that does things for no reason.

## Running It

To compile the assembly and run the engine locally:

```sh
make simulate
