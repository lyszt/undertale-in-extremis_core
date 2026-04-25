# Extremis Lite: When Randomness Breaks Logic

> University project (ORG 2026.1). An adversarial RPG combat simulator and Monte Carlo engine written entirely in RISC-V assembly.

https://github.com/user-attachments/assets/379521ff-3ec5-4981-8845-8c0878b5ebea

## The Premise

What happens when you build competing AI state machines in a low-level architecture and force them to fight 10,000 times? 

Extremis Lite is a custom RPG combat engine featuring three Undertale characters, built from scratch in RISC-V assembly. While it features a fully animated ASCII spectator mode, the core of the project is the headless benchmark simulator. It runs thousands of automated matches, parsing RNG and decision trees to find out which algorithmic strategy is objectively the best.

## The Action Economy

Each turn costs one action. MP regenerates natively at +2 per turn, capped at 100 (unless overcharged via *Soul Suck*).

| Skill | Cost | Mechanics |
|---|---|---|
| **Attack** | free | Rolls a standard 1d20. `< 10` misses, `10+` hits, `20` crits for double damage. Attacking a defending target triggers a block/riposte check. |
| **Defend** | free | Enters a defensive stance. Blocks incoming damage, with a chance to trigger a riposte counter-attack on a high roll. |
| **Absolute Grit** | 20 MP | Bypasses RNG entirely to force a guaranteed critical hit. |
| **Soul Suck** | free | The caster takes 1–12 recoil damage to steal 4× that amount in MP from the enemy. The only way to bypass the 100 MP cap and reach the 150 MP execution threshold. |
| **Final Execution** | 150 MP | The ultimate nuke (800% damage). Fails completely if the target is above 50% HP, wasting the MP. |
| **Mirror Shield** | 30 MP | Raises a shield that reflects the next incoming damage source back at the attacker. |

## The Algorithmic Archetypes

To test the combat engine, I wrote three distinct AI strategies, each representing a different approach to systems logic.

* **Flowey (The Stochastic Algorithm):** Plays entirely at random. He evaluates no variables and follows no pattern, relying entirely on a custom `xorshift` pseudorandom number generator to pick his moves.
* **Chara (The First-Order Logic):** The "smart" AI. Her algorithm aggressively optimizes for a single win condition: hoard MP using *Soul Suck* until she hits 150, chip the enemy below 50% HP, and land the *Final Execution*. 
* **Toby (The Second-Order Logic):** Built explicitly as a hard-counter to Chara. He monitors the enemy's MP gauge. If they approach the 150 MP execution threshold, he holds his *Mirror Shield* to reflect the incoming nuke.

## The Benchmark: Over-optimization Creates Fragility

After compiling the logic and running a 10,000-match Monte Carlo simulation via headless RARS, the results revealed a fascinating reality about algorithmic design.

| Character | Win Rate | Strategy |
|-----------|----------|----------|
| **Flowey** | ~52% | Pure Randomness |
| **Toby** | ~29% | Reactive Counter-Logic |
| **Chara** | ~17% | Proactive Optimization |

**The dumbest AI won the absolute majority.** Here is the architectural autopsy of why:

Chara's dismal 17% win rate exposes the fatal flaw of greedy algorithms. To reach her 150 MP win condition, she is forced to spam *Soul Suck*, which inherently deals recoil damage. In the pursuit of the perfect combo, she constantly bleeds her own health. Often, Toby simply raises his *Mirror Shield*, and Chara's rigid logic forces her to keep casting *Soul Suck* until the recoil damage literally makes her kill herself.

Toby's 29% perfectly reflects his specialized nature. He farms Chara because his algorithm is designed to exploit hers. But against Flowey, Toby's complex `if/else` checks for the 150 MP threshold are useless. Toby ends up playing passively, waiting for an execution that never comes.

Flowey’s 52% supremacy proves that **predictability is a vulnerability**. Flowey never takes unnecessary recoil damage trying to optimize a combo. He just throws high-value moves the second the RNG allows it. Any strategy that relies on predicting enemy behavior completely falls apart when the enemy has no behavior. 

## Running the Simulator

To compile and run the engine yourself:

```sh
make simulate
