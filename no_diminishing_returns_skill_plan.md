# No-Diminishing-Returns Player Skill Review Plan

This is a review plan only. It does not edit any DBR record. It inventories effective base-game, expansion, and current-mod player-skill records whose hard cap exceeds their natural cap, using normal load precedence, then flags numeric fields whose marginal gain becomes smaller after the natural cap.

## Review rule

- Preserve every value from rank 1 through the natural cap.
- Estimate the natural-cap pace from the average change across the last three natural ranks. This smooths integer rounding and alternating step patterns.
- Above the natural cap, replace only weaker marginal gains with that natural-cap pace. Preserve any vanilla overcap gain that is already equal or stronger.
- **Safe changes** contains continuous damage and core-attribute scaling that can be changed mechanically after review.
- **To-be-exception** contains costs, chances, timing, area, targeting, projectile behavior, summon counts, absorption, resistance effects, speed, control, and any unfamiliar field. The calculated sequence is shown for comparison but is not approved for implementation.
- `Current overcap` and `Candidate overcap` list the values at natural-cap +1 through hard cap. Percent, seconds, metres, and Energy units follow the tooltip-style stat label.
- Each candidate is a review checkbox. Mark it only after deciding whether to approve, reject, or revise the displayed sequence; checking an item does not modify a DBR.

## Inventory summary

- Effective overcap records reviewed: **264**
- Human-readable skill sections: **223**
- Safe stat candidates: **140**
- To-be-exception stat candidates: **237**

| Mastery | Skill sections | Safe candidates | To-be-exception candidates |
|---|---:|---:|---:|
| Soldier | 20 | 18 | 24 |
| Demolitionist | 21 | 10 | 31 |
| Occultist | 20 | 12 | 21 |
| Nightblade | 20 | 12 | 28 |
| Arcanist | 17 | 12 | 23 |
| Shaman | 28 | 20 | 26 |
| Inquisitor | 21 | 12 | 18 |
| Necromancer | 35 | 12 | 34 |
| Oathkeeper | 20 | 18 | 18 |
| Berserker | 21 | 14 | 14 |

## Soldier

### Blade Arc — 16/16 → 26/26

*Tooltip:* An arched swing that slices through multiple enemies around you. Requires a melee weapon.

*Records:* `records/skills/playerclass01/bladearc1.dbr` [Base game]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **180% at 16/16**; current hard cap **250% at 26/26**. Natural-cap pace: **+8% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **260%**. Current overcap: 187% / 194% / 201% / 208% / 215% / 222% / 229% / 236% / 243% / 250%. Candidate overcap: 188% / 196% / 204% / 212% / 220% / 228% / 236% / 244% / 252% / 260%. Source: `records/skills/playerclass01/bladearc1.dbr` → `weaponDamagePct`.

#### To-be-exception

- [ ] **Energy Cost** — natural cap **20 Energy at 16/16**; current hard cap **25 Energy at 26/26**. Natural-cap pace: **+0.667 Energy per rank**; weakest overcap pace: **0 Energy per rank**. Unapproved linear-floor candidate: **28.333 Energy**. **Review reason:** Energy cost is a cost curve, not a player benefit; lowering its overcap penalty would be a separate balance change. Recommended default: preserve vanilla until explicitly approved. Current overcap: 21 Energy / 21 Energy / 22 Energy / 22 Energy / 23 Energy / 23 Energy / 24 Energy / 24 Energy / 25 Energy / 25 Energy. Candidate overcap: 21 Energy / 21.667 Energy / 22.667 Energy / 23.333 Energy / 24.333 Energy / 25 Energy / 26 Energy / 26.667 Energy / 27.667 Energy / 28.333 Energy. Source: `records/skills/playerclass01/bladearc1.dbr` → `skillManaCost`.

### Blitz — 16/16 → 26/26

*Tooltip:* Charge forth into the fray with devastating momentum, taking your enemies by surprise. Requires a melee weapon. When used with a shield, the skill strikes an additional time with the shield.

*Records:* `records/skills/playerclass01/blitz1.dbr` [Base game]

#### Safe changes

- [ ] **Physical Damage (minimum)** — natural cap **466 at 16/16**; current hard cap **726 at 26/26**. Natural-cap pace: **+25.333 per rank**; weakest overcap pace: **+21 per rank**. Proposed safe hard cap: **740.333**. Current overcap: 488 / 509 / 536 / 564 / 593 / 615 / 643 / 665 / 694 / 726. Candidate overcap: 491.333 / 516.667 / 543.667 / 571.667 / 600.667 / 626 / 654 / 679.333 / 708.333 / 740.333. Source: `records/skills/playerclass01/blitz1.dbr` → `offensivePhysicalMin`.

- [ ] **Weapon Damage** — natural cap **360% at 16/16**; current hard cap **440% at 26/26**. Natural-cap pace: **+15% per rank**; weakest overcap pace: **+8% per rank**. Proposed safe hard cap: **510%**. Current overcap: 368% / 376% / 384% / 392% / 400% / 408% / 416% / 424% / 432% / 440%. Candidate overcap: 375% / 390% / 405% / 420% / 435% / 450% / 465% / 480% / 495% / 510%. Source: `records/skills/playerclass01/blitz1.dbr` → `weaponDamagePct`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Cadence — 16/16 → 26/26

*Tooltip:* The use of weapon forms in combat gives your attacks a natural cadence with peaks and ebbs that, while predictable, are none the less effective and difficult to counter. When used as your default weapon attack, Cadence will magnify the power of every 3rd single weapon strike.

*Records:* `records/skills/playerclass01/cadence1.dbr` [Base game]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **430% at 16/16**; current hard cap **550% at 26/26**. Natural-cap pace: **+20% per rank**; weakest overcap pace: **+12% per rank**. Proposed safe hard cap: **630%**. Current overcap: 442% / 454% / 466% / 478% / 490% / 502% / 514% / 526% / 538% / 550%. Candidate overcap: 450% / 470% / 490% / 510% / 530% / 550% / 570% / 590% / 610% / 630%. Source: `records/skills/playerclass01/cadence1.dbr` → `weaponDamagePct`.

#### To-be-exception

- [ ] **Energy Cost** — natural cap **4 Energy at 16/16**; current hard cap **8 Energy at 26/26**. Natural-cap pace: **+0.333 Energy per rank**; weakest overcap pace: **0 Energy per rank**. Unapproved linear-floor candidate: **10 Energy**. **Review reason:** Energy cost is a cost curve, not a player benefit; lowering its overcap penalty would be a separate balance change. Recommended default: preserve vanilla until explicitly approved. Current overcap: 4 Energy / 4 Energy / 5 Energy / 5 Energy / 6 Energy / 6 Energy / 7 Energy / 7 Energy / 7 Energy / 8 Energy. Candidate overcap: 4.333 Energy / 4.667 Energy / 5.667 Energy / 6 Energy / 7 Energy / 7.333 Energy / 8.333 Energy / 8.667 Energy / 9 Energy / 10 Energy. Source: `records/skills/playerclass01/cadence1.dbr` → `skillManaCost`.

### Counter Strike — 16/16 → 26/26

*Tooltip:* Enter a state of intense readiness in order to unleash lightning-fast counter strikes against your attackers.

*Records:* `records/skills/playerclass01/counterstrike1.dbr` [Forgotten Gods]

#### Safe changes

- [ ] **Bleeding Damage (minimum)** — natural cap **246 at 16/16**; current hard cap **420 at 26/26**. Natural-cap pace: **+17.667 per rank**; weakest overcap pace: **+14 per rank**. Proposed safe hard cap: **425**. Current overcap: 260 / 278 / 295 / 313 / 330 / 348 / 366 / 384 / 402 / 420. Candidate overcap: 263.667 / 281.667 / 299.333 / 317.333 / 335 / 353 / 371 / 389 / 407 / 425. Source: `records/skills/playerclass01/counterstrike1.dbr` → `offensiveSlowBleedingMin`.

- [ ] **Weapon Damage** — natural cap **36% at 16/16**; current hard cap **52% at 26/26**. Natural-cap pace: **+2% per rank**; weakest overcap pace: **+1% per rank**. Proposed safe hard cap: **57%**. Current overcap: 37% / 39% / 40% / 42% / 43% / 45% / 46% / 48% / 49% / 52%. Candidate overcap: 38% / 40% / 42% / 44% / 46% / 48% / 50% / 52% / 54% / 57%. Source: `records/skills/playerclass01/counterstrike1.dbr` → `weaponDamagePct`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Deadly Momentum — 12/12 → 22/22

*Tooltip:* You push the advantage following a Cadence strike, briefly causing all of your blows to strike with additional deadly force. Deadly Momentum affects all attacks while active.

*Records:* `records/skills/playerclass01/cadence3_buff.dbr` [Base game]

#### Safe changes

- [ ] **Internal Trauma Damage (minimum)** — natural cap **55 at 12/12**; current hard cap **115 at 22/22**. Natural-cap pace: **+4.333 per rank**; weakest overcap pace: **+4 per rank**. Proposed safe hard cap: **115.667**. Current overcap: 60 / 64 / 69 / 73 / 78 / 83 / 88 / 95 / 102 / 115. Candidate overcap: 60 / 64.333 / 69.333 / 73.667 / 78.667 / 83.667 / 88.667 / 95.667 / 102.667 / 115.667. Source: `records/skills/playerclass01/cadence3_buff.dbr` → `offensiveSlowPhysicalMin`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Decorated Soldier — 8/8 → 18/18

*Tooltip:* An ability to remain calm and think clearly in the heat of battle enables veterans to more easily spot the gaps in an enemy's defense, or predict the flow of their attacks so that they can be easily countered.

*Records:* `records/skills/playerclass01/passive3.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **ElementalResistance Resistance** — natural cap **20% at 8/8**; current hard cap **32% at 18/18**. Natural-cap pace: **+2% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **41%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: 21% / 22% / 23% / 24% / 25% / 26% / 27% / 28% / 29% / 32%. Candidate overcap: 22% / 24% / 26% / 28% / 30% / 32% / 34% / 36% / 38% / 41%. Source: `records/skills/playerclass01/passive3.dbr` → `defensiveElementalResistance`.

- [ ] **Slow Resistance** — natural cap **20% at 8/8**; current hard cap **32% at 18/18**. Natural-cap pace: **+2% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **41%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: 21% / 22% / 23% / 24% / 25% / 26% / 27% / 28% / 29% / 32%. Candidate overcap: 22% / 24% / 26% / 28% / 30% / 32% / 34% / 36% / 38% / 41%. Source: `records/skills/playerclass01/passive3.dbr` → `defensiveTotalSpeedResistance`.

### Field Command — 12/12 → 22/22

*Tooltip:* A superior sense of discipline and knowledge of battlefield tactics makes you a natural leader in the heat of battle.

*Records:* `records/skills/playerclass01/fieldcommand1buff.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Fighting Spirit — 12/12 → 22/22

*Tooltip:* Far from beating you into submission, the sting of enemy blows rouses your anger instead, adding extra force to your attacks. Activates when taking damage.

*Records:* `records/skills/playerclass01/fightingspirit1.dbr` [Base game]

#### Safe changes

- [ ] **Offensive Ability** — natural cap **235 at 12/12**; current hard cap **385 at 22/22**. Natural-cap pace: **+18.333 per rank**; weakest overcap pace: **+15 per rank**. Proposed safe hard cap: **418.333**. Current overcap: 250 / 265 / 280 / 295 / 310 / 325 / 340 / 355 / 370 / 385. Candidate overcap: 253.333 / 271.667 / 290 / 308.333 / 326.667 / 345 / 363.333 / 381.667 / 400 / 418.333. Source: `records/skills/playerclass01/fightingspirit1.dbr` → `characterOffensiveAbility`.

- [ ] **TotalDamage Damage** — natural cap **200% at 12/12**; current hard cap **300% at 22/22**. Natural-cap pace: **+15% per rank**; weakest overcap pace: **+10% per rank**. Proposed safe hard cap: **350%**. Current overcap: 210% / 220% / 230% / 240% / 250% / 260% / 270% / 280% / 290% / 300%. Candidate overcap: 215% / 230% / 245% / 260% / 275% / 290% / 305% / 320% / 335% / 350%. Source: `records/skills/playerclass01/fightingspirit1.dbr` → `offensiveTotalDamageModifier`.

#### To-be-exception

- [ ] **Chance to Activate when Hit** — natural cap **50% at 12/12**; current hard cap **70% at 22/22**. Natural-cap pace: **+2.667% per rank**; weakest overcap pace: **+2% per rank**. Unapproved linear-floor candidate: **76.667%**. **Review reason:** Chance and weighting fields are discrete probability mechanics and may have engine or balance caps. Recommended default: preserve vanilla until explicitly approved. Current overcap: 52% / 54% / 56% / 58% / 60% / 62% / 64% / 66% / 68% / 70%. Candidate overcap: 52.667% / 55.333% / 58% / 60.667% / 63.333% / 66% / 68.667% / 71.333% / 74% / 76.667%. Source: `records/skills/playerclass01/fightingspirit1.dbr` → `onHitActivationChance`.

### Forcewave — 16/16 → 26/26

*Tooltip:* Such force is channeled into the attack that it compresses the very air, projecting out a wave of energy that stuns and damages foes. This attack requires a shield or two-handed melee weapon.

*Records:* `records/skills/playerclass01/shieldhammer1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Stun Duration (maximum)** — natural cap **4.8 at 16/16**; current hard cap **6.3 at 26/26**. Natural-cap pace: **+0.167 per rank**; weakest overcap pace: **+0.1 per rank**. Unapproved linear-floor candidate: **6.633**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 5 / 5.1 / 5.2 / 5.4 / 5.6 / 5.7 / 5.9 / 6 / 6.1 / 6.3. Candidate overcap: 5 / 5.167 / 5.333 / 5.533 / 5.733 / 5.9 / 6.1 / 6.267 / 6.433 / 6.633. Source: `records/skills/playerclass01/shieldhammer1.dbr` → `offensiveStunMax`.

- [ ] **Stun Duration (minimum)** — natural cap **3.6 at 16/16**; current hard cap **4.9 at 26/26**. Natural-cap pace: **+0.133 per rank**; weakest overcap pace: **+0.1 per rank**. Unapproved linear-floor candidate: **5.133**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 3.7 / 3.9 / 4 / 4.1 / 4.3 / 4.4 / 4.5 / 4.7 / 4.8 / 4.9. Candidate overcap: 3.733 / 3.933 / 4.067 / 4.2 / 4.4 / 4.533 / 4.667 / 4.867 / 5 / 5.133. Source: `records/skills/playerclass01/shieldhammer1.dbr` → `offensiveStunMin`.

### Markovian's Advantage — 12/12 → 22/22

*Tooltip:* The renowned tactician Markovian always maneuvered to strike from the higher ground. This classic attack, inspired by Markovian's battlefield tactics, features a powerful downward strike to throw enemies off balance, weakening their defenses. Can activate with all default weapon attacks.

*Records:* `records/skills/playerclass01/weaponpool1.dbr` [Base game]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **200% at 12/12**; current hard cap **240% at 22/22**. Natural-cap pace: **+5% per rank**; weakest overcap pace: **+4% per rank**. Proposed safe hard cap: **250%**. Current overcap: 204% / 208% / 212% / 216% / 220% / 224% / 228% / 232% / 236% / 240%. Candidate overcap: 205% / 210% / 215% / 220% / 225% / 230% / 235% / 240% / 245% / 250%. Source: `records/skills/playerclass01/weaponpool1.dbr` → `weaponDamagePct`.

#### To-be-exception

- [ ] **Activation Weight** — natural cap **26% at 12/12**; current hard cap **30% at 22/22**. Natural-cap pace: **+0.333% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **32%**. **Review reason:** Chance and weighting fields are discrete probability mechanics and may have engine or balance caps. Recommended default: preserve vanilla until explicitly approved. Current overcap: 27% / 27% / 27% / 28% / 28% / 28% / 29% / 29% / 29% / 30%. Candidate overcap: 27% / 27.333% / 27.667% / 28.667% / 29% / 29.333% / 30.333% / 30.667% / 31% / 32%. Source: `records/skills/playerclass01/weaponpool1.dbr` → `skillChanceWeight`.

### Menhir's Bulwark — 12/12 → 22/22

*Tooltip:* Call out to the earth deity, Menhir. Menhir is an ancient aspect that blesses his followers with the tenacity of the very earth. Requires a shield or two-handed melee weapon.

*Records:* `records/skills/playerclass01/stancedefensive.dbr` [Forgotten Gods]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Damage Absorption** — natural cap **15% at 12/12**; current hard cap **20% at 22/22**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **25%**. **Review reason:** Absorption and maximum resistance can cross strong defensive breakpoints and require separate balance approval. Recommended default: preserve vanilla until explicitly approved. Current overcap: 15% / 16% / 16% / 17% / 17% / 18% / 18% / 19% / 19% / 20%. Candidate overcap: 16% / 17% / 18% / 19% / 20% / 21% / 22% / 23% / 24% / 25%. Source: `records/skills/playerclass01/stancedefensive.dbr` → `damageAbsorptionPercent`.

- [ ] **Stun Duration** — natural cap **40% at 12/12**; current hard cap **75% at 22/22**. Natural-cap pace: **+2.333% per rank**; weakest overcap pace: **+2% per rank**. Unapproved linear-floor candidate: **76.667%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 42% / 44% / 46% / 48% / 50% / 53% / 56% / 60% / 65% / 75%. Candidate overcap: 42.333% / 44.667% / 47% / 49.333% / 51.667% / 54.667% / 57.667% / 61.667% / 66.667% / 76.667%. Source: `records/skills/playerclass01/stancedefensive.dbr` → `offensiveStunModifier`.

### Menhir's Will — 16/16 → 26/26

*Tooltip:* As you draw close to death, the unyielding will of Menhir fills you with renewed strength. Requires a shield or two-handed melee weapon.

*Records:* `records/skills/playerclass01/willtolive1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Skill Recharge** — natural cap **15 s at 16/16**; current hard cap **12 s at 26/26**. Natural-cap pace: **-0.667 s per rank**; weakest overcap pace: **0 s per rank**. Unapproved linear-floor candidate: **7.333 s**. **Review reason:** Recharge changes alter uptime and rotation breakpoints rather than only restoring a stat growth rate. Recommended default: preserve vanilla until explicitly approved. Current overcap: 15 s / 15 s / 14 s / 14 s / 14 s / 14 s / 13 s / 13 s / 13 s / 12 s. Candidate overcap: 14.333 s / 13.667 s / 12.667 s / 12 s / 11.333 s / 10.667 s / 9.667 s / 9 s / 8.333 s / 7.333 s. Source: `records/skills/playerclass01/willtolive1.dbr` → `skillCooldownTime`.

### Military Conditioning — 10/10 → 20/20

*Tooltip:* Heavily regimented military training strengthens and fortifies the body against the hardships of war.

*Records:* `records/skills/playerclass01/passive1.dbr` [Base game]

#### Safe changes

- [ ] **Physique** — natural cap **18% at 10/10**; current hard cap **28% at 20/20**. Natural-cap pace: **+2% per rank**; weakest overcap pace: **+1% per rank**. Proposed safe hard cap: **38%**. Current overcap: 19% / 20% / 21% / 22% / 23% / 24% / 25% / 26% / 27% / 28%. Candidate overcap: 20% / 22% / 24% / 26% / 28% / 30% / 32% / 34% / 36% / 38%. Source: `records/skills/playerclass01/passive1.dbr` → `characterStrengthModifier`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Oleron's Rage — 12/12 → 22/22

*Tooltip:* Call out to the war deity, Oleron. Oleron is an ancient aspect that inspires unwavering ferocity in his followers.

*Records:* `records/skills/playerclass01/stanceoffensive.dbr` [Base game]

#### Safe changes

- [ ] **Internal Trauma Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass01/stanceoffensive.dbr` → `offensiveSlowPhysicalModifier`.

- [ ] **Offensive Ability** — natural cap **14% at 12/12**; current hard cap **20% at 22/22**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Proposed safe hard cap: **25%**. Current overcap: 14% / 15% / 15% / 16% / 16% / 17% / 17% / 18% / 18% / 20%. Candidate overcap: 15% / 16% / 17% / 18% / 19% / 20% / 21% / 22% / 23% / 25%. Source: `records/skills/playerclass01/stanceoffensive.dbr` → `characterOffensiveAbilityModifier`.

- [ ] **Physical Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass01/stanceoffensive.dbr` → `offensivePhysicalModifier`.

- [ ] **Pierce Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass01/stanceoffensive.dbr` → `offensivePierceModifier`.

#### To-be-exception

- [ ] **Movement Speed** — natural cap **12% at 12/12**; current hard cap **15% at 22/22**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **22%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 12% / 12% / 12% / 13% / 13% / 13% / 14% / 14% / 14% / 15%. Candidate overcap: 13% / 14% / 15% / 16% / 17% / 18% / 19% / 20% / 21% / 22%. Source: `records/skills/playerclass01/stanceoffensive.dbr` → `characterRunSpeedModifier`.

### Overguard — 12/12 → 22/22

*Tooltip:* Assume a defensive stance that greatly boosts your combat awareness. You can only maintain this focus for a short duration. Requires a shield.

*Records:* `records/skills/playerclass01/overguard1.dbr` [Base game]

#### Safe changes

- [ ] **Health Regeneration** — natural cap **160% at 12/12**; current hard cap **245% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+8% per rank**. Proposed safe hard cap: **263%**. Current overcap: 168% / 176% / 184% / 192% / 200% / 208% / 216% / 224% / 232% / 245%. Candidate overcap: 170% / 180% / 190% / 200% / 210% / 220% / 230% / 240% / 250% / 263%. Source: `records/skills/playerclass01/overguard1.dbr` → `characterLifeRegenModifier`.

#### To-be-exception

- [ ] **Damage Absorption (flat)** — natural cap **90 at 12/12**; current hard cap **150 at 22/22**. Natural-cap pace: **+8 per rank**; weakest overcap pace: **+6 per rank**. Unapproved linear-floor candidate: **170**. **Review reason:** Absorption and maximum resistance can cross strong defensive breakpoints and require separate balance approval. Recommended default: preserve vanilla until explicitly approved. Current overcap: 96 / 102 / 108 / 114 / 120 / 126 / 132 / 138 / 144 / 150. Candidate overcap: 98 / 106 / 114 / 122 / 130 / 138 / 146 / 154 / 162 / 170. Source: `records/skills/playerclass01/overguard1.dbr` → `damageAbsorption`.

- [ ] **Retaliation Stun Chance** — natural cap **50% at 12/12**; current hard cap **75% at 22/22**. Natural-cap pace: **+4% per rank**; weakest overcap pace: **+2% per rank**. Unapproved linear-floor candidate: **93%**. **Review reason:** Chance and weighting fields are discrete probability mechanics and may have engine or balance caps. Recommended default: preserve vanilla until explicitly approved. Current overcap: 52% / 54% / 56% / 58% / 60% / 62% / 64% / 66% / 68% / 75%. Candidate overcap: 54% / 58% / 62% / 66% / 70% / 74% / 78% / 82% / 86% / 93%. Source: `records/skills/playerclass01/overguard1.dbr` → `retaliationStunChance`.

- [ ] **Shield Block Amount** — natural cap **185% at 12/12**; current hard cap **270% at 22/22**. Natural-cap pace: **+12% per rank**; weakest overcap pace: **+8% per rank**. Unapproved linear-floor candidate: **306%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: 193% / 201% / 209% / 217% / 225% / 233% / 241% / 249% / 257% / 270%. Candidate overcap: 197% / 209% / 221% / 233% / 245% / 257% / 269% / 281% / 293% / 306%. Source: `records/skills/playerclass01/overguard1.dbr` → `defensiveBlockAmountModifier`.

- [ ] **Stun Resistance** — natural cap **50% at 12/12**; current hard cap **60% at 22/22**. Natural-cap pace: **+2% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **70%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: 51% / 52% / 53% / 54% / 55% / 56% / 57% / 58% / 59% / 60%. Candidate overcap: 52% / 54% / 56% / 58% / 60% / 62% / 64% / 66% / 68% / 70%. Source: `records/skills/playerclass01/overguard1.dbr` → `defensiveStun`.

### Scars of Battle — 8/8 → 18/18

*Tooltip:* Through countless violent encounters, you have seen the worst that battle has to offer. The horrors of war no longer hinder your actions, and neither does a little spilled blood.

*Records:* `records/skills/playerclass01/passive4.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **AbsorptionModifier Resistance** — natural cap **25% at 8/8**; current hard cap **35% at 18/18**. Natural-cap pace: **+2.333% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **48.333%**. **Review reason:** Absorption and maximum resistance can cross strong defensive breakpoints and require separate balance approval. Recommended default: preserve vanilla until explicitly approved. Current overcap: 26% / 27% / 28% / 29% / 30% / 31% / 32% / 33% / 34% / 35%. Candidate overcap: 27.333% / 29.667% / 32% / 34.333% / 36.667% / 39% / 41.333% / 43.667% / 46% / 48.333%. Source: `records/skills/playerclass01/passive4.dbr` → `defensiveAbsorptionModifier`.

### Shield Training — 10/10 → 20/20

*Tooltip:* Extensive study of shield combat techniques provides improved handling and expert maneuverability; ensuring that your shield is never a hindrance. Requires a shield.

*Records:* `records/skills/playerclass01/passiveshield.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Veterancy — 10/10 → 20/20

*Tooltip:* Experience in some of the toughest theatres of the colonial wars has given you the ability to survive ordeals that would be fatal to others.

*Records:* `records/skills/playerclass01/passive2.dbr` [Base game]

#### Safe changes

- [ ] **Constitution** — natural cap **60% at 10/10**; current hard cap **80% at 20/20**. Natural-cap pace: **+4% per rank**; weakest overcap pace: **+2% per rank**. Proposed safe hard cap: **100%**. Current overcap: 62% / 64% / 66% / 68% / 70% / 72% / 74% / 76% / 78% / 80%. Candidate overcap: 64% / 68% / 72% / 76% / 80% / 84% / 88% / 92% / 96% / 100%. Source: `records/skills/playerclass01/passive2.dbr` → `characterConstitutionModifier`.

#### To-be-exception

- [ ] **Reduced Physique Requirement for Armor** — natural cap **18 at 10/10**; current hard cap **25 at 20/20**. Natural-cap pace: **+1 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **29**. **Review reason:** This is a specialized modifier with cap or encounter-specific consequences. Recommended default: preserve vanilla until explicitly approved. Current overcap: 19 / 19 / 20 / 20 / 21 / 21 / 22 / 22 / 23 / 25. Candidate overcap: 19 / 20 / 21 / 22 / 23 / 24 / 25 / 26 / 27 / 29. Source: `records/skills/playerclass01/passive2.dbr` → `characterArmorStrengthReqReduction`.

### War Cry — 12/12 → 22/22

*Tooltip:* A blood-chilling war cry weakens the resolve of your foes and disrupts their focus.

*Records:* `records/skills/playerclass01/warcry1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Reduced Target Damage** — natural cap **25% at 12/12**; current hard cap **35% at 22/22**. Natural-cap pace: **+2.333% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **48.333%**. **Review reason:** Resistance reduction compounds party and damage scaling and must be reviewed against stacking rules. Recommended default: preserve vanilla until explicitly approved. Current overcap: 26% / 27% / 28% / 29% / 30% / 31% / 32% / 33% / 34% / 35%. Candidate overcap: 27.333% / 29.667% / 32% / 34.333% / 36.667% / 39% / 41.333% / 43.667% / 46% / 48.333%. Source: `records/skills/playerclass01/warcry1.dbr` → `offensiveTotalDamageReductionPercentMin`.

- [ ] **Target Radius** — natural cap **16 m at 12/12**; current hard cap **18 m at 22/22**. Natural-cap pace: **+1 m per rank**; weakest overcap pace: **+0.2 m per rank**. Unapproved linear-floor candidate: **26 m**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 16.2 m / 16.4 m / 16.6 m / 16.8 m / 17 m / 17.2 m / 17.4 m / 17.6 m / 17.8 m / 18 m. Candidate overcap: 17 m / 18 m / 19 m / 20 m / 21 m / 22 m / 23 m / 24 m / 25 m / 26 m. Source: `records/skills/playerclass01/warcry1.dbr` → `skillTargetRadius`.

### Zolhan's Technique — 12/12 → 22/22

*Tooltip:* Named for the famed fighting master, this attack uses a low center of mass and powerful swing to imbalance your opponents. Can activate with all default weapon attacks. When used with a melee weapon, the attack strikes multiple nearby targets.

*Records:* `records/skills/playerclass01/weaponpool2.dbr` [Base game]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **185% at 12/12**; current hard cap **220% at 22/22**. Natural-cap pace: **+5% per rank**; weakest overcap pace: **+3% per rank**. Proposed safe hard cap: **235%**. Current overcap: 188% / 192% / 195% / 199% / 202% / 206% / 209% / 213% / 216% / 220%. Candidate overcap: 190% / 195% / 200% / 205% / 210% / 215% / 220% / 225% / 230% / 235%. Source: `records/skills/playerclass01/weaponpool2.dbr` → `weaponDamagePct`.

#### To-be-exception

- [ ] **Activation Weight** — natural cap **26% at 12/12**; current hard cap **30% at 22/22**. Natural-cap pace: **+0.333% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **32%**. **Review reason:** Chance and weighting fields are discrete probability mechanics and may have engine or balance caps. Recommended default: preserve vanilla until explicitly approved. Current overcap: 27% / 27% / 27% / 28% / 28% / 28% / 29% / 29% / 29% / 30%. Candidate overcap: 27% / 27.333% / 27.667% / 28.667% / 29% / 29.333% / 30.333% / 30.667% / 31% / 32%. Source: `records/skills/playerclass01/weaponpool2.dbr` → `skillChanceWeight`.

- [ ] **AttackSpeed Damage (minimum)** — natural cap **33% at 12/12**; current hard cap **40% at 22/22**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **43%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 34% / 35% / 35% / 36% / 37% / 37% / 38% / 39% / 39% / 40%. Candidate overcap: 34% / 35% / 36% / 37% / 38% / 39% / 40% / 41% / 42% / 43%. Source: `records/skills/playerclass01/weaponpool2.dbr` → `offensiveSlowAttackSpeedMin`.

- [ ] **AttackSpeedDuration Damage (minimum)** — natural cap **10 s at 12/12**; current hard cap **12 s at 22/22**. Natural-cap pace: **+0.667 s per rank**; weakest overcap pace: **0 s per rank**. Unapproved linear-floor candidate: **18 s**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 10 s / 10 s / 10 s / 10 s / 10 s / 10 s / 10 s / 10 s / 10 s / 12 s. Candidate overcap: 10.667 s / 11.333 s / 12 s / 12.667 s / 13.333 s / 14 s / 14.667 s / 15.333 s / 16 s / 18 s. Source: `records/skills/playerclass01/weaponpool2.dbr` → `offensiveSlowAttackSpeedDurationMin`.

- [ ] **Number of Targets** — natural cap **5 at 12/12**; current hard cap **7 at 22/22**. Natural-cap pace: **+0.333 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **9.667**. **Review reason:** Target and projectile counts or behavior are discrete mechanics that may change hit density and performance. Recommended default: preserve vanilla until explicitly approved. Current overcap: 5 / 5 / 5 / 6 / 6 / 6 / 6 / 6 / 7 / 7. Candidate overcap: 5.333 / 5.667 / 6 / 7 / 7.333 / 7.667 / 8 / 8.333 / 9.333 / 9.667. Source: `records/skills/playerclass01/weaponpool2.dbr` → `skillTargetNumber`.

## Demolitionist

### "The Big One" — 12/12 → 22/22

*Tooltip:* Loads the Mortar Trap with a devastating bomb known only as "The Big One", which will fire towards the beginning of the trap's barrage and then periodically loaded in subsequent shots. The resulting colossal explosion will leave your enemies shellshocked, if they survive at all.

*Records:* `records/skills/playerclass02/mortartrap3.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **TotalSpeed Damage (minimum)** — natural cap **50% at 12/12**; current hard cap **60% at 22/22**. Natural-cap pace: **+4% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **90%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 51% / 52% / 53% / 54% / 55% / 56% / 57% / 58% / 59% / 60%. Candidate overcap: 54% / 58% / 62% / 66% / 70% / 74% / 78% / 82% / 86% / 90%. Source: `records/skills/playerclass02/mortartrap3.dbr` → `offensiveSlowTotalSpeedMin`.

### Agonizing Flames — 12/12 → 22/22

*Tooltip:* Intensifies the fire and hellflame to degrees that will render your enemies to ashes.

*Records:* `records/skills/playerclass02/blackwater3.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Energy Cost** — natural cap **10 Energy at 12/12**; current hard cap **17 Energy at 22/22**. Natural-cap pace: **+0.667 Energy per rank**; weakest overcap pace: **0 Energy per rank**. Unapproved linear-floor candidate: **19 Energy**. **Review reason:** Energy cost is a cost curve, not a player benefit; lowering its overcap penalty would be a separate balance change. Recommended default: preserve vanilla until explicitly approved. Current overcap: 11 Energy / 12 Energy / 12 Energy / 13 Energy / 14 Energy / 14 Energy / 15 Energy / 16 Energy / 16 Energy / 17 Energy. Candidate overcap: 11 Energy / 12 Energy / 12.667 Energy / 13.667 Energy / 14.667 Energy / 15.333 Energy / 16.333 Energy / 17.333 Energy / 18 Energy / 19 Energy. Source: `records/skills/playerclass02/blackwater3.dbr` → `skillManaCost`.

- [ ] **Reduced Target Resistances** — natural cap **25% at 12/12**; current hard cap **35% at 22/22**. Natural-cap pace: **+2% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **45%**. **Review reason:** Resistance reduction compounds party and damage scaling and must be reviewed against stacking rules. Recommended default: preserve vanilla until explicitly approved. Current overcap: 26% / 27% / 28% / 29% / 30% / 31% / 32% / 33% / 34% / 35%. Candidate overcap: 27% / 29% / 31% / 33% / 35% / 37% / 39% / 41% / 43% / 45%. Source: `records/skills/playerclass02/blackwater3.dbr` → `offensiveTotalResistanceReductionAbsoluteMin`.

### Blackwater Cocktail — 12/12 → 22/22

*Tooltip:* Blackwater Cocktails were concocted when more conventional explosives ran low. These improvised fire bombs leave a self-fueled blaze upon impact and are particularly effective against tightly packed enemies.

*Records:* `records/skills/playerclass02/blackwater1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Explosion Radius** — natural cap **5.8 m at 12/12**; current hard cap **6.4 m at 22/22**. Natural-cap pace: **+0.333 m per rank**; weakest overcap pace: **0 m per rank**. Unapproved linear-floor candidate: **9.133 m**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 5.9 m / 5.9 m / 6 m / 6 m / 6.1 m / 6.1 m / 6.2 m / 6.2 m / 6.3 m / 6.4 m. Candidate overcap: 6.133 m / 6.467 m / 6.8 m / 7.133 m / 7.467 m / 7.8 m / 8.133 m / 8.467 m / 8.8 m / 9.133 m. Source: `records/skills/playerclass02/blackwater1.dbr` → `projectileExplosionRadius`.

- [ ] **Reduced Target Offensive Ability** — natural cap **144 at 12/12**; current hard cap **250 at 22/22**. Natural-cap pace: **+12 per rank**; weakest overcap pace: **+10 per rank**. Unapproved linear-floor candidate: **268**. **Review reason:** Reduced Offensive or Defensive Ability compounds hit and critical-hit thresholds and needs encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 154 / 164 / 174 / 184 / 194 / 204 / 214 / 224 / 234 / 250. Candidate overcap: 156 / 168 / 180 / 192 / 204 / 216 / 228 / 240 / 252 / 268. Source: `records/skills/playerclass02/blackwater1.dbr` → `offensiveSlowOffensiveAbilityMin`.

### Blast Shield — 12/12 → 22/22

*Tooltip:* A combination of military gear and pyromancy creates a ward capable of fortifying defenses while deflecting a fixed amount of incoming damage. Attacking enemies will suffer the fiery blowback from the shield.

*Records:* `records/skills/playerclass02/passive1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **AllMaxResist Resistance** — natural cap **5% at 12/12**; current hard cap **8% at 22/22**. Natural-cap pace: **+0.333% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **10.333%**. **Review reason:** Absorption and maximum resistance can cross strong defensive breakpoints and require separate balance approval. Recommended default: preserve vanilla until explicitly approved. Current overcap: 5% / 6% / 6% / 6% / 6% / 7% / 7% / 7% / 7% / 8%. Candidate overcap: 5.333% / 6.333% / 6.667% / 7% / 7.333% / 8.333% / 8.667% / 9% / 9.333% / 10.333%. Source: `records/skills/playerclass02/passive1.dbr` → `defensiveAllMaxResist`.

- [ ] **Chance to Deflect Projectiles** — natural cap **55 at 12/12**; current hard cap **80 at 22/22**. Natural-cap pace: **+4.333 per rank**; weakest overcap pace: **+2 per rank**. Unapproved linear-floor candidate: **98.333**. **Review reason:** Target and projectile counts or behavior are discrete mechanics that may change hit density and performance. Recommended default: preserve vanilla until explicitly approved. Current overcap: 57 / 59 / 61 / 63 / 65 / 67 / 69 / 72 / 76 / 80. Candidate overcap: 59.333 / 63.667 / 68 / 72.333 / 76.667 / 81 / 85.333 / 89.667 / 94 / 98.333. Source: `records/skills/playerclass02/passive1.dbr` → `characterDeflectProjectile`.

- [ ] **ElementalResistance Resistance** — natural cap **75% at 12/12**; current hard cap **125% at 22/22**. Natural-cap pace: **+6.333% per rank**; weakest overcap pace: **+5% per rank**. Unapproved linear-floor candidate: **138.333%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: 80% / 85% / 90% / 95% / 100% / 105% / 110% / 115% / 120% / 125%. Candidate overcap: 81.333% / 87.667% / 94% / 100.333% / 106.667% / 113% / 119.333% / 125.667% / 132% / 138.333%. Source: `records/skills/playerclass02/passive1.dbr` → `defensiveElementalResistance`.

- [ ] **Pierce Resistance** — natural cap **75% at 12/12**; current hard cap **125% at 22/22**. Natural-cap pace: **+6.333% per rank**; weakest overcap pace: **+5% per rank**. Unapproved linear-floor candidate: **138.333%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: 80% / 85% / 90% / 95% / 100% / 105% / 110% / 115% / 120% / 125%. Candidate overcap: 81.333% / 87.667% / 94% / 100.333% / 106.667% / 113% / 119.333% / 125.667% / 132% / 138.333%. Source: `records/skills/playerclass02/passive1.dbr` → `defensivePierce`.

### Brimstone — 12/12 → 22/22

*Tooltip:* Pyromancy with a hint of the occult imbues Fire Strike with the chaotic power of brimstone. Ranged attacks will also splinter into molten fragments.

*Records:* `records/skills/playerclass02/flamestrike4.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Energy Cost** — natural cap **8 Energy at 12/12**; current hard cap **10 Energy at 22/22**. Natural-cap pace: **+0.667 Energy per rank**; weakest overcap pace: **0 Energy per rank**. Unapproved linear-floor candidate: **15.333 Energy**. **Review reason:** Energy cost is a cost curve, not a player benefit; lowering its overcap penalty would be a separate balance change. Recommended default: preserve vanilla until explicitly approved. Current overcap: 8 Energy / 8 Energy / 8 Energy / 9 Energy / 9 Energy / 9 Energy / 9 Energy / 10 Energy / 10 Energy / 10 Energy. Candidate overcap: 8.667 Energy / 9.333 Energy / 10 Energy / 11 Energy / 11.667 Energy / 12.333 Energy / 13 Energy / 14 Energy / 14.667 Energy / 15.333 Energy. Source: `records/skills/playerclass02/flamestrike4.dbr` → `skillManaCost`.

- [ ] **Fragment Count (maximum)** — natural cap **5 at 12/12**; current hard cap **6 at 22/22**. Natural-cap pace: **+0.333 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **9**. **Review reason:** Target and projectile counts or behavior are discrete mechanics that may change hit density and performance. Recommended default: preserve vanilla until explicitly approved. Current overcap: 5 / 5 / 5 / 5 / 5 / 6 / 6 / 6 / 6 / 6. Candidate overcap: 5.333 / 5.667 / 6 / 6.333 / 6.667 / 7.667 / 8 / 8.333 / 8.667 / 9. Source: `records/skills/playerclass02/flamestrike4.dbr` → `projectileFragmentsLaunchNumberMax`.

- [ ] **Fragment Count (minimum)** — natural cap **4 at 12/12**; current hard cap **5 at 22/22**. Natural-cap pace: **+0.333 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **8**. **Review reason:** Target and projectile counts or behavior are discrete mechanics that may change hit density and performance. Recommended default: preserve vanilla until explicitly approved. Current overcap: 4 / 4 / 4 / 4 / 4 / 4 / 5 / 5 / 5 / 5. Candidate overcap: 4.333 / 4.667 / 5 / 5.333 / 5.667 / 6 / 7 / 7.333 / 7.667 / 8. Source: `records/skills/playerclass02/flamestrike4.dbr` → `projectileFragmentsLaunchNumberMin`.

### Canister Bomb — 12/12 → 22/22

*Tooltip:* An explosive packed with more explosives, this devilish contraption is capable of laying waste to an entire field of enemies.

*Records:* `records/skills/playerclass02/canisterbomb1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Fragment Count (maximum)** — natural cap **10 at 12/12**; current hard cap **11 at 22/22**. Natural-cap pace: **+0.333 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **14**. **Review reason:** Target and projectile counts or behavior are discrete mechanics that may change hit density and performance. Recommended default: preserve vanilla until explicitly approved. Current overcap: 10 / 10 / 10 / 10 / 10 / 11 / 11 / 11 / 11 / 11. Candidate overcap: 10.333 / 10.667 / 11 / 11.333 / 11.667 / 12.667 / 13 / 13.333 / 13.667 / 14. Source: `records/skills/playerclass02/canisterbomb1.dbr` → `projectileFragmentsLaunchNumberMax`.

- [ ] **Fragment Count (minimum)** — natural cap **8 at 12/12**; current hard cap **9 at 22/22**. Natural-cap pace: **+0.333 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **12**. **Review reason:** Target and projectile counts or behavior are discrete mechanics that may change hit density and performance. Recommended default: preserve vanilla until explicitly approved. Current overcap: 8 / 8 / 8 / 8 / 8 / 9 / 9 / 9 / 9 / 9. Candidate overcap: 8.333 / 8.667 / 9 / 9.333 / 9.667 / 10.667 / 11 / 11.333 / 11.667 / 12. Source: `records/skills/playerclass02/canisterbomb1.dbr` → `projectileFragmentsLaunchNumberMin`.

### Demon Fire — 12/12 → 22/22

*Tooltip:* Sorcerous enchantment imbues the flames with chaotic power that melts enemy flesh.

*Records:* `records/skills/playerclass02/blackwater2.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Energy Cost** — natural cap **10 Energy at 12/12**; current hard cap **17 Energy at 22/22**. Natural-cap pace: **+0.667 Energy per rank**; weakest overcap pace: **0 Energy per rank**. Unapproved linear-floor candidate: **19 Energy**. **Review reason:** Energy cost is a cost curve, not a player benefit; lowering its overcap penalty would be a separate balance change. Recommended default: preserve vanilla until explicitly approved. Current overcap: 11 Energy / 12 Energy / 12 Energy / 13 Energy / 14 Energy / 14 Energy / 15 Energy / 16 Energy / 16 Energy / 17 Energy. Candidate overcap: 11 Energy / 12 Energy / 12.667 Energy / 13.667 Energy / 14.667 Energy / 15.333 Energy / 16.333 Energy / 17.333 Energy / 18 Energy / 19 Energy. Source: `records/skills/playerclass02/blackwater2.dbr` → `skillManaCost`.

### Explosive Strike — 12/12 → 22/22

*Tooltip:* Increases the potency of Fire Strike with an explosive charge that inflicts additional harm upon nearby foes.

*Records:* `records/skills/playerclass02/flamestrike2.dbr` [Base game]

#### Safe changes

- [ ] **Burn Damage (minimum)** — natural cap **68 at 12/12**; current hard cap **151 at 22/22**. Natural-cap pace: **+6.333 per rank**; weakest overcap pace: **+6 per rank**. Proposed safe hard cap: **151.667**. Current overcap: 74 / 81 / 88 / 94 / 102 / 110 / 118 / 127 / 136 / 151. Candidate overcap: 74.333 / 81.333 / 88.333 / 94.667 / 102.667 / 110.667 / 118.667 / 127.667 / 136.667 / 151.667. Source: `records/skills/playerclass02/flamestrike2.dbr` → `offensiveSlowFireMin`.

- [ ] **Weapon Damage** — natural cap **30% at 12/12**; current hard cap **40% at 22/22**. Natural-cap pace: **+2.333% per rank**; weakest overcap pace: **+1% per rank**. Proposed safe hard cap: **53.333%**. Current overcap: 31% / 32% / 33% / 34% / 35% / 36% / 37% / 38% / 39% / 40%. Candidate overcap: 32.333% / 34.667% / 37% / 39.333% / 41.667% / 44% / 46.333% / 48.667% / 51% / 53.333%. Source: `records/skills/playerclass02/flamestrike2.dbr` → `weaponDamagePct`.

#### To-be-exception

- [ ] **Target Radius** — natural cap **3.8 m at 12/12**; current hard cap **4.3 m at 22/22**. Natural-cap pace: **+0.1 m per rank**; weakest overcap pace: **0 m per rank**. Unapproved linear-floor candidate: **4.8 m**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 3.8 m / 3.9 m / 3.9 m / 4 m / 4 m / 4.1 m / 4.1 m / 4.2 m / 4.2 m / 4.3 m. Candidate overcap: 3.9 m / 4 m / 4.1 m / 4.2 m / 4.3 m / 4.4 m / 4.5 m / 4.6 m / 4.7 m / 4.8 m. Source: `records/skills/playerclass02/flamestrike2.dbr` → `skillTargetRadius`.

### Fire Mortar — 16/16 → 26/26

*Tooltip:* Launches an explosive mortar at enemies.

*Records:* `records/skills/playerclass02/pets/mortartrap_firemortar_chaos1.dbr` [Ashes of Malmouth]; `records/skills/playerclass02/pets/mortartrap_firemortar_lightning1.dbr` [Ashes of Malmouth]; `records/skills/playerclass02/pets/mortartrap_firemortar1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Fire Strike — 12/12 → 22/22

*Tooltip:* A deadly alchemical technique causes martial attacks to combust the air around the enemy. When used as your default weapon attack, Fire Strike inflicts additional damage.

*Records:* `records/skills/playerclass02/flamestrike1.dbr` [Base game]

#### Safe changes

- [ ] **Physical Damage** — natural cap **56% at 12/12**; current hard cap **124% at 22/22**. Natural-cap pace: **+5.333% per rank**; weakest overcap pace: **+5% per rank**. Proposed safe hard cap: **125%**. Current overcap: 61% / 66% / 71% / 77% / 83% / 89% / 95% / 103% / 112% / 124%. Candidate overcap: 61.333% / 66.667% / 72% / 78% / 84% / 90% / 96% / 104% / 113% / 125%. Source: `records/skills/playerclass02/flamestrike1.dbr` → `offensivePhysicalModifier`.

- [ ] **Weapon Damage** — natural cap **145% at 12/12**; current hard cap **170% at 22/22**. Natural-cap pace: **+4% per rank**; weakest overcap pace: **+2% per rank**. Proposed safe hard cap: **185%**. Current overcap: 147% / 150% / 152% / 155% / 157% / 160% / 162% / 165% / 167% / 170%. Candidate overcap: 149% / 153% / 157% / 161% / 165% / 169% / 173% / 177% / 181% / 185%. Source: `records/skills/playerclass02/flamestrike1.dbr` → `weaponDamagePct`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Flame Jet — 16/16 → 26/26

*Tooltip:* Emits a deadly jet of white-hot flame to incinerate enemies that pass over it.

*Records:* `records/skills/playerclass02/pets/thermitemine_skill_flare1_buff.dbr` [Base game]; `records/skills/playerclass02/pets/thermitemineaether_skill_flare1_buff.dbr` [Ashes of Malmouth]; `records/skills/playerclass02/pets/thermiteminechaos_skill_flare1_buff.dbr` [Fangs of Asterkarn]; `records/skills/playerclass02/pets/thermiteminecold_skill_flare1_buff.dbr` [Ashes of Malmouth]; `records/skills/playerclass02/pets/thermiteminelightning_skill_flare1_buff.dbr` [Fangs of Asterkarn]; `records/skills/playerclass02/pets/thermiteminevitality_skill_flare1_buff.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Flame Touched — 12/12 → 22/22

*Tooltip:* Crossing over, as many Demolitionists eventually do, to dabble in the sorcerous arts of pyromancy unlocks the ability to imbue yourself and nearby allies with a living flame that augments attacks and retaliates at enemies.

*Records:* `records/skills/playerclass02/blastshield1_buff.dbr` [Base game]

#### Safe changes

- [ ] **Offensive Ability** — natural cap **133 at 12/12**; current hard cap **220 at 22/22**. Natural-cap pace: **+11 per rank**; weakest overcap pace: **+8 per rank**. Proposed safe hard cap: **247**. Current overcap: 141 / 149 / 157 / 165 / 173 / 181 / 189 / 197 / 205 / 220. Candidate overcap: 144 / 155 / 166 / 177 / 188 / 199 / 210 / 221 / 232 / 247. Source: `records/skills/playerclass02/blastshield1_buff.dbr` → `characterOffensiveAbility`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Flashbang — 12/12 → 22/22

*Tooltip:* A blinding light temporarily confuses enemies and disrupts their ability to defend themselves.

*Records:* `records/skills/playerclass02/flashbang1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Energy Cost** — natural cap **78 Energy at 12/12**; current hard cap **138 Energy at 22/22**. Natural-cap pace: **+6.333 Energy per rank**; weakest overcap pace: **+6 Energy per rank**. Unapproved linear-floor candidate: **141.333 Energy**. **Review reason:** Energy cost is a cost curve, not a player benefit; lowering its overcap penalty would be a separate balance change. Recommended default: preserve vanilla until explicitly approved. Current overcap: 84 Energy / 90 Energy / 96 Energy / 102 Energy / 108 Energy / 114 Energy / 120 Energy / 126 Energy / 132 Energy / 138 Energy. Candidate overcap: 84.333 Energy / 90.667 Energy / 97 Energy / 103.333 Energy / 109.667 Energy / 116 Energy / 122.333 Energy / 128.667 Energy / 135 Energy / 141.333 Energy. Source: `records/skills/playerclass02/flashbang1.dbr` → `skillManaCost`.

- [ ] **Explosion Radius** — natural cap **10 m at 12/12**; current hard cap **12 m at 22/22**. Natural-cap pace: **+0.4 m per rank**; weakest overcap pace: **+0.2 m per rank**. Unapproved linear-floor candidate: **14 m**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 10.2 m / 10.4 m / 10.6 m / 10.8 m / 11 m / 11.2 m / 11.4 m / 11.6 m / 11.8 m / 12 m. Candidate overcap: 10.4 m / 10.8 m / 11.2 m / 11.6 m / 12 m / 12.4 m / 12.8 m / 13.2 m / 13.6 m / 14 m. Source: `records/skills/playerclass02/flashbang1.dbr` → `projectileExplosionRadius`.

- [ ] **Reduced Target Defensive Ability** — natural cap **250 at 12/12**; current hard cap **350 at 22/22**. Natural-cap pace: **+20 per rank**; weakest overcap pace: **+10 per rank**. Unapproved linear-floor candidate: **450**. **Review reason:** Reduced Offensive or Defensive Ability compounds hit and critical-hit thresholds and needs encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 260 / 270 / 280 / 290 / 300 / 310 / 320 / 330 / 340 / 350. Candidate overcap: 270 / 290 / 310 / 330 / 350 / 370 / 390 / 410 / 430 / 450. Source: `records/skills/playerclass02/flashbang1.dbr` → `offensiveSlowDefensiveAbilityMin`.

### Grenado — 16/16 → 26/26

*Tooltip:* The grenado is a recent invention that has quickly grown in use on the battlefield where it has evened the playing field between sorcerous manipulation and conventional weaponry.

*Records:* `records/skills/playerclass02/grenado1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Knockdown Duration (maximum)** — natural cap **4.5 at 16/16**; current hard cap **6 at 26/26**. Natural-cap pace: **+0.167 per rank**; weakest overcap pace: **+0.1 per rank**. Unapproved linear-floor candidate: **6.333**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 4.6 / 4.8 / 4.9 / 5.1 / 5.2 / 5.4 / 5.5 / 5.7 / 5.8 / 6. Candidate overcap: 4.667 / 4.867 / 5.033 / 5.233 / 5.4 / 5.6 / 5.767 / 5.967 / 6.133 / 6.333. Source: `records/skills/playerclass02/grenado1.dbr` → `offensiveKnockdownMax`.

### High Impact — 12/12 → 22/22

*Tooltip:* An improved design on the standard Grenado causes it to explode with intense heat and dangerously sharp shrapnel.

*Records:* `records/skills/playerclass02/grenado2.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Energy Cost** — natural cap **20 Energy at 12/12**; current hard cap **35 Energy at 22/22**. Natural-cap pace: **+1.667 Energy per rank**; weakest overcap pace: **+1 Energy per rank**. Unapproved linear-floor candidate: **38.333 Energy**. **Review reason:** Energy cost is a cost curve, not a player benefit; lowering its overcap penalty would be a separate balance change. Recommended default: preserve vanilla until explicitly approved. Current overcap: 21 Energy / 23 Energy / 24 Energy / 26 Energy / 27 Energy / 29 Energy / 30 Energy / 32 Energy / 33 Energy / 35 Energy. Candidate overcap: 21.667 Energy / 23.667 Energy / 25.333 Energy / 27.333 Energy / 29 Energy / 31 Energy / 32.667 Energy / 34.667 Energy / 36.333 Energy / 38.333 Energy. Source: `records/skills/playerclass02/grenado2.dbr` → `skillManaCost`.

### Mortar Trap — 16/16 → 26/26

*Tooltip:* Places a mortar that will continuously lob explosives into the air until depleted. The trap scales with player damage bonuses.

*Records:* `records/skills/playerclass02/mortartrap1.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Shattering Blast — 12/12 → 22/22

*Tooltip:* The intense blastwave created by the Grenado explosion ripples through your foes, inflicting grievous internal harm.

*Records:* `records/skills/playerclass02/grenado3.dbr` [Forgotten Gods]

#### Safe changes

- [ ] **CritDamage Damage** — natural cap **70% at 12/12**; current hard cap **100% at 22/22**. Natural-cap pace: **+5% per rank**; weakest overcap pace: **+3% per rank**. Proposed safe hard cap: **120%**. Current overcap: 73% / 76% / 79% / 82% / 85% / 88% / 91% / 94% / 97% / 100%. Candidate overcap: 75% / 80% / 85% / 90% / 95% / 100% / 105% / 110% / 115% / 120%. Source: `records/skills/playerclass02/grenado3.dbr` → `offensiveCritDamageModifier`.

- [ ] **Retaliation Damage Added to Attack** — natural cap **40% at 12/12**; current hard cap **50% at 22/22**. Natural-cap pace: **+1.667% per rank**; weakest overcap pace: **+1% per rank**. Proposed safe hard cap: **56.667%**. Current overcap: 41% / 42% / 43% / 44% / 45% / 46% / 47% / 48% / 49% / 50%. Candidate overcap: 41.667% / 43.333% / 45% / 46.667% / 48.333% / 50% / 51.667% / 53.333% / 55% / 56.667%. Source: `records/skills/playerclass02/grenado3.dbr` → `retaliationDamagePct`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Stun Jacks — 16/16 → 26/26

*Tooltip:* Throw out an array of tiny, electrically charged jacks that will temporarily stop enemies in their tracks.

*Records:* `records/skills/playerclass02/stunjacks1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Energy Cost** — natural cap **56 Energy at 16/16**; current hard cap **78 Energy at 26/26**. Natural-cap pace: **+3 Energy per rank**; weakest overcap pace: **+2 Energy per rank**. Unapproved linear-floor candidate: **86 Energy**. **Review reason:** Energy cost is a cost curve, not a player benefit; lowering its overcap penalty would be a separate balance change. Recommended default: preserve vanilla until explicitly approved. Current overcap: 58 Energy / 60 Energy / 62 Energy / 64 Energy / 66 Energy / 68 Energy / 70 Energy / 72 Energy / 75 Energy / 78 Energy. Candidate overcap: 59 Energy / 62 Energy / 65 Energy / 68 Energy / 71 Energy / 74 Energy / 77 Energy / 80 Energy / 83 Energy / 86 Energy. Source: `records/skills/playerclass02/stunjacks1.dbr` → `skillManaCost`.

- [ ] **Stun Duration (maximum)** — natural cap **4.5 at 16/16**; current hard cap **5.5 at 26/26**. Natural-cap pace: **+0.133 per rank**; weakest overcap pace: **+0.1 per rank**. Unapproved linear-floor candidate: **5.833**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 4.6 / 4.7 / 4.8 / 4.9 / 5 / 5.1 / 5.2 / 5.3 / 5.4 / 5.5. Candidate overcap: 4.633 / 4.767 / 4.9 / 5.033 / 5.167 / 5.3 / 5.433 / 5.567 / 5.7 / 5.833. Source: `records/skills/playerclass02/stunjacks1.dbr` → `offensiveStunMax`.

- [ ] **Stun Duration (minimum)** — natural cap **3.5 at 16/16**; current hard cap **4.5 at 26/26**. Natural-cap pace: **+0.133 per rank**; weakest overcap pace: **+0.1 per rank**. Unapproved linear-floor candidate: **4.833**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 3.6 / 3.7 / 3.8 / 3.9 / 4 / 4.1 / 4.2 / 4.3 / 4.4 / 4.5. Candidate overcap: 3.633 / 3.767 / 3.9 / 4.033 / 4.167 / 4.3 / 4.433 / 4.567 / 4.7 / 4.833. Source: `records/skills/playerclass02/stunjacks1.dbr` → `offensiveStunMin`.

### Thermite Mine — 16/16 → 26/26

*Tooltip:* Drops a trio of small but deadly pyrotechnic charges that will sear enemies with intense jets of flame. The mines scale with player damage bonuses.

*Records:* `records/skills/playerclass02/thermitemines1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Energy Cost** — natural cap **82 Energy at 16/16**; current hard cap **116 Energy at 26/26**. Natural-cap pace: **+3.333 Energy per rank**; weakest overcap pace: **+3 Energy per rank**. Unapproved linear-floor candidate: **118 Energy**. **Review reason:** Energy cost is a cost curve, not a player benefit; lowering its overcap penalty would be a separate balance change. Recommended default: preserve vanilla until explicitly approved. Current overcap: 85 Energy / 89 Energy / 92 Energy / 95 Energy / 99 Energy / 102 Energy / 106 Energy / 109 Energy / 112 Energy / 116 Energy. Candidate overcap: 85.333 Energy / 89.333 Energy / 92.667 Energy / 96 Energy / 100 Energy / 103.333 Energy / 107.333 Energy / 110.667 Energy / 114 Energy / 118 Energy. Source: `records/skills/playerclass02/thermitemines1.dbr` → `skillManaCost`.

### Ulzuin's Wrath — 12/12 → 22/22

*Tooltip:* As the flame of Ulzuin scorches adjacent enemies, bolts of sorcerous flame and electricity will arc out to strike more distant foes and sap them of their strength.

*Records:* `records/skills/playerclass02/vindictiveflame2.dbr` [Forgotten Gods]

#### Safe changes

- [ ] **Retaliation Damage Added to Attack** — natural cap **14% at 12/12**; current hard cap **20% at 22/22**. Natural-cap pace: **+0.667% per rank**; weakest overcap pace: **0% per rank**. Proposed safe hard cap: **22.667%**. Current overcap: 15% / 15% / 16% / 16% / 17% / 17% / 18% / 18% / 19% / 20%. Candidate overcap: 15% / 15.667% / 16.667% / 17.333% / 18.333% / 19% / 20% / 20.667% / 21.667% / 22.667%. Source: `records/skills/playerclass02/vindictiveflame2.dbr` → `retaliationDamagePct`.

#### To-be-exception

- [ ] **Attack Damage Converted to Health** — natural cap **20% at 12/12**; current hard cap **25% at 22/22**. Natural-cap pace: **+0.667% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **29%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 20% / 20% / 21% / 21% / 21% / 22% / 22% / 22% / 23% / 25%. Candidate overcap: 20.667% / 21.333% / 22.333% / 23% / 23.667% / 24.667% / 25.333% / 26% / 27% / 29%. Source: `records/skills/playerclass02/vindictiveflame2.dbr` → `offensiveLifeLeechMin`.

- [ ] **Knockdown Chance** — natural cap **100% at 12/12**; current hard cap **100% at 22/22**. Natural-cap pace: **+6.333% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **163.333%**. **Review reason:** Chance and weighting fields are discrete probability mechanics and may have engine or balance caps. Recommended default: preserve vanilla until explicitly approved. Current overcap: 100% / 100% / 100% / 100% / 100% / 100% / 100% / 100% / 100% / 100%. Candidate overcap: 106.333% / 112.667% / 119% / 125.333% / 131.667% / 138% / 144.333% / 150.667% / 157% / 163.333%. Source: `records/skills/playerclass02/vindictiveflame2.dbr` → `offensiveKnockdownChance`.

- [ ] **Knockdown Duration (minimum)** — natural cap **2.5 at 12/12**; current hard cap **3 at 22/22**. Natural-cap pace: **+0.1 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **3.5**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 2.5 / 2.6 / 2.6 / 2.7 / 2.7 / 2.8 / 2.8 / 2.9 / 2.9 / 3. Candidate overcap: 2.6 / 2.7 / 2.8 / 2.9 / 3 / 3.1 / 3.2 / 3.3 / 3.4 / 3.5. Source: `records/skills/playerclass02/vindictiveflame2.dbr` → `offensiveKnockdownMin`.

- [ ] **Maximum Sparks** — natural cap **7 at 12/12**; current hard cap **9 at 22/22**. Natural-cap pace: **+0.333 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **11.667**. **Review reason:** Target and projectile counts or behavior are discrete mechanics that may change hit density and performance. Recommended default: preserve vanilla until explicitly approved. Current overcap: 7 / 7 / 7 / 7 / 8 / 8 / 8 / 8 / 8 / 9. Candidate overcap: 7.333 / 7.667 / 8 / 8.333 / 9.333 / 9.667 / 10 / 10.333 / 10.667 / 11.667. Source: `records/skills/playerclass02/vindictiveflame2.dbr` → `sparkMaxNumber`.

### Vindictive Flame — 16/16 → 26/26

*Tooltip:* Ulzuin's eternal flame once brought life and healing to the world, but betrayal and torment twisted this gift into a weapon of vengeance. Those sworn to Ulzuin receive vigor in battle and fiery retaliation upon their foes.

*Records:* `records/skills/playerclass02/vindictiveflame1.dbr` [Base game]

#### Safe changes

- [ ] **Fire Damage (minimum)** — natural cap **120 at 16/16**; current hard cap **212 at 26/26**. Natural-cap pace: **+7.333 per rank**; weakest overcap pace: **+7 per rank**. Proposed safe hard cap: **212.667**. Current overcap: 127 / 134 / 142 / 150 / 159 / 168 / 176 / 186 / 197 / 212. Candidate overcap: 127.333 / 134.667 / 142.667 / 150.667 / 159.667 / 168.667 / 176.667 / 186.667 / 197.667 / 212.667. Source: `records/skills/playerclass02/vindictiveflame1.dbr` → `offensiveFireMin`.

- [ ] **Physical Damage (minimum)** — natural cap **65 at 16/16**; current hard cap **116 at 26/26**. Natural-cap pace: **+6 per rank**; weakest overcap pace: **+3 per rank**. Proposed safe hard cap: **129**. Current overcap: 68 / 71 / 75 / 80 / 84 / 90 / 94 / 100 / 107 / 116. Candidate overcap: 71 / 77 / 83 / 89 / 95 / 101 / 107 / 113 / 120 / 129. Source: `records/skills/playerclass02/vindictiveflame1.dbr` → `offensivePhysicalMin`.

#### To-be-exception

- [ ] **Skill Recharge** — natural cap **1.5 s at 16/16**; current hard cap **1 s at 26/26**. Natural-cap pace: **-0.067 s per rank**; weakest overcap pace: **0 s per rank**. Unapproved linear-floor candidate: **0.667 s**. **Review reason:** Recharge changes alter uptime and rotation breakpoints rather than only restoring a stat growth rate. Recommended default: preserve vanilla until explicitly approved. Current overcap: 1.5 s / 1.4 s / 1.4 s / 1.3 s / 1.3 s / 1.2 s / 1.2 s / 1.1 s / 1.1 s / 1 s. Candidate overcap: 1.433 s / 1.333 s / 1.267 s / 1.167 s / 1.1 s / 1 s / 0.933 s / 0.833 s / 0.767 s / 0.667 s. Source: `records/skills/playerclass02/vindictiveflame1.dbr` → `skillCooldownTime`.

- [ ] **Total Speed** — natural cap **16% at 16/16**; current hard cap **22% at 26/26**. Natural-cap pace: **+0.667% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **25.333%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 16% / 17% / 17% / 18% / 18% / 19% / 19% / 20% / 20% / 22%. Candidate overcap: 16.667% / 17.667% / 18.333% / 19.333% / 20% / 21% / 21.667% / 22.667% / 23.333% / 25.333%. Source: `records/skills/playerclass02/vindictiveflame1.dbr` → `characterTotalSpeedModifier`.

## Occultist

### Blazing Death — 16/16 → 26/26

*Tooltip:* The Hellhound's flesh erupts as it returns to its natural realm, incinerating nearby enemies.

*Records:* `records/skills/playerclass03/pets/petskill_hellhound_detonate.dbr` [Base game]; `records/skills/playerclass03/pets/petskill_hellhound_detonateb.dbr` [Ashes of Malmouth]; `records/skills/playerclass03/pets/petskill_hellhound_detonatec.dbr` [Fangs of Asterkarn]; `records/skills/playerclass03/pets/petskill_hellhound_detonated.dbr` [Fangs of Asterkarn]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Blood of Dreeg — 16/16 → 26/26

*Tooltip:* A binding with the great guardian confers some of Dreeg's regenerative ability, while wounds inflicted by enemies will spray caustic blood as though inflicted upon Dreeg himself. This effect is also applied to nearby allies.

*Records:* `records/skills/playerclass03/bloodofdreeg1_buff.dbr` [Base game]

#### Safe changes

- [ ] **Offensive Ability** — natural cap **138 at 16/16**; current hard cap **210 at 26/26**. Natural-cap pace: **+9 per rank**; weakest overcap pace: **+6 per rank**. Proposed safe hard cap: **237**. Current overcap: 144 / 150 / 156 / 162 / 168 / 174 / 180 / 186 / 192 / 210. Candidate overcap: 147 / 156 / 165 / 174 / 183 / 192 / 201 / 210 / 219 / 237. Source: `records/skills/playerclass03/bloodofdreeg1_buff.dbr` → `characterOffensiveAbility`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Bloody Pox — 12/12 → 22/22

*Tooltip:* Shunned even by many Occultists for the prolonged suffering it inflicts, this abhorrent curse calls down a virulent plague to spread amongst foes, inexorably sapping their life-force and causing them to bleed from every orifice.

*Records:* `records/skills/playerclass03/pox1_buff.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Reduction to Enemy Health (maximum)** — natural cap **13% at 12/12**; current hard cap **18% at 22/22**. Natural-cap pace: **+0.667% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **21.333%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 13% / 14% / 14% / 15% / 15% / 16% / 16% / 17% / 17% / 18%. Candidate overcap: 13.667% / 14.667% / 15.333% / 16.333% / 17% / 18% / 18.667% / 19.667% / 20.333% / 21.333%. Source: `records/skills/playerclass03/pox1_buff.dbr` → `offensivePercentCurrentLifeMax`.

- [ ] **Reduction to Enemy Health (minimum)** — natural cap **9% at 12/12**; current hard cap **14% at 22/22**. Natural-cap pace: **+0.667% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **17.333%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 9% / 10% / 10% / 11% / 11% / 12% / 12% / 13% / 13% / 14%. Candidate overcap: 9.667% / 10.667% / 11.333% / 12.333% / 13% / 14% / 14.667% / 15.667% / 16.333% / 17.333%. Source: `records/skills/playerclass03/pox1_buff.dbr` → `offensivePercentCurrentLifeMin`.

### Bonds of Bysmiel — 12/12 → 22/22

*Tooltip:* Strengthens the bonds of control with your minions causing them to fight with greater vigor and determination.

*Records:* `records/skills/playerclass03/bondsofbysmiel1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Curse of Frailty — 10/10 → 20/20

*Tooltip:* A cruel word of power that robs enemies of their fortitude, making them slow and fragile.

*Records:* `records/skills/playerclass03/curse1_buff.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Bleeding Resistance** — natural cap **-45% at 10/10**; current hard cap **-55% at 20/20**. Natural-cap pace: **-4% per rank**; weakest overcap pace: **-1% per rank**. Unapproved linear-floor candidate: **-85%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: -46% / -47% / -48% / -49% / -50% / -51% / -52% / -53% / -54% / -55%. Candidate overcap: -49% / -53% / -57% / -61% / -65% / -69% / -73% / -77% / -81% / -85%. Source: `records/skills/playerclass03/curse1_buff.dbr` → `defensiveBleeding`.

- [ ] **Duration** — natural cap **12 s at 10/10**; current hard cap **15 s at 20/20**. Natural-cap pace: **+0.8 s per rank**; weakest overcap pace: **+0.3 s per rank**. Unapproved linear-floor candidate: **20 s**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 12.3 s / 12.6 s / 12.9 s / 13.2 s / 13.5 s / 13.8 s / 14.1 s / 14.4 s / 14.7 s / 15 s. Candidate overcap: 12.8 s / 13.6 s / 14.4 s / 15.2 s / 16 s / 16.8 s / 17.6 s / 18.4 s / 19.2 s / 20 s. Source: `records/skills/playerclass03/curse1_buff.dbr` → `skillActiveDuration`.

- [ ] **Movement Speed** — natural cap **-50% at 10/10**; current hard cap **-50% at 20/20**. Natural-cap pace: **-2% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **-70%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: -50% / -50% / -50% / -50% / -50% / -50% / -50% / -50% / -50% / -50%. Candidate overcap: -52% / -54% / -56% / -58% / -60% / -62% / -64% / -66% / -68% / -70%. Source: `records/skills/playerclass03/curse1_buff.dbr` → `characterRunSpeedModifier`.

- [ ] **Physical Resistance** — natural cap **-25 at 10/10**; current hard cap **-35 at 20/20**. Natural-cap pace: **-2 per rank**; weakest overcap pace: **-1 per rank**. Unapproved linear-floor candidate: **-45**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: -26 / -27 / -28 / -29 / -30 / -31 / -32 / -33 / -34 / -35. Candidate overcap: -27 / -29 / -31 / -33 / -35 / -37 / -39 / -41 / -43 / -45. Source: `records/skills/playerclass03/curse1_buff.dbr` → `defensivePhysical`.

- [ ] **Target Radius** — natural cap **10 m at 10/10**; current hard cap **13 m at 20/20**. Natural-cap pace: **+0.8 m per rank**; weakest overcap pace: **+0.3 m per rank**. Unapproved linear-floor candidate: **18 m**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 10.3 m / 10.6 m / 10.9 m / 11.2 m / 11.5 m / 11.8 m / 12.1 m / 12.4 m / 12.7 m / 13 m. Candidate overcap: 10.8 m / 11.6 m / 12.4 m / 13.2 m / 14 m / 14.8 m / 15.6 m / 16.4 m / 17.2 m / 18 m. Source: `records/skills/playerclass03/curse1_buff.dbr` → `skillTargetRadius`.

### Doom Bolt — 12/12 → 22/22

*Tooltip:* A bolt of entropic power tears through the fabric of reality to inflict massive damage on any foe it strikes. Striking a target directly with the bolt inflicts double damage.

*Records:* `records/skills/playerclass03/doombolt1.dbr` [Base game]

#### Safe changes

- [ ] **CritDamage Damage** — natural cap **33% at 12/12**; current hard cap **45% at 22/22**. Natural-cap pace: **+2% per rank**; weakest overcap pace: **+1% per rank**. Proposed safe hard cap: **54%**. Current overcap: 34% / 35% / 36% / 37% / 38% / 39% / 40% / 41% / 42% / 45%. Candidate overcap: 35% / 37% / 39% / 41% / 43% / 45% / 47% / 49% / 51% / 54%. Source: `records/skills/playerclass03/doombolt1.dbr` → `offensiveCritDamageModifier`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Dreeg's Evil Eye — 12/12 → 22/22

*Tooltip:* Summons one of the infinite eyes of Dreeg, the great guardian of the hidden realm. The eye quickly speeds toward the target and then detonates itself.

*Records:* `records/skills/playerclass03/evileye1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Ember Claw — 12/12 → 22/22

*Tooltip:* Brimstone claws tear an arc of flame through enemies within the hellhound's reach.

*Records:* `records/skills/playerclass03/pets/petskill_hellhound_fireclaw.dbr` [Base game]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **155% at 12/12**; current hard cap **190% at 22/22**. Natural-cap pace: **+6% per rank**; weakest overcap pace: **+3% per rank**. Proposed safe hard cap: **217%**. Current overcap: 158% / 161% / 164% / 167% / 170% / 173% / 176% / 179% / 182% / 190%. Candidate overcap: 161% / 167% / 173% / 179% / 185% / 191% / 197% / 203% / 209% / 217%. Source: `records/skills/playerclass03/pets/petskill_hellhound_fireclaw.dbr` → `weaponDamagePct`.

#### To-be-exception

- [ ] **Taunt** — natural cap **100% at 12/12**; current hard cap **100% at 22/22**. Natural-cap pace: **+5% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **150%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 100% / 100% / 100% / 100% / 100% / 100% / 100% / 100% / 100% / 100%. Candidate overcap: 105% / 110% / 115% / 120% / 125% / 130% / 135% / 140% / 145% / 150%. Source: `records/skills/playerclass03/pets/petskill_hellhound_fireclaw.dbr` → `offensiveTauntMin`.

### Hellfire — 12/12 → 22/22

*Tooltip:* An aura of hellfire surrounds the hellhound, augmenting it with power from its natural realm and searing enemies that strike its flesh. This power extends to nearby allies.

*Records:* `records/skills/playerclass03/pets/petskill_hellhound_hellfireaura_buff.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Infernal Breath — 12/12 → 22/22

*Tooltip:* The hellhound belches forth furious hellfire, incinerating your enemies.

*Records:* `records/skills/playerclass03/pets/petskill_hellhound_breathefire.dbr` [Base game]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **160% at 12/12**; current hard cap **205% at 22/22**. Natural-cap pace: **+7% per rank**; weakest overcap pace: **+4% per rank**. Proposed safe hard cap: **232%**. Current overcap: 164% / 168% / 172% / 176% / 180% / 184% / 188% / 192% / 196% / 205%. Candidate overcap: 167% / 174% / 181% / 188% / 195% / 202% / 209% / 216% / 223% / 232%. Source: `records/skills/playerclass03/pets/petskill_hellhound_breathefire.dbr` → `weaponDamagePct`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Lightning Strike — 12/12 → 22/22

*Tooltip:* The storm raven calls forth a powerful lightning bolt to electrocute nearby foes.

*Records:* `records/skills/playerclass03/pets/petskill_raven_stormstrike1.dbr` [Base game]

#### Safe changes

- [ ] **Lightning Damage (minimum)** — natural cap **654 at 12/12**; current hard cap **1202 at 22/22**. Natural-cap pace: **+52.333 per rank**; weakest overcap pace: **+52 per rank**. Proposed safe hard cap: **1202.333**. Current overcap: 706 / 759 / 813 / 866 / 920 / 974 / 1029 / 1084 / 1138 / 1202. Candidate overcap: 706.333 / 759.333 / 813.333 / 866.333 / 920.333 / 974.333 / 1029.333 / 1084.333 / 1138.333 / 1202.333. Source: `records/skills/playerclass03/pets/petskill_raven_stormstrike1.dbr` → `offensiveLightningMin`.

- [ ] **Weapon Damage** — natural cap **140% at 12/12**; current hard cap **175% at 22/22**. Natural-cap pace: **+4% per rank**; weakest overcap pace: **+3% per rank**. Proposed safe hard cap: **184%**. Current overcap: 143% / 146% / 149% / 152% / 155% / 158% / 161% / 164% / 167% / 175%. Candidate overcap: 144% / 148% / 152% / 156% / 160% / 164% / 168% / 172% / 176% / 184%. Source: `records/skills/playerclass03/pets/petskill_raven_stormstrike1.dbr` → `weaponDamagePct`.

#### To-be-exception

- [ ] **Stun Duration (minimum)** — natural cap **2 at 12/12**; current hard cap **3 at 22/22**. Natural-cap pace: **+0.167 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **4**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 2.25 / 2.25 / 2.25 / 2.5 / 2.5 / 2.5 / 2.75 / 2.75 / 2.75 / 3. Candidate overcap: 2.25 / 2.417 / 2.583 / 2.833 / 3 / 3.167 / 3.417 / 3.583 / 3.75 / 4. Source: `records/skills/playerclass03/pets/petskill_raven_stormstrike1.dbr` → `offensiveStunMin`.

### Mend Flesh — 16/16 → 26/26

*Tooltip:* The raven channels eldritch energies to mend the flesh of wounded allies.

*Records:* `records/skills/playerclass03/pets/petskill_raven_heal1_buff.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Duration** — natural cap **6 s at 16/16**; current hard cap **8 s at 26/26**. Natural-cap pace: **+0.333 s per rank**; weakest overcap pace: **0 s per rank**. Unapproved linear-floor candidate: **10.667 s**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 6 s / 6 s / 7 s / 7 s / 7 s / 7 s / 7 s / 8 s / 8 s / 8 s. Candidate overcap: 6.333 s / 6.667 s / 7.667 s / 8 s / 8.333 s / 8.667 s / 9 s / 10 s / 10.333 s / 10.667 s. Source: `records/skills/playerclass03/pets/petskill_raven_heal1_buff.dbr` → `skillActiveDuration`.

- [ ] **Health Restoration Duration** — natural cap **4% at 16/16**; current hard cap **6% at 26/26**. Natural-cap pace: **+0.333% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **8.667%**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 4% / 4% / 4% / 4% / 5% / 5% / 5% / 5% / 5% / 6%. Candidate overcap: 4.333% / 4.667% / 5% / 5.333% / 6.333% / 6.667% / 7% / 7.333% / 7.667% / 8.667%. Source: `records/skills/playerclass03/pets/petskill_raven_heal1_buff.dbr` → `skillLifePercentBuffDuration`.

- [ ] **Health Restored** — natural cap **15% at 16/16**; current hard cap **22% at 26/26**. Natural-cap pace: **+0.667% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **24%**. **Review reason:** Percent health restoration can cross recovery breakpoints and needs skill-specific sustain testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 16% / 16% / 17% / 18% / 18% / 19% / 20% / 20% / 21% / 22%. Candidate overcap: 16% / 16.667% / 17.667% / 18.667% / 19.333% / 20.333% / 21.333% / 22% / 23% / 24%. Source: `records/skills/playerclass03/pets/petskill_raven_heal1_buff.dbr` → `skillLifePercent`.

### Possession — 12/12 → 22/22

*Tooltip:* You allow your body to act as a mortal vessel for the witch god Solael. The spirit of Solael radiates through your body, fortifying you against attacks as it magnifies your occult power.

*Records:* `records/skills/playerclass03/possession1.dbr` [Base game]

#### Safe changes

- [ ] **Acid Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass03/possession1.dbr` → `offensivePoisonModifier`.

- [ ] **Chaos Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass03/possession1.dbr` → `offensiveChaosModifier`.

- [ ] **Poison Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass03/possession1.dbr` → `offensiveSlowPoisonModifier`.

- [ ] **Vitality Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass03/possession1.dbr` → `offensiveLifeModifier`.

- [ ] **Vitality Decay Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass03/possession1.dbr` → `offensiveSlowLifeModifier`.

#### To-be-exception

- [ ] **Chaos Resistance** — natural cap **25% at 12/12**; current hard cap **35% at 22/22**. Natural-cap pace: **+2.333% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **48.333%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: 26% / 27% / 28% / 29% / 30% / 31% / 32% / 33% / 34% / 35%. Candidate overcap: 27.333% / 29.667% / 32% / 34.333% / 36.667% / 39% / 41.333% / 43.667% / 46% / 48.333%. Source: `records/skills/playerclass03/possession1.dbr` → `defensiveChaos`.

- [ ] **Damage Absorption** — natural cap **18% at 12/12**; current hard cap **25% at 22/22**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **28%**. **Review reason:** Absorption and maximum resistance can cross strong defensive breakpoints and require separate balance approval. Recommended default: preserve vanilla until explicitly approved. Current overcap: 19% / 19% / 20% / 21% / 21% / 22% / 23% / 23% / 24% / 25%. Candidate overcap: 19% / 20% / 21% / 22% / 23% / 24% / 25% / 26% / 27% / 28%. Source: `records/skills/playerclass03/possession1.dbr` → `damageAbsorptionPercent`.

### Sigil of Consumption — 12/12 → 22/22

*Tooltip:* Creates an occult sigil on the ground that consumes the life-force of enemies caught within its power, returning a portion of the damage dealt as health to the Occultist.

*Records:* `records/skills/playerclass03/sigilofdestruction1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Attack Damage Converted to Health** — natural cap **30% at 12/12**; current hard cap **33% at 22/22**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **40%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 30% / 30% / 30% / 31% / 31% / 31% / 32% / 32% / 32% / 33%. Candidate overcap: 31% / 32% / 33% / 34% / 35% / 36% / 37% / 38% / 39% / 40%. Source: `records/skills/playerclass03/sigilofdestruction1.dbr` → `offensiveLifeLeechMin`.

- [ ] **Energy Cost** — natural cap **84 Energy at 12/12**; current hard cap **134 Energy at 22/22**. Natural-cap pace: **+5.333 Energy per rank**; weakest overcap pace: **+5 Energy per rank**. Unapproved linear-floor candidate: **137.333 Energy**. **Review reason:** Energy cost is a cost curve, not a player benefit; lowering its overcap penalty would be a separate balance change. Recommended default: preserve vanilla until explicitly approved. Current overcap: 89 Energy / 94 Energy / 99 Energy / 104 Energy / 109 Energy / 114 Energy / 119 Energy / 124 Energy / 129 Energy / 134 Energy. Candidate overcap: 89.333 Energy / 94.667 Energy / 100 Energy / 105.333 Energy / 110.667 Energy / 116 Energy / 121.333 Energy / 126.667 Energy / 132 Energy / 137.333 Energy. Source: `records/skills/playerclass03/sigilofdestruction1.dbr` → `skillManaCost`.

- [ ] **Explosion Radius** — natural cap **5 m at 12/12**; current hard cap **5.5 m at 22/22**. Natural-cap pace: **+0.133 m per rank**; weakest overcap pace: **0 m per rank**. Unapproved linear-floor candidate: **6.333 m**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 5 m / 5.1 m / 5.1 m / 5.1 m / 5.2 m / 5.2 m / 5.3 m / 5.3 m / 5.4 m / 5.5 m. Candidate overcap: 5.133 m / 5.267 m / 5.4 m / 5.533 m / 5.667 m / 5.8 m / 5.933 m / 6.067 m / 6.2 m / 6.333 m. Source: `records/skills/playerclass03/sigilofdestruction1.dbr` → `projectileExplosionRadius`.

### Solael's Witchfire — 12/12 → 22/22

*Tooltip:* Harness the eldritch power of Solael, burning your enemies with entropic energy with every weapon attack.

*Records:* `records/skills/playerclass03/witchfire1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Attack Speed** — natural cap **15% at 12/12**; current hard cap **23% at 22/22**. Natural-cap pace: **+1.333% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **29%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 16% / 16% / 17% / 18% / 18% / 19% / 20% / 20% / 21% / 23%. Candidate overcap: 16.333% / 17.667% / 19% / 20.333% / 21.667% / 23% / 24.333% / 25.667% / 27% / 29%. Source: `records/skills/playerclass03/witchfire1.dbr` → `characterAttackSpeedModifier`.

### Storm Spirit — 12/12 → 22/22

*Tooltip:* The raven projects its eldritch spirit into selected allies, empowering them beyond their mortal means.

*Records:* `records/skills/playerclass03/pets/petskill_raven_stormspirit1_buff.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **ElementalResistance Resistance** — natural cap **30% at 12/12**; current hard cap **40% at 22/22**. Natural-cap pace: **+2.333% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **53.333%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: 31% / 32% / 33% / 34% / 35% / 36% / 37% / 38% / 39% / 40%. Candidate overcap: 32.333% / 34.667% / 37% / 39.333% / 41.667% / 44% / 46.333% / 48.667% / 51% / 53.333%. Source: `records/skills/playerclass03/pets/petskill_raven_stormspirit1_buff.dbr` → `defensiveElementalResistance`.

### Summon Familiar — 16/16 → 26/26

*Tooltip:* Summon a mythical storm raven to support you. Storm ravens are eldritch creatures of uncanny intelligence and magical ability quite different from mundane ravens. Some believe they are not birds at all but rather some manner of ancient sky spirit for which the raven is a preferred manifestation. Only one raven may be summoned at any one time. The raven scales with Pet Bonuses.

*Records:* `records/skills/playerclass03/summon_raven1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Summon Familiar — internal pet scaling — 16/16 → 26/26

*Records:* `records/skills/playerclass03/pets/petskill_raven_innate1.dbr` [Base game]

#### Safe changes

- [ ] **CritDamage Damage** — natural cap **33% at 16/16**; current hard cap **45% at 26/26**. Natural-cap pace: **+2% per rank**; weakest overcap pace: **+1% per rank**. Proposed safe hard cap: **54%**. Current overcap: 34% / 35% / 36% / 37% / 38% / 39% / 40% / 41% / 42% / 45%. Candidate overcap: 35% / 37% / 39% / 41% / 43% / 45% / 47% / 49% / 51% / 54%. Source: `records/skills/playerclass03/pets/petskill_raven_innate1.dbr` → `offensiveCritDamageModifier`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Summon Hellhound — 16/16 → 26/26

*Tooltip:* Calls forth a hellhound from the eldritch realms to savage the Occultist's enemies. This vicious beast will battle alongside you until its life is extinguished in a blazing inferno. Only one hellhound can be summoned at any one time. The hellhound scales with Pet Bonuses.

*Records:* `records/skills/playerclass03/summon_hellhound1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Vile Eruption — 12/12 → 22/22

*Tooltip:* Putrid chunks burst forth from the eye upon impact, inflicting further pain upon any foes unfortunate enough to be close to its detonation.

*Records:* `records/skills/playerclass03/evileye4.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Fragment Count (maximum)** — natural cap **7 at 12/12**; current hard cap **8 at 22/22**. Natural-cap pace: **+0.333 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **11**. **Review reason:** Target and projectile counts or behavior are discrete mechanics that may change hit density and performance. Recommended default: preserve vanilla until explicitly approved. Current overcap: 7 / 7 / 7 / 7 / 7 / 8 / 8 / 8 / 8 / 8. Candidate overcap: 7.333 / 7.667 / 8 / 8.333 / 8.667 / 9.667 / 10 / 10.333 / 10.667 / 11. Source: `records/skills/playerclass03/evileye4.dbr` → `projectileFragmentsLaunchNumberMax`.

- [ ] **Fragment Count (minimum)** — natural cap **7 at 12/12**; current hard cap **7 at 22/22**. Natural-cap pace: **+0.333 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **10.333**. **Review reason:** Target and projectile counts or behavior are discrete mechanics that may change hit density and performance. Recommended default: preserve vanilla until explicitly approved. Current overcap: 7 / 7 / 7 / 7 / 7 / 7 / 7 / 7 / 7 / 7. Candidate overcap: 7.333 / 7.667 / 8 / 8.333 / 8.667 / 9 / 9.333 / 9.667 / 10 / 10.333. Source: `records/skills/playerclass03/evileye4.dbr` → `projectileFragmentsLaunchNumberMin`.

## Nightblade

### Amarasta's Blade Burst — 16/16 → 26/26

*Tooltip:* Master of assassins Amarasta, legendary among the Nightblades for her alacrity, developed a technique by which she would unleash a burst of deadly phantasmal blades which spread out from the point of attack to impale all adjacent foes.

*Records:* `records/skills/playerclass04/eviscerate1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Freeze Chance** — natural cap **25% at 16/16**; current hard cap **30% at 26/26**. Natural-cap pace: **+0.667% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **33.333%**. **Review reason:** Chance and weighting fields are discrete probability mechanics and may have engine or balance caps. Recommended default: preserve vanilla until explicitly approved. Current overcap: 25% / 26% / 26% / 27% / 27% / 28% / 28% / 29% / 29% / 30%. Candidate overcap: 25.667% / 26.667% / 27.333% / 28.333% / 29% / 30% / 30.667% / 31.667% / 32.333% / 33.333%. Source: `records/skills/playerclass04/eviscerate1.dbr` → `offensiveFreezeChance`.

- [ ] **Target Radius** — natural cap **5 m at 16/16**; current hard cap **5.5 m at 26/26**. Natural-cap pace: **+0.1 m per rank**; weakest overcap pace: **0 m per rank**. Unapproved linear-floor candidate: **6 m**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 5 m / 5.1 m / 5.1 m / 5.2 m / 5.2 m / 5.3 m / 5.3 m / 5.4 m / 5.4 m / 5.5 m. Candidate overcap: 5.1 m / 5.2 m / 5.3 m / 5.4 m / 5.5 m / 5.6 m / 5.7 m / 5.8 m / 5.9 m / 6 m. Source: `records/skills/playerclass04/eviscerate1.dbr` → `skillTargetRadius`.

### Amarasta's Quick Cut — 8/8 → 18/18

*Tooltip:* Legendary for her speed, Amarasta's blades were said to sound like a whip through the air, leaving only streaks of light too fast for the eye to follow. Masters of this technique can strike thrice in the space of a normal attack. This is a melee dual-wielding technique that activates off of default weapon attacks.

*Records:* `records/skills/playerclass04/wpattack2.dbr` [Base game]

#### Safe changes

- [ ] **CritDamage Damage** — natural cap **35% at 8/8**; current hard cap **55% at 18/18**. Natural-cap pace: **+4% per rank**; weakest overcap pace: **+2% per rank**. Proposed safe hard cap: **75%**. Current overcap: 37% / 39% / 41% / 43% / 45% / 47% / 49% / 51% / 53% / 55%. Candidate overcap: 39% / 43% / 47% / 51% / 55% / 59% / 63% / 67% / 71% / 75%. Source: `records/skills/playerclass04/wpattack2.dbr` → `offensiveCritDamageModifier`.

- [ ] **Weapon Damage** — natural cap **110% at 8/8**; current hard cap **130% at 18/18**. Natural-cap pace: **+4% per rank**; weakest overcap pace: **+2% per rank**. Proposed safe hard cap: **150%**. Current overcap: 112% / 114% / 116% / 118% / 120% / 122% / 124% / 126% / 128% / 130%. Candidate overcap: 114% / 118% / 122% / 126% / 130% / 134% / 138% / 142% / 146% / 150%. Source: `records/skills/playerclass04/wpattack2.dbr` → `weaponDamagePct`.

#### To-be-exception

- [ ] **Activation Weight** — natural cap **22% at 8/8**; current hard cap **25% at 18/18**. Natural-cap pace: **+0.667% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **29.667%**. **Review reason:** Chance and weighting fields are discrete probability mechanics and may have engine or balance caps. Recommended default: preserve vanilla until explicitly approved. Current overcap: 22% / 22% / 23% / 23% / 23% / 24% / 24% / 24% / 24% / 25%. Candidate overcap: 22.667% / 23.333% / 24.333% / 25% / 25.667% / 26.667% / 27.333% / 28% / 28.667% / 29.667%. Source: `records/skills/playerclass04/wpattack2.dbr` → `skillChanceWeight`.

### Anatomy of Murder — 12/12 → 22/22

*Tooltip:* Knowledge prized by royal assassins, the extensive study of anatomy familiarizes you with all of the most vulnerable and damaging locations in which to slide a blade.

*Records:* `records/skills/playerclass04/passive2.dbr` [Base game]

#### Safe changes

- [ ] **Bleeding Duration** — natural cap **75% at 12/12**; current hard cap **125% at 22/22**. Natural-cap pace: **+5.667% per rank**; weakest overcap pace: **+5% per rank**. Proposed safe hard cap: **131.667%**. Current overcap: 80% / 85% / 90% / 95% / 100% / 105% / 110% / 115% / 120% / 125%. Candidate overcap: 80.667% / 86.333% / 92% / 97.667% / 103.333% / 109% / 114.667% / 120.333% / 126% / 131.667%. Source: `records/skills/playerclass04/passive2.dbr` → `offensiveSlowBleedingDurationModifier`.

- [ ] **Cunning** — natural cap **25% at 12/12**; current hard cap **35% at 22/22**. Natural-cap pace: **+1.667% per rank**; weakest overcap pace: **+1% per rank**. Proposed safe hard cap: **41.667%**. Current overcap: 26% / 27% / 28% / 29% / 30% / 31% / 32% / 33% / 34% / 35%. Candidate overcap: 26.667% / 28.333% / 30% / 31.667% / 33.333% / 35% / 36.667% / 38.333% / 40% / 41.667%. Source: `records/skills/playerclass04/passive2.dbr` → `characterDexterityModifier`.

- [ ] **Vitality Decay Duration** — natural cap **75% at 12/12**; current hard cap **125% at 22/22**. Natural-cap pace: **+5.667% per rank**; weakest overcap pace: **+5% per rank**. Proposed safe hard cap: **131.667%**. Current overcap: 80% / 85% / 90% / 95% / 100% / 105% / 110% / 115% / 120% / 125%. Candidate overcap: 80.667% / 86.333% / 92% / 97.667% / 103.333% / 109% / 114.667% / 120.333% / 126% / 131.667%. Source: `records/skills/playerclass04/passive2.dbr` → `offensiveSlowLifeDurationModifier`.

#### To-be-exception

- [ ] **Racial Bonus Damage** — natural cap **15% at 12/12**; current hard cap **20% at 22/22**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **25%**. **Review reason:** This is a specialized modifier with cap or encounter-specific consequences. Recommended default: preserve vanilla until explicitly approved. Current overcap: 15% / 16% / 16% / 17% / 17% / 18% / 18% / 19% / 19% / 20%. Candidate overcap: 16% / 17% / 18% / 19% / 20% / 21% / 22% / 23% / 24% / 25%. Source: `records/skills/playerclass04/passive2.dbr` → `racialBonusPercentDamage`.

### Belgothian's Shears — 8/8 → 18/18

*Tooltip:* The brawny Belgothian was an anomaly among the lithe Nightblade masters, but he exceeded them all in raw power. Leveraging his strength in direct but lethal attacks like the shears, Belgothian could often finish an enemy in a single move. This is a melee dual-wielding technique that activates off of default weapon attacks.

*Records:* `records/skills/playerclass04/wpattack1.dbr` [Base game]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **143% at 8/8**; current hard cap **159% at 18/18**. Natural-cap pace: **+2% per rank**; weakest overcap pace: **+1% per rank**. Proposed safe hard cap: **163%**. Current overcap: 145% / 146% / 148% / 149% / 151% / 152% / 154% / 155% / 157% / 159%. Candidate overcap: 145% / 147% / 149% / 151% / 153% / 155% / 157% / 159% / 161% / 163%. Source: `records/skills/playerclass04/wpattack1.dbr` → `weaponDamagePct`.

#### To-be-exception

- [ ] **Activation Weight** — natural cap **22% at 8/8**; current hard cap **25% at 18/18**. Natural-cap pace: **+0.667% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **29.667%**. **Review reason:** Chance and weighting fields are discrete probability mechanics and may have engine or balance caps. Recommended default: preserve vanilla until explicitly approved. Current overcap: 22% / 22% / 23% / 23% / 23% / 24% / 24% / 24% / 24% / 25%. Candidate overcap: 22.667% / 23.333% / 24.333% / 25% / 25.667% / 26.667% / 27.333% / 28% / 28.667% / 29.667%. Source: `records/skills/playerclass04/wpattack1.dbr` → `skillChanceWeight`.

### Blade Barrier — 12/12 → 22/22

*Tooltip:* For a master Nightblade, Belgothian was rumored to lack fine control of his conjuring; but he had the unremitting willpower to summon so many blades that they would form an impenetrable shield surrounding him, giving him a moment of respite from his foes. This skill immobilizes you for its duration.

*Records:* `records/skills/playerclass04/bladebarrier1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Skill Recharge** — natural cap **16 s at 12/12**; current hard cap **12 s at 22/22**. Natural-cap pace: **-1 s per rank**; weakest overcap pace: **-0.4 s per rank**. Unapproved linear-floor candidate: **6 s**. **Review reason:** Recharge changes alter uptime and rotation breakpoints rather than only restoring a stat growth rate. Recommended default: preserve vanilla until explicitly approved. Current overcap: 15.6 s / 15.2 s / 14.8 s / 14.4 s / 14 s / 13.6 s / 13.2 s / 12.8 s / 12.4 s / 12 s. Candidate overcap: 15 s / 14 s / 13 s / 12 s / 11 s / 10 s / 9 s / 8 s / 7 s / 6 s. Source: `records/skills/playerclass04/bladebarrier1.dbr` → `skillCooldownTime`.

### Blade Eruption — 16/16 → 26/26

*Tooltip:* The Blade Spirit shoots out eviscerating blades in all directions.

*Records:* `records/skills/playerclass04/pets/petskill_showerofblades1_fire.dbr` [Ashes of Malmouth]; `records/skills/playerclass04/pets/petskill_showerofblades1_vitality.dbr` [Ashes of Malmouth]; `records/skills/playerclass04/pets/petskill_showerofblades1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Blade Spirit — 16/16 → 26/26

*Tooltip:* Conjure a swirling cloud of lethal blades that will roam the battlefield, slicing enemies to pieces with jagged shards. Blade Spirits scale with player damage bonuses.

*Records:* `records/skills/playerclass04/summon_bladespirit.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Summon Limit** — natural cap **3 at 16/16**; current hard cap **4 at 26/26**. Natural-cap pace: **+0.333 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **7**. **Review reason:** Summon counts and spawn distributions are discrete mechanics with pathing, performance, and encounter implications. Recommended default: preserve vanilla until explicitly approved. Current overcap: 3 / 3 / 3 / 3 / 3 / 3 / 3 / 4 / 4 / 4. Candidate overcap: 3.333 / 3.667 / 4 / 4.333 / 4.667 / 5 / 5.333 / 6.333 / 6.667 / 7. Source: `records/skills/playerclass04/summon_bladespirit.dbr` → `petLimit`.

- [ ] **Summons per Cast** — natural cap **3 at 16/16**; current hard cap **4 at 26/26**. Natural-cap pace: **+0.333 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **7**. **Review reason:** Summon counts and spawn distributions are discrete mechanics with pathing, performance, and encounter implications. Recommended default: preserve vanilla until explicitly approved. Current overcap: 3 / 3 / 3 / 3 / 3 / 3 / 3 / 4 / 4 / 4. Candidate overcap: 3.333 / 3.667 / 4 / 4.333 / 4.667 / 5 / 5.333 / 6.333 / 6.667 / 7. Source: `records/skills/playerclass04/summon_bladespirit.dbr` → `petBurstSpawn`.

### Blade Trap — 12/12 → 22/22

*Tooltip:* Your command of Nightblade techniques allows you to entrap enemies within a prison of deadly phantasmal blades.

*Records:* `records/skills/playerclass04/bladetrap1_buff.dbr` [Base game]

#### Safe changes

- [ ] **Defensive Ability** — natural cap **-35% at 12/12**; current hard cap **-40% at 22/22**. Natural-cap pace: **-2% per rank**; weakest overcap pace: **0% per rank**. Proposed safe hard cap: **-55%**. Current overcap: -35% / -36% / -36% / -37% / -37% / -38% / -38% / -39% / -39% / -40%. Candidate overcap: -37% / -39% / -41% / -43% / -45% / -47% / -49% / -51% / -53% / -55%. Source: `records/skills/playerclass04/bladetrap1_buff.dbr` → `characterDefensiveAbilityModifier`.

#### To-be-exception

- [ ] **Duration** — natural cap **4 s at 12/12**; current hard cap **4.5 s at 22/22**. Natural-cap pace: **+0.1 s per rank**; weakest overcap pace: **0 s per rank**. Unapproved linear-floor candidate: **5 s**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 4 s / 4.1 s / 4.1 s / 4.2 s / 4.2 s / 4.3 s / 4.3 s / 4.4 s / 4.4 s / 4.5 s. Candidate overcap: 4.1 s / 4.2 s / 4.3 s / 4.4 s / 4.5 s / 4.6 s / 4.7 s / 4.8 s / 4.9 s / 5 s. Source: `records/skills/playerclass04/bladetrap1_buff.dbr` → `skillActiveDuration`.

- [ ] **Energy Cost** — natural cap **78 Energy at 12/12**; current hard cap **108 Energy at 22/22**. Natural-cap pace: **+4.333 Energy per rank**; weakest overcap pace: **+3 Energy per rank**. Unapproved linear-floor candidate: **121.333 Energy**. **Review reason:** Energy cost is a cost curve, not a player benefit; lowering its overcap penalty would be a separate balance change. Recommended default: preserve vanilla until explicitly approved. Current overcap: 81 Energy / 84 Energy / 87 Energy / 90 Energy / 93 Energy / 96 Energy / 99 Energy / 102 Energy / 105 Energy / 108 Energy. Candidate overcap: 82.333 Energy / 86.667 Energy / 91 Energy / 95.333 Energy / 99.667 Energy / 104 Energy / 108.333 Energy / 112.667 Energy / 117 Energy / 121.333 Energy. Source: `records/skills/playerclass04/bladetrap1_buff.dbr` → `skillManaCost`.

- [ ] **Explosion Radius** — natural cap **5.5 m at 12/12**; current hard cap **6 m at 22/22**. Natural-cap pace: **+0.133 m per rank**; weakest overcap pace: **0 m per rank**. Unapproved linear-floor candidate: **6.833 m**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 5.5 m / 5.6 m / 5.6 m / 5.7 m / 5.7 m / 5.8 m / 5.8 m / 5.9 m / 5.9 m / 6 m. Candidate overcap: 5.633 m / 5.767 m / 5.9 m / 6.033 m / 6.167 m / 6.3 m / 6.433 m / 6.567 m / 6.7 m / 6.833 m. Source: `records/skills/playerclass04/bladetrap1_buff.dbr` → `projectileExplosionRadius`.

- [ ] **Trap Resistance** — natural cap **-35% at 12/12**; current hard cap **-45% at 22/22**. Natural-cap pace: **-2% per rank**; weakest overcap pace: **-1% per rank**. Unapproved linear-floor candidate: **-55%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: -36% / -37% / -38% / -39% / -40% / -41% / -42% / -43% / -44% / -45%. Candidate overcap: -37% / -39% / -41% / -43% / -45% / -47% / -49% / -51% / -53% / -55%. Source: `records/skills/playerclass04/bladetrap1_buff.dbr` → `defensiveTrap`.

### Dual Blades — 16/16 → 26/26

*Tooltip:* Among the most fundamental skills of the Nightblade are the mastery of melee dual wielding, favoring the use of piercing blades, and the art of drawing elemental cold from iron and steel. This is a melee dual-wielding bonus. Also enables the ability to dual wield melee weapons.

*Records:* `records/skills/playerclass04/wpattack0.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Execution — 8/8 → 18/18

*Tooltip:* A merciless blow, struck during a moment of opportunity, with the intent to quickly finish a foe. Those that survive are not likely to remain alive for very long. This is a melee dual-wielding technique that activates off of default weapon attacks.

*Records:* `records/skills/playerclass04/wpattack5.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Activation Weight** — natural cap **22% at 8/8**; current hard cap **25% at 18/18**. Natural-cap pace: **+0.667% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **29.667%**. **Review reason:** Chance and weighting fields are discrete probability mechanics and may have engine or balance caps. Recommended default: preserve vanilla until explicitly approved. Current overcap: 22% / 22% / 23% / 23% / 23% / 24% / 24% / 24% / 24% / 25%. Candidate overcap: 22.667% / 23.333% / 24.333% / 25% / 25.667% / 26.667% / 27.333% / 28% / 28.667% / 29.667%. Source: `records/skills/playerclass04/wpattack5.dbr` → `skillChanceWeight`.

- [ ] **Reduction to Enemy Health (minimum)** — natural cap **23% at 8/8**; current hard cap **33% at 18/18**. Natural-cap pace: **+2% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **43%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 24% / 25% / 26% / 27% / 28% / 29% / 30% / 31% / 32% / 33%. Candidate overcap: 25% / 27% / 29% / 31% / 33% / 35% / 37% / 39% / 41% / 43%. Source: `records/skills/playerclass04/wpattack5.dbr` → `offensivePercentCurrentLifeMin`.

### Lethal Assault — 12/12 → 22/22

*Tooltip:* Committed to the offensive, Amarasta would continue her relentless assault following a blade burst to quickly and decisively finish off any surviving adversaries with her imbued weapons. Lethal Assault affects all attacks while active.

*Records:* `records/skills/playerclass04/eviscerate2_buff.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Merciless Repertoire — 12/12 → 22/22

*Tooltip:* Though traditionally shunned, sometimes a knowledge of poisons and elemental powers can be the most effective means to gain the upper hand in combat.

*Records:* `records/skills/playerclass04/passive3.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Nightfall — 12/12 → 22/22

*Tooltip:* As you reappear and engage your prime target, a pall of darkness will descend upon surrounding enemies like the darkest, coldest night, chilling their blood and invading their minds with an uncontrollable weariness.

*Records:* `records/skills/playerclass04/shadowstrike_mod2.dbr` [Base game]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **90% at 12/12**; current hard cap **110% at 22/22**. Natural-cap pace: **+4% per rank**; weakest overcap pace: **+2% per rank**. Proposed safe hard cap: **130%**. Current overcap: 92% / 94% / 96% / 98% / 100% / 102% / 104% / 106% / 108% / 110%. Candidate overcap: 94% / 98% / 102% / 106% / 110% / 114% / 118% / 122% / 126% / 130%. Source: `records/skills/playerclass04/shadowstrike_mod2.dbr` → `weaponDamagePct`.

#### To-be-exception

- [ ] **Attack Damage Converted to Health** — natural cap **16% at 12/12**; current hard cap **22% at 22/22**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **26%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 16% / 17% / 17% / 18% / 18% / 19% / 19% / 20% / 21% / 22%. Candidate overcap: 17% / 18% / 19% / 20% / 21% / 22% / 23% / 24% / 25% / 26%. Source: `records/skills/playerclass04/shadowstrike_mod2.dbr` → `offensiveLifeLeechMin`.

- [ ] **Sleep Chance** — natural cap **50% at 12/12**; current hard cap **70% at 22/22**. Natural-cap pace: **+3% per rank**; weakest overcap pace: **+2% per rank**. Unapproved linear-floor candidate: **80%**. **Review reason:** Chance and weighting fields are discrete probability mechanics and may have engine or balance caps. Recommended default: preserve vanilla until explicitly approved. Current overcap: 52% / 54% / 56% / 58% / 60% / 62% / 64% / 66% / 68% / 70%. Candidate overcap: 53% / 56% / 59% / 62% / 65% / 68% / 71% / 74% / 77% / 80%. Source: `records/skills/playerclass04/shadowstrike_mod2.dbr` → `offensiveSleepChance`.

- [ ] **Target Radius** — natural cap **5.5 m at 12/12**; current hard cap **6 m at 22/22**. Natural-cap pace: **+0.2 m per rank**; weakest overcap pace: **0 m per rank**. Unapproved linear-floor candidate: **7.5 m**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 5.6 m / 5.6 m / 5.7 m / 5.7 m / 5.8 m / 5.8 m / 5.9 m / 5.9 m / 6 m / 6 m. Candidate overcap: 5.7 m / 5.9 m / 6.1 m / 6.3 m / 6.5 m / 6.7 m / 6.9 m / 7.1 m / 7.3 m / 7.5 m. Source: `records/skills/playerclass04/shadowstrike_mod2.dbr` → `skillTargetRadius`.

### Phantasmal Armor — 12/12 → 22/22

*Tooltip:* A metaphysical barrier forms around you, brought into being through the focused power of mind and spirit. This barrier repels physical damage and transfers energy from magical attacks into your own pneuma reserves.

*Records:* `records/skills/playerclass04/passive1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Freeze Resistance** — natural cap **30% at 12/12**; current hard cap **50% at 22/22**. Natural-cap pace: **+2.667% per rank**; weakest overcap pace: **+2% per rank**. Unapproved linear-floor candidate: **56.667%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: 32% / 34% / 36% / 38% / 40% / 42% / 44% / 46% / 48% / 50%. Candidate overcap: 32.667% / 35.333% / 38% / 40.667% / 43.333% / 46% / 48.667% / 51.333% / 54% / 56.667%. Source: `records/skills/playerclass04/passive1.dbr` → `defensiveFreeze`.

- [ ] **Petrify Resistance** — natural cap **36% at 12/12**; current hard cap **60% at 22/22**. Natural-cap pace: **+3% per rank**; weakest overcap pace: **+2% per rank**. Unapproved linear-floor candidate: **69%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: 38% / 40% / 42% / 44% / 46% / 48% / 50% / 52% / 54% / 60%. Candidate overcap: 39% / 42% / 45% / 48% / 51% / 54% / 57% / 60% / 63% / 69%. Source: `records/skills/playerclass04/passive1.dbr` → `defensivePetrify`.

- [ ] **Pierce Resistance** — natural cap **30% at 12/12**; current hard cap **40% at 22/22**. Natural-cap pace: **+2.667% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **56.667%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: 31% / 32% / 33% / 34% / 35% / 36% / 37% / 38% / 39% / 40%. Candidate overcap: 32.667% / 35.333% / 38% / 40.667% / 43.333% / 46% / 48.667% / 51.333% / 54% / 56.667%. Source: `records/skills/playerclass04/passive1.dbr` → `defensivePierce`.

### Phantasmal Blades — 16/16 → 26/26

*Tooltip:* A legendary technique of the Nightblades. Hurl conjured blades infused with shadow magic that rend through flesh like paper.

*Records:* `records/skills/playerclass04/phantomblade.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Number of Projectiles** — natural cap **5 at 16/16**; current hard cap **6 at 26/26**. Natural-cap pace: **+0.333 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **9**. **Review reason:** Target and projectile counts or behavior are discrete mechanics that may change hit density and performance. Recommended default: preserve vanilla until explicitly approved. Current overcap: 5 / 5 / 5 / 5 / 5 / 5 / 5 / 6 / 6 / 6. Candidate overcap: 5.333 / 5.667 / 6 / 6.333 / 6.667 / 7 / 7.333 / 8.333 / 8.667 / 9. Source: `records/skills/playerclass04/phantomblade.dbr` → `projectileLaunchNumber`.

- [ ] **Projectile Spread Rotation** — natural cap **10 at 16/16**; current hard cap **12 at 26/26**. Natural-cap pace: **+0.667 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **18**. **Review reason:** Target and projectile counts or behavior are discrete mechanics that may change hit density and performance. Recommended default: preserve vanilla until explicitly approved. Current overcap: 10 / 10 / 10 / 10 / 10 / 10 / 10 / 10 / 10 / 12. Candidate overcap: 10.667 / 11.333 / 12 / 12.667 / 13.333 / 14 / 14.667 / 15.333 / 16 / 18. Source: `records/skills/playerclass04/phantomblade.dbr` → `projectileLaunchRotation`.

### Pneumatic Burst — 12/12 → 22/22

*Tooltip:* Secret martial techniques of the Nightblades enable you to draw vital breath or "pneuma" from your surroundings for short bursts of speed and power. The metabolic acceleration caused by these vital breaths also confers minor healing.

*Records:* `records/skills/playerclass04/nightbladeenchant1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Health Restored** — natural cap **40% at 12/12**; current hard cap **50% at 22/22**. Natural-cap pace: **+1.333% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **53.333%**. **Review reason:** Percent health restoration can cross recovery breakpoints and needs skill-specific sustain testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 41% / 42% / 43% / 44% / 45% / 46% / 47% / 48% / 49% / 50%. Candidate overcap: 41.333% / 42.667% / 44% / 45.333% / 46.667% / 48% / 49.333% / 50.667% / 52% / 53.333%. Source: `records/skills/playerclass04/nightbladeenchant1.dbr` → `skillLifePercent`.

- [ ] **Total Speed** — natural cap **14% at 12/12**; current hard cap **22% at 22/22**. Natural-cap pace: **+1.333% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **28%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 14% / 15% / 16% / 16% / 17% / 18% / 18% / 19% / 20% / 22%. Candidate overcap: 15.333% / 16.667% / 18% / 19.333% / 20.667% / 22% / 23.333% / 24.667% / 26% / 28%. Source: `records/skills/playerclass04/nightbladeenchant1.dbr` → `characterTotalSpeedModifier`.

### Ring of Steel — 16/16 → 26/26

*Tooltip:* In the blink of an eye, hundreds of phantasmal blades encircle you at lethal speed, cutting down adjacent foes.

*Records:* `records/skills/playerclass04/ringofsteel.dbr` [Base game]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **290% at 16/16**; current hard cap **370% at 26/26**. Natural-cap pace: **+12% per rank**; weakest overcap pace: **+8% per rank**. Proposed safe hard cap: **410%**. Current overcap: 298% / 306% / 314% / 322% / 330% / 338% / 346% / 354% / 362% / 370%. Candidate overcap: 302% / 314% / 326% / 338% / 350% / 362% / 374% / 386% / 398% / 410%. Source: `records/skills/playerclass04/ringofsteel.dbr` → `weaponDamagePct`.

#### To-be-exception

- [ ] **Energy Cost** — natural cap **94 Energy at 16/16**; current hard cap **140 Energy at 26/26**. Natural-cap pace: **+5.333 Energy per rank**; weakest overcap pace: **+4 Energy per rank**. Unapproved linear-floor candidate: **147.333 Energy**. **Review reason:** Energy cost is a cost curve, not a player benefit; lowering its overcap penalty would be a separate balance change. Recommended default: preserve vanilla until explicitly approved. Current overcap: 98 Energy / 103 Energy / 108 Energy / 112 Energy / 117 Energy / 121 Energy / 126 Energy / 131 Energy / 135 Energy / 140 Energy. Candidate overcap: 99.333 Energy / 104.667 Energy / 110 Energy / 115.333 Energy / 120.667 Energy / 126 Energy / 131.333 Energy / 136.667 Energy / 142 Energy / 147.333 Energy. Source: `records/skills/playerclass04/ringofsteel.dbr` → `skillManaCost`.

### Shadow Strike — 16/16 → 26/26

*Tooltip:* A cunning combination of illusion and mental deflection allows you to seemingly vanish and reappear above your victim like a nightmarish specter. Requires a melee weapon.

*Records:* `records/skills/playerclass04/shadowstrike.dbr` [Base game]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **440% at 16/16**; current hard cap **585% at 26/26**. Natural-cap pace: **+19% per rank**; weakest overcap pace: **+14% per rank**. Proposed safe hard cap: **630%**. Current overcap: 454% / 468% / 482% / 496% / 510% / 524% / 538% / 552% / 566% / 585%. Candidate overcap: 459% / 478% / 497% / 516% / 535% / 554% / 573% / 592% / 611% / 630%. Source: `records/skills/playerclass04/shadowstrike.dbr` → `weaponDamagePct`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Veil of Shadow — 10/10 → 20/20

*Tooltip:* A psionic veil clouds the minds of nearby enemies, slowing their movements and diminishing their effectiveness in combat.

*Records:* `records/skills/playerclass04/veilofshadows1_buff.dbr` [Base game]

#### Safe changes

- [ ] **Offensive Ability** — natural cap **-200 at 10/10**; current hard cap **-375 at 20/20**. Natural-cap pace: **-20 per rank**; weakest overcap pace: **-16 per rank**. Proposed safe hard cap: **-411**. Current overcap: -216 / -232 / -248 / -264 / -280 / -296 / -312 / -328 / -344 / -375. Candidate overcap: -220 / -240 / -260 / -280 / -300 / -320 / -340 / -360 / -380 / -411. Source: `records/skills/playerclass04/veilofshadows1_buff.dbr` → `characterOffensiveAbility`.

#### To-be-exception

- [ ] **Target Radius** — natural cap **6 m at 10/10**; current hard cap **7.5 m at 20/20**. Natural-cap pace: **+0.333 m per rank**; weakest overcap pace: **+0.1 m per rank**. Unapproved linear-floor candidate: **9.333 m**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 6.1 m / 6.2 m / 6.3 m / 6.5 m / 6.6 m / 6.8 m / 6.9 m / 7.1 m / 7.2 m / 7.5 m. Candidate overcap: 6.333 m / 6.667 m / 7 m / 7.333 m / 7.667 m / 8 m / 8.333 m / 8.667 m / 9 m / 9.333 m. Source: `records/skills/playerclass04/veilofshadows1_buff.dbr` → `skillTargetRadius`.

- [ ] **Total Speed** — natural cap **-25% at 10/10**; current hard cap **-35% at 20/20**. Natural-cap pace: **-2.333% per rank**; weakest overcap pace: **-1% per rank**. Unapproved linear-floor candidate: **-48.333%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: -26% / -27% / -28% / -29% / -30% / -31% / -32% / -33% / -34% / -35%. Candidate overcap: -27.333% / -29.667% / -32% / -34.333% / -36.667% / -39% / -41.333% / -43.667% / -46% / -48.333%. Source: `records/skills/playerclass04/veilofshadows1_buff.dbr` → `characterTotalSpeedModifier`.

### Whirling Death — 8/8 → 18/18

*Tooltip:* A devastating technique intended for multi-target combat. Those that survive are left bleeding as if from a thousand cuts. This is a melee dual-wielding technique that activates off of default weapon attacks.

*Records:* `records/skills/playerclass04/wpattack3.dbr` [Base game]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **135% at 8/8**; current hard cap **155% at 18/18**. Natural-cap pace: **+2.667% per rank**; weakest overcap pace: **+2% per rank**. Proposed safe hard cap: **161.667%**. Current overcap: 137% / 139% / 141% / 143% / 145% / 147% / 149% / 151% / 153% / 155%. Candidate overcap: 137.667% / 140.333% / 143% / 145.667% / 148.333% / 151% / 153.667% / 156.333% / 159% / 161.667%. Source: `records/skills/playerclass04/wpattack3.dbr` → `weaponDamagePct`.

#### To-be-exception

- [ ] **Activation Weight** — natural cap **22% at 8/8**; current hard cap **25% at 18/18**. Natural-cap pace: **+0.667% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **29.667%**. **Review reason:** Chance and weighting fields are discrete probability mechanics and may have engine or balance caps. Recommended default: preserve vanilla until explicitly approved. Current overcap: 22% / 22% / 23% / 23% / 23% / 24% / 24% / 24% / 24% / 25%. Candidate overcap: 22.667% / 23.333% / 24.333% / 25% / 25.667% / 26.667% / 27.333% / 28% / 28.667% / 29.667%. Source: `records/skills/playerclass04/wpattack3.dbr` → `skillChanceWeight`.

## Arcanist

### Albrecht's Aether Ray — 16/16 → 26/26

*Tooltip:* A powerful arcane technique perfected by Master Albrecht in the years just preceding the Grim Dawn that channels raw arcane energies into a concentrated beam of destruction that penetrates all foes. Requires a Caster Off-Hand. At 100% Cast Speed, Albrecht's Aether Ray deals damage and drains Energy every 0.24s.

*Records:* `records/skills/playerclass05/aetherray1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Arcane Will — 10/10 → 20/20

*Tooltip:* Adrenaline is a powerful force in dire situations that can turn the tide of combat. Battle Arcanists learn to use this to their advantage.

*Records:* `records/skills/playerclass05/passive02.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Callidor's Tempest — 16/16 → 26/26

*Tooltip:* Master Callidor famously served as a general in King Samuel's army. While deployed on the front lines, Callidor perfected a technique which, by creating a sudden concentrated burst of raw aether energy, would ignite the air around him in an arcane tempest.

*Records:* `records/skills/playerclass05/razorwind1.dbr` [Base game]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **115% at 16/16**; current hard cap **145% at 26/26**. Natural-cap pace: **+6.333% per rank**; weakest overcap pace: **+3% per rank**. Proposed safe hard cap: **178.333%**. Current overcap: 118% / 121% / 124% / 127% / 130% / 133% / 136% / 139% / 142% / 145%. Candidate overcap: 121.333% / 127.667% / 134% / 140.333% / 146.667% / 153% / 159.333% / 165.667% / 172% / 178.333%. Source: `records/skills/playerclass05/razorwind1.dbr` → `weaponDamagePct`.

#### To-be-exception

- [ ] **Target Radius** — natural cap **5.5 m at 16/16**; current hard cap **5.8 m at 26/26**. Natural-cap pace: **+0.067 m per rank**; weakest overcap pace: **0 m per rank**. Unapproved linear-floor candidate: **6.267 m**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 5.5 m / 5.6 m / 5.6 m / 5.6 m / 5.7 m / 5.7 m / 5.7 m / 5.7 m / 5.8 m / 5.8 m. Candidate overcap: 5.567 m / 5.667 m / 5.733 m / 5.8 m / 5.9 m / 5.967 m / 6.033 m / 6.1 m / 6.2 m / 6.267 m. Source: `records/skills/playerclass05/razorwind1.dbr` → `skillTargetRadius`.

### Devastation — 16/16 → 26/26

*Tooltip:* Hailed as the ultimate force of destruction known to Arcanists, this technique tears a rift in reality through which fall embers of raw arcane energy. This dangerous spell is extremely draining and should not be used lightly. Requires a Caster Off-Hand. Embers continue to fall over the duration of the spell. Only one Devastation can be cast at any one time.

*Records:* `records/skills/playerclass05/devastation.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Energy Cost** — natural cap **610 Energy at 16/16**; current hard cap **845 Energy at 26/26**. Natural-cap pace: **+23.333 Energy per rank**; weakest overcap pace: **+23 Energy per rank**. Unapproved linear-floor candidate: **846.667 Energy**. **Review reason:** Energy cost is a cost curve, not a player benefit; lowering its overcap penalty would be a separate balance change. Recommended default: preserve vanilla until explicitly approved. Current overcap: 634 Energy / 657 Energy / 680 Energy / 704 Energy / 728 Energy / 751 Energy / 774 Energy / 798 Energy / 822 Energy / 845 Energy. Candidate overcap: 634 Energy / 657.333 Energy / 680.667 Energy / 704.667 Energy / 728.667 Energy / 752 Energy / 775.333 Energy / 799.333 Energy / 823.333 Energy / 846.667 Energy. Source: `records/skills/playerclass05/devastation.dbr` → `skillManaCost`.

### Fabric of Reality — 12/12 → 22/22

*Tooltip:* Unravel the secrets of the very fabric of reality. The raw powers of the aether and the void become as playthings to you.

*Records:* `records/skills/playerclass05/passive04.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Racial Bonus Damage** — natural cap **12% at 12/12**; current hard cap **18% at 22/22**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **23%**. **Review reason:** This is a specialized modifier with cap or encounter-specific consequences. Recommended default: preserve vanilla until explicitly approved. Current overcap: 12% / 13% / 13% / 14% / 14% / 15% / 15% / 16% / 16% / 18%. Candidate overcap: 13% / 14% / 15% / 16% / 17% / 18% / 19% / 20% / 21% / 23%. Source: `records/skills/playerclass05/passive04.dbr` → `racialBonusPercentDamage`.

### Inner Focus — 12/12 → 22/22

*Tooltip:* Focusing the mind and body into a locus for arcane energies is one of the first meditative techniques taught to aspiring Arcanists.

*Records:* `records/skills/playerclass05/passive01.dbr` [Base game]

#### Safe changes

- [ ] **Offensive Ability** — natural cap **12% at 12/12**; current hard cap **18% at 22/22**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Proposed safe hard cap: **23%**. Current overcap: 12% / 13% / 13% / 14% / 14% / 15% / 15% / 16% / 16% / 18%. Candidate overcap: 13% / 14% / 15% / 16% / 17% / 18% / 19% / 20% / 21% / 23%. Source: `records/skills/playerclass05/passive01.dbr` → `characterOffensiveAbilityModifier`.

- [ ] **Spirit** — natural cap **25% at 12/12**; current hard cap **35% at 22/22**. Natural-cap pace: **+1.667% per rank**; weakest overcap pace: **+1% per rank**. Proposed safe hard cap: **41.667%**. Current overcap: 26% / 27% / 28% / 29% / 30% / 31% / 32% / 33% / 34% / 35%. Candidate overcap: 26.667% / 28.333% / 30% / 31.667% / 33.333% / 35% / 36.667% / 38.333% / 40% / 41.667%. Source: `records/skills/playerclass05/passive01.dbr` → `characterIntelligenceModifier`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Iskandra's Elemental Exchange — 12/12 → 22/22

*Tooltip:* Iskandra taught her students that the most efficient path of victory was to turn an opponent's own energies against them. Just so, Elemental Exchange causes the weapons of allies to hungrily absorb arcane energy from foes and return it in the form of elemental damage.

*Records:* `records/skills/playerclass05/elementalinfusion1_buff.dbr` [Base game]

#### Safe changes

- [ ] **Energy Regeneration** — natural cap **60% at 12/12**; current hard cap **95% at 22/22**. Natural-cap pace: **+4.667% per rank**; weakest overcap pace: **+3% per rank**. Proposed safe hard cap: **107%**. Current overcap: 63% / 67% / 70% / 73% / 77% / 80% / 83% / 87% / 90% / 95%. Candidate overcap: 64.667% / 69.333% / 74% / 78.667% / 83.333% / 88% / 92.667% / 97.333% / 102% / 107%. Source: `records/skills/playerclass05/elementalinfusion1_buff.dbr` → `characterManaRegenModifier`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Maiven's Sphere of Protection — 12/12 → 22/22

*Tooltip:* A rare defensive technique of arcane magic invented by the revered Arcanist Maiven. Creates a protective shield around the caster, but at a great cost in concentration.

*Records:* `records/skills/playerclass05/sphereofprotection1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Damage Absorption** — natural cap **22% at 12/12**; current hard cap **32% at 22/22**. Natural-cap pace: **+1.333% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **35.333%**. **Review reason:** Absorption and maximum resistance can cross strong defensive breakpoints and require separate balance approval. Recommended default: preserve vanilla until explicitly approved. Current overcap: 23% / 24% / 25% / 26% / 27% / 28% / 29% / 30% / 31% / 32%. Candidate overcap: 23.333% / 24.667% / 26% / 27.333% / 28.667% / 30% / 31.333% / 32.667% / 34% / 35.333%. Source: `records/skills/playerclass05/sphereofprotection1.dbr` → `damageAbsorptionPercent`.

### Mental Alacrity — 10/10 → 20/20

*Tooltip:* Master Arcanists learn to channel their powers with great speed and concentration, no longer concerned by the paltry limitations of the mind.

*Records:* `records/skills/playerclass05/passive03.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Casting Speed** — natural cap **12% at 10/10**; current hard cap **18% at 20/20**. Natural-cap pace: **+1.333% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **26%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 12% / 13% / 13% / 14% / 14% / 15% / 15% / 16% / 16% / 18%. Candidate overcap: 13.333% / 14.667% / 16% / 17.333% / 18.667% / 20% / 21.333% / 22.667% / 24% / 26%. Source: `records/skills/playerclass05/passive03.dbr` → `characterSpellCastSpeedModifier`.

### Mirror of Ereoctes — 12/12 → 22/22

*Tooltip:* In an instant, the air around you becomes hard as stone, absorbing all manner of attacks and reflecting them back at the attacker; a favoured technique of Master Ereoctes.

*Records:* `records/skills/playerclass05/arcaneshield.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Skill Recharge** — natural cap **23 s at 12/12**; current hard cap **20 s at 22/22**. Natural-cap pace: **-1 s per rank**; weakest overcap pace: **-0.3 s per rank**. Unapproved linear-floor candidate: **13 s**. **Review reason:** Recharge changes alter uptime and rotation breakpoints rather than only restoring a stat growth rate. Recommended default: preserve vanilla until explicitly approved. Current overcap: 22.7 s / 22.4 s / 22.1 s / 21.8 s / 21.5 s / 21.2 s / 20.9 s / 20.6 s / 20.3 s / 20 s. Candidate overcap: 22 s / 21 s / 20 s / 19 s / 18 s / 17 s / 16 s / 15 s / 14 s / 13 s. Source: `records/skills/playerclass05/arcaneshield.dbr` → `skillCooldownTime`.

### Nullification — 10/10 → 20/20

*Tooltip:* Concentrates massive amounts of negative energy within the target area, purging all enemies caught within it of beneficial auras and spells while allies are purged of negative ailments, including damage over time effects.

*Records:* `records/skills/playerclass05/nullification.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Energy Cost** — natural cap **111 Energy at 10/10**; current hard cap **173 Energy at 20/20**. Natural-cap pace: **+6.333 Energy per rank**; weakest overcap pace: **+6 Energy per rank**. Unapproved linear-floor candidate: **175.667 Energy**. **Review reason:** Energy cost is a cost curve, not a player benefit; lowering its overcap penalty would be a separate balance change. Recommended default: preserve vanilla until explicitly approved. Current overcap: 117 Energy / 123 Energy / 130 Energy / 136 Energy / 142 Energy / 148 Energy / 154 Energy / 161 Energy / 167 Energy / 173 Energy. Candidate overcap: 117.333 Energy / 123.667 Energy / 130.667 Energy / 137 Energy / 143.333 Energy / 149.667 Energy / 156 Energy / 163 Energy / 169.333 Energy / 175.667 Energy. Source: `records/skills/playerclass05/nullification.dbr` → `skillManaCost`.

- [ ] **Explosion Radius** — natural cap **5 m at 10/10**; current hard cap **6 m at 20/20**. Natural-cap pace: **+0.267 m per rank**; weakest overcap pace: **+0.1 m per rank**. Unapproved linear-floor candidate: **7.667 m**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 5.1 m / 5.2 m / 5.3 m / 5.4 m / 5.5 m / 5.6 m / 5.7 m / 5.8 m / 5.9 m / 6 m. Candidate overcap: 5.267 m / 5.533 m / 5.8 m / 6.067 m / 6.333 m / 6.6 m / 6.867 m / 7.133 m / 7.4 m / 7.667 m. Source: `records/skills/playerclass05/nullification.dbr` → `projectileExplosionRadius`.

- [ ] **Reduced Target Elemental Resistance** — natural cap **33% at 10/10**; current hard cap **45% at 20/20**. Natural-cap pace: **+2.333% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **57%**. **Review reason:** Resistance reduction compounds party and damage scaling and must be reviewed against stacking rules. Recommended default: preserve vanilla until explicitly approved. Current overcap: 34% / 35% / 36% / 37% / 38% / 39% / 40% / 41% / 42% / 45%. Candidate overcap: 35.333% / 37.667% / 40% / 42.333% / 44.667% / 47% / 49.333% / 51.667% / 54% / 57%. Source: `records/skills/playerclass05/nullification.dbr` → `offensiveElementalReductionPercentMin`.

- [ ] **Skill Recharge** — natural cap **18 s at 10/10**; current hard cap **8 s at 20/20**. Natural-cap pace: **-2 s per rank**; weakest overcap pace: **-1 s per rank**. Unapproved linear-floor candidate: **-2 s**. **Review reason:** Recharge changes alter uptime and rotation breakpoints rather than only restoring a stat growth rate. Recommended default: preserve vanilla until explicitly approved. Current overcap: 17 s / 16 s / 15 s / 14 s / 13 s / 12 s / 11 s / 10 s / 9 s / 8 s. Candidate overcap: 16 s / 14 s / 12 s / 10 s / 8 s / 6 s / 4 s / 2 s / 0 s / -2 s. Source: `records/skills/playerclass05/nullification.dbr` → `skillCooldownTime`.

### Olexra's Flash Freeze — 12/12 → 22/22

*Tooltip:* A victim of political intrigue, Olexra was condemned to the Black Legion where her former life of arcane academia turned into a bitter struggle to survive on the frontlines of a brutal war. Olexra quickly put her studies to practical use, developing a technique to flash freeze enemies who made it within striking distance. This spell freezes enemies for its duration. Enemies resistant to freeze effects will suffer a reduced duration.

*Records:* `records/skills/playerclass05/chillingsurge_buff.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Duration** — natural cap **4.5 s at 12/12**; current hard cap **6 s at 22/22**. Natural-cap pace: **+0.233 s per rank**; weakest overcap pace: **+0.1 s per rank**. Unapproved linear-floor candidate: **6.833 s**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 4.6 s / 4.8 s / 4.9 s / 5.1 s / 5.2 s / 5.4 s / 5.5 s / 5.7 s / 5.8 s / 6 s. Candidate overcap: 4.733 s / 4.967 s / 5.2 s / 5.433 s / 5.667 s / 5.9 s / 6.133 s / 6.367 s / 6.6 s / 6.833 s. Source: `records/skills/playerclass05/chillingsurge_buff.dbr` → `skillActiveDuration`.

- [ ] **Energy Cost** — natural cap **81 Energy at 12/12**; current hard cap **135 Energy at 22/22**. Natural-cap pace: **+5.667 Energy per rank**; weakest overcap pace: **+5 Energy per rank**. Unapproved linear-floor candidate: **139 Energy**. **Review reason:** Energy cost is a cost curve, not a player benefit; lowering its overcap penalty would be a separate balance change. Recommended default: preserve vanilla until explicitly approved. Current overcap: 86 Energy / 92 Energy / 98 Energy / 103 Energy / 108 Energy / 114 Energy / 120 Energy / 125 Energy / 130 Energy / 135 Energy. Candidate overcap: 86.667 Energy / 92.667 Energy / 98.667 Energy / 104.333 Energy / 110 Energy / 116 Energy / 122 Energy / 127.667 Energy / 133.333 Energy / 139 Energy. Source: `records/skills/playerclass05/chillingsurge_buff.dbr` → `skillManaCost`.

- [ ] **Fire Resistance** — natural cap **-100% at 12/12**; current hard cap **-125% at 22/22**. Natural-cap pace: **-8% per rank**; weakest overcap pace: **-2% per rank**. Unapproved linear-floor candidate: **-180%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: -103% / -105% / -108% / -110% / -113% / -115% / -118% / -120% / -123% / -125%. Candidate overcap: -108% / -116% / -124% / -132% / -140% / -148% / -156% / -164% / -172% / -180%. Source: `records/skills/playerclass05/chillingsurge_buff.dbr` → `defensiveFire`.

- [ ] **Freeze Resistance** — natural cap **-35% at 12/12**; current hard cap **-45% at 22/22**. Natural-cap pace: **-2% per rank**; weakest overcap pace: **-1% per rank**. Unapproved linear-floor candidate: **-55%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: -36% / -37% / -38% / -39% / -40% / -41% / -42% / -43% / -44% / -45%. Candidate overcap: -37% / -39% / -41% / -43% / -45% / -47% / -49% / -51% / -53% / -55%. Source: `records/skills/playerclass05/chillingsurge_buff.dbr` → `defensiveFreeze`.

- [ ] **Target Radius** — natural cap **16 m at 12/12**; current hard cap **18 m at 22/22**. Natural-cap pace: **+1 m per rank**; weakest overcap pace: **+0.2 m per rank**. Unapproved linear-floor candidate: **26 m**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 16.2 m / 16.4 m / 16.6 m / 16.8 m / 17 m / 17.2 m / 17.4 m / 17.6 m / 17.8 m / 18 m. Candidate overcap: 17 m / 18 m / 19 m / 20 m / 21 m / 22 m / 23 m / 24 m / 25 m / 26 m. Source: `records/skills/playerclass05/chillingsurge_buff.dbr` → `skillTargetRadius`.

### Panetti's Replicating Missile — 16/16 → 26/26

*Tooltip:* The greatest of the Cortosian Arcanists, Panetti devoted himself to advancing the classic arcane missile. His triumph is an alteration that seemingly defies the laws of conservation of energy, causing the missile to be replicated on impact, spawning multiple copies of itself.

*Records:* `records/skills/playerclass05/arcanemissile.dbr` [Base game]

#### Safe changes

- [ ] **Elemental Damage (minimum)** — natural cap **215 at 16/16**; current hard cap **400 at 26/26**. Natural-cap pace: **+15.333 per rank**; weakest overcap pace: **+15 per rank**. Proposed safe hard cap: **401.667**. Current overcap: 230 / 245 / 260 / 275 / 290 / 308 / 326 / 348 / 370 / 400. Candidate overcap: 230.333 / 245.667 / 261 / 276.333 / 291.667 / 309.667 / 327.667 / 349.667 / 371.667 / 401.667. Source: `records/skills/playerclass05/arcanemissile.dbr` → `offensiveElementalMin`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Proliferation — 12/12 → 22/22

*Tooltip:* A more advanced technique of Replicating Missile perfected by a student of Panetti draws upon the energy of the target itself to create fragments of pure arcane energies.

*Records:* `records/skills/playerclass05/arcanemissile4.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Fragment Count (maximum)** — natural cap **5 at 12/12**; current hard cap **6 at 22/22**. Natural-cap pace: **+0.333 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **9**. **Review reason:** Target and projectile counts or behavior are discrete mechanics that may change hit density and performance. Recommended default: preserve vanilla until explicitly approved. Current overcap: 5 / 5 / 5 / 5 / 5 / 5 / 6 / 6 / 6 / 6. Candidate overcap: 5.333 / 5.667 / 6 / 6.333 / 6.667 / 7 / 8 / 8.333 / 8.667 / 9. Source: `records/skills/playerclass05/arcanemissile4.dbr` → `projectileFragmentsLaunchNumberMax`.

- [ ] **Fragment Count (minimum)** — natural cap **4 at 12/12**; current hard cap **5 at 22/22**. Natural-cap pace: **+0.333 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **8**. **Review reason:** Target and projectile counts or behavior are discrete mechanics that may change hit density and performance. Recommended default: preserve vanilla until explicitly approved. Current overcap: 4 / 4 / 4 / 4 / 4 / 4 / 4 / 4 / 5 / 5. Candidate overcap: 4.333 / 4.667 / 5 / 5.333 / 5.667 / 6 / 6.333 / 6.667 / 7.667 / 8. Source: `records/skills/playerclass05/arcanemissile4.dbr` → `projectileFragmentsLaunchNumberMin`.

### Reckless Power — 12/12 → 22/22

*Tooltip:* Turn your body into a conduit of the aether, manifesting terrifying arcane energies through your mortal form that ignite the air and send ripples through reality.

*Records:* `records/skills/playerclass05/mindovermatter1.dbr` [Base game]

#### Safe changes

- [ ] **Aether Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass05/mindovermatter1.dbr` → `offensiveAetherModifier`.

- [ ] **Burn Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass05/mindovermatter1.dbr` → `offensiveSlowFireModifier`.

- [ ] **Fire Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass05/mindovermatter1.dbr` → `offensiveFireModifier`.

#### To-be-exception

- [ ] **Attack Speed** — natural cap **14% at 12/12**; current hard cap **20% at 22/22**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **25%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 14% / 15% / 15% / 16% / 16% / 17% / 17% / 18% / 18% / 20%. Candidate overcap: 15% / 16% / 17% / 18% / 19% / 20% / 21% / 22% / 23% / 25%. Source: `records/skills/playerclass05/mindovermatter1.dbr` → `characterAttackSpeedModifier`.

- [ ] **Casting Speed** — natural cap **14% at 12/12**; current hard cap **20% at 22/22**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **25%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 14% / 15% / 15% / 16% / 16% / 17% / 17% / 18% / 18% / 20%. Candidate overcap: 15% / 16% / 17% / 18% / 19% / 20% / 21% / 22% / 23% / 25%. Source: `records/skills/playerclass05/mindovermatter1.dbr` → `characterSpellCastSpeedModifier`.

- [ ] **Retaliation Stun Chance** — natural cap **50% at 12/12**; current hard cap **65% at 22/22**. Natural-cap pace: **+2% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **70%**. **Review reason:** Chance and weighting fields are discrete probability mechanics and may have engine or balance caps. Recommended default: preserve vanilla until explicitly approved. Current overcap: 52% / 53% / 55% / 56% / 58% / 59% / 61% / 62% / 64% / 65%. Candidate overcap: 52% / 54% / 56% / 58% / 60% / 62% / 64% / 66% / 68% / 70%. Source: `records/skills/playerclass05/mindovermatter1.dbr` → `retaliationStunChance`.

### Star Pact — 12/12 → 22/22

*Tooltip:* Many Arcanists sacrifice much in the pursuit of limitless power. There are some who do not heed the ancient warnings and tap into sources of power that others would consider unsafe, or even unnatural. It is these Arcanists that strike fear into the hearts of lesser mortals.

*Records:* `records/skills/playerclass05/mindovermatter2.dbr` [Base game]

#### Safe changes

- [ ] **Cold Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass05/mindovermatter2.dbr` → `offensiveColdModifier`.

- [ ] **Electrocute Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass05/mindovermatter2.dbr` → `offensiveSlowLightningModifier`.

- [ ] **Frostburn Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass05/mindovermatter2.dbr` → `offensiveSlowColdModifier`.

- [ ] **Lightning Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass05/mindovermatter2.dbr` → `offensiveLightningModifier`.

#### To-be-exception

- [ ] **Skill Recharge Reduction** — natural cap **10% at 12/12**; current hard cap **15% at 22/22**. Natural-cap pace: **+0.333% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **16.667%**. **Review reason:** Recharge changes alter uptime and rotation breakpoints rather than only restoring a stat growth rate. Recommended default: preserve vanilla until explicitly approved. Current overcap: 11% / 11% / 12% / 12% / 13% / 13% / 14% / 14% / 15% / 15%. Candidate overcap: 11% / 11.333% / 12.333% / 12.667% / 13.667% / 14% / 15% / 15.333% / 16.333% / 16.667%. Source: `records/skills/playerclass05/mindovermatter2.dbr` → `skillCooldownReduction`.

### Trozan's Sky Shard — 16/16 → 26/26

*Tooltip:* The mythical Trozan was said to be a natural; wild and unwilling to conform to the doctrines of the Imperial Arcanists. When the Imperials finally surrounded his mountaintop refuge, Trozan humbled them using an unknown technique to bring down the very sky upon them.

*Records:* `records/skills/playerclass05/skyshard1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Energy Cost** — natural cap **120 Energy at 16/16**; current hard cap **182 Energy at 26/26**. Natural-cap pace: **+6.333 Energy per rank**; weakest overcap pace: **+6 Energy per rank**. Unapproved linear-floor candidate: **184.667 Energy**. **Review reason:** Energy cost is a cost curve, not a player benefit; lowering its overcap penalty would be a separate balance change. Recommended default: preserve vanilla until explicitly approved. Current overcap: 126 Energy / 132 Energy / 139 Energy / 145 Energy / 151 Energy / 157 Energy / 163 Energy / 170 Energy / 176 Energy / 182 Energy. Candidate overcap: 126.333 Energy / 132.667 Energy / 139.667 Energy / 146 Energy / 152.333 Energy / 158.667 Energy / 165 Energy / 172 Energy / 178.333 Energy / 184.667 Energy. Source: `records/skills/playerclass05/skyshard1.dbr` → `skillManaCost`.

- [ ] **Explosion Radius** — natural cap **3 m at 16/16**; current hard cap **3.3 m at 26/26**. Natural-cap pace: **+0.1 m per rank**; weakest overcap pace: **0 m per rank**. Unapproved linear-floor candidate: **4 m**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 3 m / 3.1 m / 3.1 m / 3.1 m / 3.2 m / 3.2 m / 3.2 m / 3.2 m / 3.3 m / 3.3 m. Candidate overcap: 3.1 m / 3.2 m / 3.3 m / 3.4 m / 3.5 m / 3.6 m / 3.7 m / 3.8 m / 3.9 m / 4 m. Source: `records/skills/playerclass05/skyshard1.dbr` → `projectileExplosionRadius`.

## Shaman

### Blood Pact — 12/12 → 22/22

*Tooltip:* Seal a pact with the wendigo spirit inhabiting the totem. So long as you stand within its aura, your taste for blood will be insatiable.

*Records:* `records/skills/playerclass06/pets/petskill_totem_bloodpact_buff.dbr` [Base game]

#### Safe changes

- [ ] **Bleeding Duration** — natural cap **50% at 12/12**; current hard cap **70% at 22/22**. Natural-cap pace: **+4% per rank**; weakest overcap pace: **+2% per rank**. Proposed safe hard cap: **90%**. Current overcap: 52% / 54% / 56% / 58% / 60% / 62% / 64% / 66% / 68% / 70%. Candidate overcap: 54% / 58% / 62% / 66% / 70% / 74% / 78% / 82% / 86% / 90%. Source: `records/skills/playerclass06/pets/petskill_totem_bloodpact_buff.dbr` → `offensiveSlowBleedingDurationModifier`.

- [ ] **Vitality Decay Duration** — natural cap **50% at 12/12**; current hard cap **70% at 22/22**. Natural-cap pace: **+4% per rank**; weakest overcap pace: **+2% per rank**. Proposed safe hard cap: **90%**. Current overcap: 52% / 54% / 56% / 58% / 60% / 62% / 64% / 66% / 68% / 70%. Candidate overcap: 54% / 58% / 62% / 66% / 70% / 74% / 78% / 82% / 86% / 90%. Source: `records/skills/playerclass06/pets/petskill_totem_bloodpact_buff.dbr` → `offensiveSlowLifeDurationModifier`.

#### To-be-exception

- [ ] **Attack Damage Converted to Health** — natural cap **8% at 12/12**; current hard cap **10% at 22/22**. Natural-cap pace: **+0.333% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **12.667%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 8% / 8% / 8% / 8% / 9% / 9% / 9% / 9% / 9% / 10%. Candidate overcap: 8.333% / 8.667% / 9% / 9.333% / 10.333% / 10.667% / 11% / 11.333% / 11.667% / 12.667%. Source: `records/skills/playerclass06/pets/petskill_totem_bloodpact_buff.dbr` → `offensiveLifeLeechMin`.

### Brute Force — 12/12 → 22/22

*Tooltip:* To many Shamans, a brutal two-handed weapon serves as the conduit for their storm powers. These practitioners favor a closer connection to the wilds through animalistic rage rather than through fragile wands and tomes which they consider to be the toys of those who would prefer to spend their time reading books over practicing their craft. This is a two-handed melee and two-handed ranged weapon bonus.

*Records:* `records/skills/playerclass06/passive01.dbr` [Base game]

#### Safe changes

- [ ] **Internal Trauma Duration** — natural cap **33% at 12/12**; current hard cap **50% at 22/22**. Natural-cap pace: **+1.667% per rank**; weakest overcap pace: **+1% per rank**. Proposed safe hard cap: **52%**. Current overcap: 34% / 35% / 36% / 38% / 40% / 42% / 44% / 46% / 48% / 50%. Candidate overcap: 34.667% / 36.333% / 38% / 40% / 42% / 44% / 46% / 48% / 50% / 52%. Source: `records/skills/playerclass06/passive01.dbr` → `offensiveSlowPhysicalDurationModifier`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Claw and Fang Attacks — 12/12 → 22/22

*Tooltip:* Innate Attack.

*Records:* `records/skills/playerclass06/pets/petskill_manticore_innate1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Conjure Primal Spirit — 12/12 → 22/22

*Tooltip:* Legends speak of a great predator, the loyal pet of Mogdrogen, which relentlessly hunts down anyone that treads into the beast god's domain uninvited. As a favored follower of Mogdrogen, you call upon this Primal Spirit to aid you in battle. The primal spirit scales with Pet Bonuses.

*Records:* `records/skills/playerclass06/summon_manticore1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Devouring Swarm — 16/16 → 26/26

*Tooltip:* Out in the wild, one must do whatever it takes to survive. Some Shaman Conjurers take this lesson to heart by conjuring a voracious swarm which hungrily tears apart anything it comes in contact with, inflicting grievous wounds and exposing vulnerabilities.

*Records:* `records/skills/playerclass06/devouringswarm1_buff.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Attack Damage Converted to Health** — natural cap **28% at 16/16**; current hard cap **33% at 26/26**. Natural-cap pace: **+0.667% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **36.333%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 28% / 28% / 29% / 29% / 29% / 30% / 30% / 31% / 32% / 33%. Candidate overcap: 28.667% / 29.333% / 30.333% / 31% / 31.667% / 32.667% / 33.333% / 34.333% / 35.333% / 36.333%. Source: `records/skills/playerclass06/devouringswarm1_buff.dbr` → `offensiveLifeLeechMin`.

- [ ] **Bleeding Resistance** — natural cap **-35% at 16/16**; current hard cap **-45% at 26/26**. Natural-cap pace: **-2% per rank**; weakest overcap pace: **-1% per rank**. Unapproved linear-floor candidate: **-55%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: -36% / -37% / -38% / -39% / -40% / -41% / -42% / -43% / -44% / -45%. Candidate overcap: -37% / -39% / -41% / -43% / -45% / -47% / -49% / -51% / -53% / -55%. Source: `records/skills/playerclass06/devouringswarm1_buff.dbr` → `defensiveBleeding`.

- [ ] **Vitality Resistance** — natural cap **-55% at 16/16**; current hard cap **-65% at 26/26**. Natural-cap pace: **-3% per rank**; weakest overcap pace: **-1% per rank**. Unapproved linear-floor candidate: **-85%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: -56% / -57% / -58% / -59% / -60% / -61% / -62% / -63% / -64% / -65%. Candidate overcap: -58% / -61% / -64% / -67% / -70% / -73% / -76% / -79% / -82% / -85%. Source: `records/skills/playerclass06/devouringswarm1_buff.dbr` → `defensiveLife`.

### Emboldening Presence — 12/12 → 22/22

*Tooltip:* The Briarthorn is an imposing presence on the battlefield which emboldens its allies to fight with greater ferocity.

*Records:* `records/skills/playerclass06/pets/petskill_thornedhorror_roar_buff.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Bleeding Resistance** — natural cap **32% at 12/12**; current hard cap **42% at 22/22**. Natural-cap pace: **+2.333% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **55.333%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: 33% / 34% / 35% / 36% / 37% / 38% / 39% / 40% / 41% / 42%. Candidate overcap: 34.333% / 36.667% / 39% / 41.333% / 43.667% / 46% / 48.333% / 50.667% / 53% / 55.333%. Source: `records/skills/playerclass06/pets/petskill_thornedhorror_roar_buff.dbr` → `defensiveBleeding`.

- [ ] **Physical Resistance** — natural cap **8 at 12/12**; current hard cap **12 at 22/22**. Natural-cap pace: **+0.667 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **16**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: 8 / 8 / 9 / 9 / 9 / 10 / 10 / 10 / 11 / 12. Candidate overcap: 8.667 / 9.333 / 10.333 / 11 / 11.667 / 12.667 / 13.333 / 14 / 15 / 16. Source: `records/skills/playerclass06/pets/petskill_thornedhorror_roar_buff.dbr` → `defensivePhysical`.

### Feral Hunger — 10/10 → 20/20

*Tooltip:* Embrace your primal side, shredding your enemies and feasting voraciously on the spilled blood. Requires a two-handed melee or two-handed ranged weapon. When used with a melee weapon, the attack strikes multiple nearby targets. Activates off of default weapon attacks.

*Records:* `records/skills/playerclass06/weaponpool01.dbr` [Base game]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **180% at 10/10**; current hard cap **230% at 20/20**. Natural-cap pace: **+5.667% per rank**; weakest overcap pace: **+5% per rank**. Proposed safe hard cap: **236.667%**. Current overcap: 185% / 190% / 195% / 200% / 205% / 210% / 215% / 220% / 225% / 230%. Candidate overcap: 185.667% / 191.333% / 197% / 202.667% / 208.333% / 214% / 219.667% / 225.333% / 231% / 236.667%. Source: `records/skills/playerclass06/weaponpool01.dbr` → `weaponDamagePct`.

#### To-be-exception

- [ ] **Activation Weight** — natural cap **26% at 10/10**; current hard cap **30% at 20/20**. Natural-cap pace: **+0.667% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **34%**. **Review reason:** Chance and weighting fields are discrete probability mechanics and may have engine or balance caps. Recommended default: preserve vanilla until explicitly approved. Current overcap: 27% / 27% / 27% / 28% / 28% / 28% / 29% / 29% / 29% / 30%. Candidate overcap: 27% / 27.667% / 28.333% / 29.333% / 30% / 30.667% / 31.667% / 32.333% / 33% / 34%. Source: `records/skills/playerclass06/weaponpool01.dbr` → `skillChanceWeight`.

- [ ] **Attack Damage Converted to Health** — natural cap **33% at 10/10**; current hard cap **40% at 20/20**. Natural-cap pace: **+2% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **53%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 33% / 34% / 35% / 35% / 36% / 37% / 37% / 38% / 39% / 40%. Candidate overcap: 35% / 37% / 39% / 41% / 43% / 45% / 47% / 49% / 51% / 53%. Source: `records/skills/playerclass06/weaponpool01.dbr` → `offensiveLifeLeechMin`.

### Grasping Vines — 12/12 → 22/22

*Tooltip:* At your whim, thorned vines erupt from the earth underneath your foes, inhibiting their movement.

*Records:* `records/skills/playerclass06/graspingvines1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Explosion Radius** — natural cap **7.5 m at 12/12**; current hard cap **8.5 m at 22/22**. Natural-cap pace: **+0.2 m per rank**; weakest overcap pace: **+0.1 m per rank**. Unapproved linear-floor candidate: **9.5 m**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 7.6 m / 7.7 m / 7.8 m / 7.9 m / 8 m / 8.1 m / 8.2 m / 8.3 m / 8.4 m / 8.5 m. Candidate overcap: 7.7 m / 7.9 m / 8.1 m / 8.3 m / 8.5 m / 8.7 m / 8.9 m / 9.1 m / 9.3 m / 9.5 m. Source: `records/skills/playerclass06/graspingvines1.dbr` → `projectileExplosionRadius`.

- [ ] **RunSpeed Damage (minimum)** — natural cap **75% at 12/12**; current hard cap **80% at 22/22**. Natural-cap pace: **+3% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **105%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 75% / 76% / 76% / 77% / 77% / 78% / 78% / 79% / 79% / 80%. Candidate overcap: 78% / 81% / 84% / 87% / 90% / 93% / 96% / 99% / 102% / 105%. Source: `records/skills/playerclass06/graspingvines1.dbr` → `offensiveSlowRunSpeedMin`.

### Ground Slam — 12/12 → 22/22

*Tooltip:* The Briarthorn slams its thorned claws into the ground, releasing a cascade of spines to impale nearby foes.

*Records:* `records/skills/playerclass06/pets/petskill_thornedhorror_slam01.dbr` [Base game]; `records/skills/playerclass06/pets/petskill_thornedhorror_slash01.dbr` [Base game]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **125% at 12/12**; current hard cap **160% at 22/22**. Natural-cap pace: **+5% per rank**; weakest overcap pace: **+3% per rank**. Proposed safe hard cap: **178%**. Current overcap: 128% / 131% / 134% / 137% / 140% / 143% / 146% / 149% / 152% / 160%. Candidate overcap: 130% / 135% / 140% / 145% / 150% / 155% / 160% / 165% / 170% / 178%. Source: `records/skills/playerclass06/pets/petskill_thornedhorror_slam01.dbr` → `weaponDamagePct`.

#### To-be-exception

- [ ] **Stun Duration (minimum)** — natural cap **4 at 12/12**; current hard cap **5 at 22/22**. Natural-cap pace: **+0.2 per rank**; weakest overcap pace: **+0.1 per rank**. Unapproved linear-floor candidate: **6**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 4.1 / 4.2 / 4.3 / 4.4 / 4.5 / 4.6 / 4.7 / 4.8 / 4.9 / 5. Candidate overcap: 4.2 / 4.4 / 4.6 / 4.8 / 5 / 5.2 / 5.4 / 5.6 / 5.8 / 6. Source: `records/skills/playerclass06/pets/petskill_thornedhorror_slam01.dbr` → `offensiveStunMin`.

- [ ] **Taunt** — natural cap **100% at 12/12**; current hard cap **100% at 22/22**. Natural-cap pace: **+5% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **150%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 100% / 100% / 100% / 100% / 100% / 100% / 100% / 100% / 100% / 100%. Candidate overcap: 105% / 110% / 115% / 120% / 125% / 130% / 135% / 140% / 145% / 150%. Source: `records/skills/playerclass06/pets/petskill_thornedhorror_slam01.dbr` → `offensiveTauntMin`.

### Howling Wind — 16/16 → 26/26

*Records:* `records/skills/playerclass06/pets/petskill_whirlwind_whirlwind_buff.dbr` [Base game]; `records/skills/playerclass06/pets/petskill_whirlwind_whirlwindacid_buff.dbr` [Ashes of Malmouth]; `records/skills/playerclass06/pets/petskill_whirlwind_whirlwindaether_buff.dbr` [Forgotten Gods]; `records/skills/playerclass06/pets/petskill_whirlwind_whirlwindchaos_buff.dbr` [Fangs of Asterkarn]; `records/skills/playerclass06/pets/petskill_whirlwind_whirlwindfire_buff.dbr` [Fangs of Asterkarn]; `records/skills/playerclass06/pets/petskill_whirlwind_whirlwindvitality_buff.dbr` [Forgotten Gods]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Impaired Aim** — natural cap **50% at 16/16**; current hard cap **60% at 26/26**. Natural-cap pace: **+2% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **70%**. **Review reason:** Target and projectile counts or behavior are discrete mechanics that may change hit density and performance. Recommended default: preserve vanilla until explicitly approved. Current overcap: 51% / 52% / 53% / 54% / 55% / 56% / 57% / 58% / 59% / 60%. Candidate overcap: 52% / 54% / 56% / 58% / 60% / 62% / 64% / 66% / 68% / 70%. Source: `records/skills/playerclass06/pets/petskill_whirlwind_whirlwind_buff.dbr` → `offensiveProjectileFumbleMin`.

- [ ] **Impaired Aim** — natural cap **50% at 16/16**; current hard cap **60% at 26/26**. Natural-cap pace: **+2% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **70%**. **Review reason:** Target and projectile counts or behavior are discrete mechanics that may change hit density and performance. Recommended default: preserve vanilla until explicitly approved. Current overcap: 51% / 52% / 53% / 54% / 55% / 56% / 57% / 58% / 59% / 60%. Candidate overcap: 52% / 54% / 56% / 58% / 60% / 62% / 64% / 66% / 68% / 70%. Source: `records/skills/playerclass06/pets/petskill_whirlwind_whirlwindacid_buff.dbr` → `offensiveProjectileFumbleMin`.

- [ ] **Impaired Aim** — natural cap **50% at 16/16**; current hard cap **60% at 26/26**. Natural-cap pace: **+2% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **70%**. **Review reason:** Target and projectile counts or behavior are discrete mechanics that may change hit density and performance. Recommended default: preserve vanilla until explicitly approved. Current overcap: 51% / 52% / 53% / 54% / 55% / 56% / 57% / 58% / 59% / 60%. Candidate overcap: 52% / 54% / 56% / 58% / 60% / 62% / 64% / 66% / 68% / 70%. Source: `records/skills/playerclass06/pets/petskill_whirlwind_whirlwindaether_buff.dbr` → `offensiveProjectileFumbleMin`.

- [ ] **Impaired Aim** — natural cap **50% at 16/16**; current hard cap **60% at 26/26**. Natural-cap pace: **+2% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **70%**. **Review reason:** Target and projectile counts or behavior are discrete mechanics that may change hit density and performance. Recommended default: preserve vanilla until explicitly approved. Current overcap: 51% / 52% / 53% / 54% / 55% / 56% / 57% / 58% / 59% / 60%. Candidate overcap: 52% / 54% / 56% / 58% / 60% / 62% / 64% / 66% / 68% / 70%. Source: `records/skills/playerclass06/pets/petskill_whirlwind_whirlwindchaos_buff.dbr` → `offensiveProjectileFumbleMin`.

- [ ] **Impaired Aim** — natural cap **50% at 16/16**; current hard cap **60% at 26/26**. Natural-cap pace: **+2% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **70%**. **Review reason:** Target and projectile counts or behavior are discrete mechanics that may change hit density and performance. Recommended default: preserve vanilla until explicitly approved. Current overcap: 51% / 52% / 53% / 54% / 55% / 56% / 57% / 58% / 59% / 60%. Candidate overcap: 52% / 54% / 56% / 58% / 60% / 62% / 64% / 66% / 68% / 70%. Source: `records/skills/playerclass06/pets/petskill_whirlwind_whirlwindfire_buff.dbr` → `offensiveProjectileFumbleMin`.

- [ ] **Impaired Aim** — natural cap **50% at 16/16**; current hard cap **60% at 26/26**. Natural-cap pace: **+2% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **70%**. **Review reason:** Target and projectile counts or behavior are discrete mechanics that may change hit density and performance. Recommended default: preserve vanilla until explicitly approved. Current overcap: 51% / 52% / 53% / 54% / 55% / 56% / 57% / 58% / 59% / 60%. Candidate overcap: 52% / 54% / 56% / 58% / 60% / 62% / 64% / 66% / 68% / 70%. Source: `records/skills/playerclass06/pets/petskill_whirlwind_whirlwindvitality_buff.dbr` → `offensiveProjectileFumbleMin`.

### Life Tap — 12/12 → 22/22

*Tooltip:* Wendigo Totems represent a darker side to Shaman rituals, embracing the vicious duality of nature: one must die so that another may feed and live. Once placed, the totem will drain the life from nearby foes, all while creating a soothing aura that heals allies. The totems are taboo to most tribes though as the primal hunger spirit invoked to power the totem is perilous to control and has driven many shamans mad, filling them with an insatiable hunger that inevitably leads to cannibalism. Wendigo Totems scale with player damage bonuses.

*Records:* `records/skills/playerclass06/pets/petskill_totem_wendigoaura.dbr` [Base game]; `records/skills/playerclass06/pets/petskill_totem_wendigolightningaura.dbr` [Fangs of Asterkarn]; `records/skills/playerclass06/pets/petskill_totem_wendigopierceaura.dbr` [Fangs of Asterkarn]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Maelstrom — 12/12 → 22/22

*Tooltip:* Unleash the ultimate wrath of the sky, instilling the Wind Devil with static energy that strikes down nearby foes with bolts of lightning.

*Records:* `records/skills/playerclass06/pets/petskill_whirlwind_stormcaller1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Number of Targets** — natural cap **5 at 12/12**; current hard cap **5 at 22/22**. Natural-cap pace: **+0.333 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **8.333**. **Review reason:** Target and projectile counts or behavior are discrete mechanics that may change hit density and performance. Recommended default: preserve vanilla until explicitly approved. Current overcap: 5 / 5 / 5 / 5 / 5 / 5 / 5 / 5 / 5 / 5. Candidate overcap: 5.333 / 5.667 / 6 / 6.333 / 6.667 / 7 / 7.333 / 7.667 / 8 / 8.333. Source: `records/skills/playerclass06/pets/petskill_whirlwind_stormcaller1.dbr` → `skillTargetNumber`.

### Mend Wounds — 12/12 → 22/22

*Tooltip:* Wendigo Totems represent a darker side to Shaman rituals, embracing the vicious duality of nature: one must die so that another may feed and live. Once placed, the totem will drain the life from nearby foes, all while creating a soothing aura that heals allies. The totems are taboo to most tribes though as the primal hunger spirit invoked to power the totem is perilous to control and has driven many shamans mad, filling them with an insatiable hunger that inevitably leads to cannibalism. Wendigo Totems scale with player damage bonuses.

*Records:* `records/skills/playerclass06/pets/petskill_totem_heal_01_buff.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Health Restored** — natural cap **6% at 12/12**; current hard cap **9% at 22/22**. Natural-cap pace: **+0.333% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **11.333%**. **Review reason:** Percent health restoration can cross recovery breakpoints and needs skill-specific sustain testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 6% / 6% / 7% / 7% / 7% / 7% / 8% / 8% / 8% / 9%. Candidate overcap: 6.333% / 6.667% / 7.667% / 8% / 8.333% / 8.667% / 9.667% / 10% / 10.333% / 11.333%. Source: `records/skills/playerclass06/pets/petskill_totem_heal_01_buff.dbr` → `skillLifePercent`.

### Mogdrogen's Pact — 12/12 → 22/22

*Tooltip:* Call upon the beast god, Mogdrogen, to bestow nature's blessing upon you and your nearby allies.

*Records:* `records/skills/playerclass06/natureblessing1_buff.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Primal Bond — 12/12 → 22/22

*Tooltip:* Embrace your savage side as you seal your bond with Mogdrogen. Creatures from the beast god's domain readily answer your call.

*Records:* `records/skills/playerclass06/primalbond01.dbr` [Base game]

#### Safe changes

- [ ] **Bleeding Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass06/primalbond01.dbr` → `offensiveSlowBleedingModifier`.

- [ ] **Bleeding Duration** — natural cap **75% at 12/12**; current hard cap **125% at 22/22**. Natural-cap pace: **+5.667% per rank**; weakest overcap pace: **+5% per rank**. Proposed safe hard cap: **131.667%**. Current overcap: 80% / 85% / 90% / 95% / 100% / 105% / 110% / 115% / 120% / 125%. Candidate overcap: 80.667% / 86.333% / 92% / 97.667% / 103.333% / 109% / 114.667% / 120.333% / 126% / 131.667%. Source: `records/skills/playerclass06/primalbond01.dbr` → `offensiveSlowBleedingDurationModifier`.

- [ ] **Internal Trauma Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass06/primalbond01.dbr` → `offensiveSlowPhysicalModifier`.

- [ ] **Physical Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass06/primalbond01.dbr` → `offensivePhysicalModifier`.

#### To-be-exception

- [ ] **Damage Absorption** — natural cap **15% at 12/12**; current hard cap **20% at 22/22**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **25%**. **Review reason:** Absorption and maximum resistance can cross strong defensive breakpoints and require separate balance approval. Recommended default: preserve vanilla until explicitly approved. Current overcap: 15% / 16% / 16% / 17% / 17% / 18% / 18% / 19% / 19% / 20%. Candidate overcap: 16% / 17% / 18% / 19% / 20% / 21% / 22% / 23% / 24% / 25%. Source: `records/skills/playerclass06/primalbond01.dbr` → `damageAbsorptionPercent`.

- [ ] **Racial Bonus Defense** — natural cap **18% at 12/12**; current hard cap **25% at 22/22**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **28%**. **Review reason:** This is a specialized modifier with cap or encounter-specific consequences. Recommended default: preserve vanilla until explicitly approved. Current overcap: 18% / 19% / 19% / 20% / 20% / 21% / 22% / 23% / 24% / 25%. Candidate overcap: 19% / 20% / 21% / 22% / 23% / 24% / 25% / 26% / 27% / 28%. Source: `records/skills/playerclass06/primalbond01.dbr` → `racialBonusPercentDefense`.

### Primal Strike — 16/16 → 26/26

*Tooltip:* The first rite undertaken by novice Shamans is to imbue their favored weapon with the raw force of a thunderstorm. Those that survive this critical step become scions to Mogdrogen's will and guardians of their people. Requires a two-handed melee or two-handed ranged weapon.

*Records:* `records/skills/playerclass06/savagestrike1.dbr` [Base game]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **355% at 16/16**; current hard cap **505% at 26/26**. Natural-cap pace: **+16% per rank**; weakest overcap pace: **+15% per rank**. Proposed safe hard cap: **515%**. Current overcap: 370% / 385% / 400% / 415% / 430% / 445% / 460% / 475% / 490% / 505%. Candidate overcap: 371% / 387% / 403% / 419% / 435% / 451% / 467% / 483% / 499% / 515%. Source: `records/skills/playerclass06/savagestrike1.dbr` → `weaponDamagePct`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Savagery — 16/16 → 26/26

*Tooltip:* The heat of battle rouses savage animal impulses within you that heighten your aggression and empower you with nature's fury. When used as your default weapon attack, Savagery increases the intensity of your attacks with every strike. Building up charges increases the potency of the bonuses.

*Records:* `records/skills/playerclass06/savagery1.dbr` [Base game]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **150% at 16/16**; current hard cap **162% at 26/26**. Natural-cap pace: **+3% per rank**; weakest overcap pace: **+1% per rank**. Proposed safe hard cap: **180%**. Current overcap: 151% / 152% / 153% / 154% / 155% / 156% / 157% / 158% / 159% / 162%. Candidate overcap: 153% / 156% / 159% / 162% / 165% / 168% / 171% / 174% / 177% / 180%. Source: `records/skills/playerclass06/savagery1.dbr` → `weaponDamagePct`.

#### To-be-exception

- [ ] **Charge Level** — natural cap **8 at 16/16**; current hard cap **9 at 26/26**. Natural-cap pace: **+0.333 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **12**. **Review reason:** Charge mechanics use discrete thresholds and need skill-specific behavior testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 8 / 8 / 8 / 8 / 8 / 8 / 8 / 9 / 9 / 9. Candidate overcap: 8.333 / 8.667 / 9 / 9.333 / 9.667 / 10 / 10.333 / 11.333 / 11.667 / 12. Source: `records/skills/playerclass06/savagery1.dbr` → `skillChargeLevel`.

- [ ] **Energy Cost** — natural cap **7 Energy at 16/16**; current hard cap **10 Energy at 26/26**. Natural-cap pace: **+0.333 Energy per rank**; weakest overcap pace: **0 Energy per rank**. Unapproved linear-floor candidate: **12.333 Energy**. **Review reason:** Energy cost is a cost curve, not a player benefit; lowering its overcap penalty would be a separate balance change. Recommended default: preserve vanilla until explicitly approved. Current overcap: 7 Energy / 8 Energy / 8 Energy / 8 Energy / 9 Energy / 9 Energy / 9 Energy / 10 Energy / 10 Energy / 10 Energy. Candidate overcap: 7.333 Energy / 8.333 Energy / 8.667 Energy / 9 Energy / 10 Energy / 10.333 Energy / 10.667 Energy / 11.667 Energy / 12 Energy / 12.333 Energy. Source: `records/skills/playerclass06/savagery1.dbr` → `skillManaCost`.

### Storm Strike — 16/16 → 26/26

*Records:* `records/skills/playerclass06/pets/petskill_totemstorm_chainaether.dbr` [Ashes of Malmouth]; `records/skills/playerclass06/pets/petskill_totemstorm_chainfire.dbr` [Ashes of Malmouth]; `records/skills/playerclass06/pets/petskill_totemstorm_chainlightning.dbr` [Base game]; `records/skills/playerclass06/pets/petskill_totemstorm_chainvitality.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Storm Totem — 16/16 → 26/26

*Tooltip:* Channeling the power of storm is one of the most sacred rites of the Stormcallers. With sufficient practice, a Shaman can imbue a totem with the destructive force of lightning, causing it to rapidly fire off electric bursts at nearby foes. Storm Totems scale with player damage bonuses.

*Records:* `records/skills/playerclass06/stormtotem01.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Stormcaller's Pact — 12/12 → 22/22

*Tooltip:* Become one with Ultos, god of the sky, turning your mortal form into a conduit for the destructive power of lightning storms.

*Records:* `records/skills/playerclass06/stormcaller1.dbr` [Base game]

#### Safe changes

- [ ] **Cold Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass06/stormcaller1.dbr` → `offensiveColdModifier`.

- [ ] **Electrocute Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass06/stormcaller1.dbr` → `offensiveSlowLightningModifier`.

- [ ] **Frostburn Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass06/stormcaller1.dbr` → `offensiveSlowColdModifier`.

- [ ] **Lightning Damage** — natural cap **405% at 12/12**; current hard cap **630% at 22/22**. Natural-cap pace: **+30% per rank**; weakest overcap pace: **+21% per rank**. Proposed safe hard cap: **705%**. Current overcap: 429% / 450% / 474% / 495% / 519% / 540% / 564% / 585% / 609% / 630%. Candidate overcap: 435% / 465% / 495% / 525% / 555% / 585% / 615% / 645% / 675% / 705%. Source: `records/skills/playerclass06/stormcaller1.dbr` → `offensiveLightningModifier`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Summon Briarthorn — 16/16 → 26/26

*Tooltip:* Briarthorns are tenacious beasts, born of brambly woods and wild magic. Skilled Shamans can call upon these creatures to aid them in battle. Only one briarthorn can be summoned at any one time. The briarthorn scales with Pet Bonuses.

*Records:* `records/skills/playerclass06/summon_briarthorn1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Summon Primal Spirit — internal pet ability — 12/12 → 22/22

*Records:* `records/skills/playerclass06/pets/petskill_manticore_maul.dbr` [Base game]; `records/skills/playerclass06/pets/petskill_manticore_scaling.dbr` [Base game]; `records/skills/playerclass06/pets/petskill_manticore_shadowstrike.dbr` [Base game]

#### Safe changes

- [ ] **CritDamage Damage** — natural cap **33% at 12/12**; current hard cap **45% at 22/22**. Natural-cap pace: **+2% per rank**; weakest overcap pace: **+1% per rank**. Proposed safe hard cap: **54%**. Current overcap: 34% / 35% / 36% / 37% / 38% / 39% / 40% / 41% / 42% / 45%. Candidate overcap: 35% / 37% / 39% / 41% / 43% / 45% / 47% / 49% / 51% / 54%. Source: `records/skills/playerclass06/pets/petskill_manticore_scaling.dbr` → `offensiveCritDamageModifier`.

- [ ] **Weapon Damage** — natural cap **131% at 12/12**; current hard cap **152% at 22/22**. Natural-cap pace: **+2.333% per rank**; weakest overcap pace: **+2% per rank**. Proposed safe hard cap: **155%**. Current overcap: 133% / 135% / 137% / 139% / 141% / 143% / 145% / 147% / 149% / 152%. Candidate overcap: 133.333% / 135.667% / 138% / 140.333% / 142.667% / 145% / 147.333% / 149.667% / 152% / 155%. Source: `records/skills/playerclass06/pets/petskill_manticore_maul.dbr` → `weaponDamagePct`.

- [ ] **Weapon Damage** — natural cap **131% at 12/12**; current hard cap **152% at 22/22**. Natural-cap pace: **+2.333% per rank**; weakest overcap pace: **+2% per rank**. Proposed safe hard cap: **155%**. Current overcap: 133% / 135% / 137% / 139% / 141% / 143% / 145% / 147% / 149% / 152%. Candidate overcap: 133.333% / 135.667% / 138% / 140.333% / 142.667% / 145% / 147.333% / 149.667% / 152% / 155%. Source: `records/skills/playerclass06/pets/petskill_manticore_shadowstrike.dbr` → `weaponDamagePct`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Tail Strike — 12/12 → 22/22

*Tooltip:* Strike the target with a poisonous tail.

*Records:* `records/skills/playerclass06/pets/petskill_manticore_tailstrike.dbr` [Base game]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **131% at 12/12**; current hard cap **152% at 22/22**. Natural-cap pace: **+2.333% per rank**; weakest overcap pace: **+2% per rank**. Proposed safe hard cap: **155%**. Current overcap: 133% / 135% / 137% / 139% / 141% / 143% / 145% / 147% / 149% / 152%. Candidate overcap: 133.333% / 135.667% / 138% / 140.333% / 142.667% / 145% / 147.333% / 149.667% / 152% / 155%. Source: `records/skills/playerclass06/pets/petskill_manticore_tailstrike.dbr` → `weaponDamagePct`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Thorned Claws — 16/16 → 26/26

*Tooltip:* Innate Attack.

*Records:* `records/skills/playerclass06/pets/petskill_thornedhorror_innate1.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Torrent — 12/12 → 22/22

*Tooltip:* Torrential force cascades from your weapon, shocking your target and leaping to further foes.

*Records:* `records/skills/playerclass06/savagestrike2.dbr` [Base game]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Maximum Sparks** — natural cap **5 at 12/12**; current hard cap **10 at 22/22**. Natural-cap pace: **+0.333 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **11.667**. **Review reason:** Target and projectile counts or behavior are discrete mechanics that may change hit density and performance. Recommended default: preserve vanilla until explicitly approved. Current overcap: 5 / 6 / 6 / 7 / 7 / 8 / 8 / 9 / 9 / 10. Candidate overcap: 5.333 / 6.333 / 6.667 / 7.667 / 8 / 9 / 9.333 / 10.333 / 10.667 / 11.667. Source: `records/skills/playerclass06/savagestrike2.dbr` → `sparkMaxNumber`.

### Upheaval — 10/10 → 20/20

*Tooltip:* Your brutal strikes are imbued with the strength of the earth, sometimes reverberating in a shockwave that strikes the initial target and all those around them. Requires a two-handed melee or two-handed ranged weapon and activates off of default weapon attacks.

*Records:* `records/skills/playerclass06/weaponpool02.dbr` [Base game]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **140% at 10/10**; current hard cap **170% at 20/20**. Natural-cap pace: **+6% per rank**; weakest overcap pace: **+3% per rank**. Proposed safe hard cap: **200%**. Current overcap: 143% / 146% / 149% / 152% / 155% / 158% / 161% / 164% / 167% / 170%. Candidate overcap: 146% / 152% / 158% / 164% / 170% / 176% / 182% / 188% / 194% / 200%. Source: `records/skills/playerclass06/weaponpool02.dbr` → `weaponDamagePct`.

#### To-be-exception

- [ ] **Activation Weight** — natural cap **26% at 10/10**; current hard cap **30% at 20/20**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **36%**. **Review reason:** Chance and weighting fields are discrete probability mechanics and may have engine or balance caps. Recommended default: preserve vanilla until explicitly approved. Current overcap: 27% / 27% / 27% / 28% / 28% / 28% / 29% / 29% / 29% / 30%. Candidate overcap: 27% / 28% / 29% / 30% / 31% / 32% / 33% / 34% / 35% / 36%. Source: `records/skills/playerclass06/weaponpool02.dbr` → `skillChanceWeight`.

### Wendigo Totem — 12/12 → 22/22

*Tooltip:* Wendigo Totems represent a darker side to Shaman rituals, embracing the vicious duality of nature: one must die so that another may feed and live. Once placed, the totem will drain the life from nearby foes, all while creating a soothing aura that heals allies. The totems are taboo to most tribes though as the primal hunger spirit invoked to power the totem is perilous to control and has driven many shamans mad, filling them with an insatiable hunger that inevitably leads to cannibalism. Wendigo Totems scale with player damage bonuses.

*Records:* `records/skills/playerclass06/totem1.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Wind Devil — 16/16 → 26/26

*Tooltip:* Shamans were often called upon to bring rain in times of heavy drought. This ritual has been manipulated by clever Stormcallers to conjure a swirling wind devil that lifts rocks and debris into the air, battering foes and ravaging them with the harsh power of the elements. Wind Devils scale with player damage bonuses.

*Records:* `records/skills/playerclass06/squall1.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

## Inquisitor

### Aura of Censure — 12/12 → 22/22

*Tooltip:* An Inquisitor's mere presence is enough to inspire dread within the foes of mankind. With arcane runes emblazoned upon their armor, Inquisitors march into the thick of battle with fire in their hearts.

*Records:* `records/skills/playerclass07/auracensure1_buff.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **ElementalResistance Resistance** — natural cap **-25% at 12/12**; current hard cap **-35% at 22/22**. Natural-cap pace: **-2% per rank**; weakest overcap pace: **-1% per rank**. Unapproved linear-floor candidate: **-45%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: -26% / -27% / -28% / -29% / -30% / -31% / -32% / -33% / -34% / -35%. Candidate overcap: -27% / -29% / -31% / -33% / -35% / -37% / -39% / -41% / -43% / -45%. Source: `records/skills/playerclass07/auracensure1_buff.dbr` → `defensiveElementalResistance`.

- [ ] **Reduced Target Damage** — natural cap **15% at 12/12**; current hard cap **22% at 22/22**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **25%**. **Review reason:** Resistance reduction compounds party and damage scaling and must be reviewed against stacking rules. Recommended default: preserve vanilla until explicitly approved. Current overcap: 16% / 17% / 17% / 18% / 19% / 19% / 20% / 21% / 21% / 22%. Candidate overcap: 16% / 17% / 18% / 19% / 20% / 21% / 22% / 23% / 24% / 25%. Source: `records/skills/playerclass07/auracensure1_buff.dbr` → `offensiveTotalDamageReductionPercentMin`.

- [ ] **Skill Disruption Chance** — natural cap **20% at 12/12**; current hard cap **25% at 22/22**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **30%**. **Review reason:** Chance and weighting fields are discrete probability mechanics and may have engine or balance caps. Recommended default: preserve vanilla until explicitly approved. Current overcap: 20% / 21% / 21% / 22% / 22% / 23% / 23% / 24% / 24% / 25%. Candidate overcap: 21% / 22% / 23% / 24% / 25% / 26% / 27% / 28% / 29% / 30%. Source: `records/skills/playerclass07/auracensure1_buff.dbr` → `offensiveDisruptionChance`.

### Aura of Conviction — 12/12 → 22/22

*Tooltip:* The protective properties of the runes emblazoned upon Inquisitor armor can be extended to nearby allies, offering enhanced combat awareness and martial prowess.

*Records:* `records/skills/playerclass07/auraconviction1_buff.dbr` [Ashes of Malmouth]

#### Safe changes

- [ ] **Internal Trauma Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass07/auraconviction1_buff.dbr` → `offensiveSlowPhysicalModifier`.

- [ ] **Offensive Ability** — natural cap **146 at 12/12**; current hard cap **236 at 22/22**. Natural-cap pace: **+11 per rank**; weakest overcap pace: **+9 per rank**. Proposed safe hard cap: **256**. Current overcap: 155 / 164 / 173 / 182 / 191 / 200 / 209 / 218 / 227 / 236. Candidate overcap: 157 / 168 / 179 / 190 / 201 / 212 / 223 / 234 / 245 / 256. Source: `records/skills/playerclass07/auraconviction1_buff.dbr` → `characterOffensiveAbility`.

- [ ] **Physical Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass07/auraconviction1_buff.dbr` → `offensivePhysicalModifier`.

- [ ] **Pierce Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass07/auraconviction1_buff.dbr` → `offensivePierceModifier`.

#### To-be-exception

- [ ] **FireDuration Resistance** — natural cap **50% at 12/12**; current hard cap **70% at 22/22**. Natural-cap pace: **+3% per rank**; weakest overcap pace: **+2% per rank**. Unapproved linear-floor candidate: **80%**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 52% / 54% / 56% / 58% / 60% / 62% / 64% / 66% / 68% / 70%. Candidate overcap: 53% / 56% / 59% / 62% / 65% / 68% / 71% / 74% / 77% / 80%. Source: `records/skills/playerclass07/auraconviction1_buff.dbr` → `defensiveFireDuration`.

- [ ] **Physical Resistance** — natural cap **8 at 12/12**; current hard cap **12 at 22/22**. Natural-cap pace: **+0.667 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **16**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: 8 / 8 / 9 / 9 / 9 / 10 / 10 / 10 / 11 / 12. Candidate overcap: 8.667 / 9.333 / 10.333 / 11 / 11.667 / 12.667 / 13.333 / 14 / 15 / 16. Source: `records/skills/playerclass07/auraconviction1_buff.dbr` → `defensivePhysical`.

### Barrier — 12/12 → 22/22

*Records:* `records/skills/playerclass07/pets/petskill_arcaneseal_defenseaura_buff.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **ElementalResistance Resistance** — natural cap **30% at 12/12**; current hard cap **40% at 22/22**. Natural-cap pace: **+2% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **50%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: 31% / 32% / 33% / 34% / 35% / 36% / 37% / 38% / 39% / 40%. Candidate overcap: 32% / 34% / 36% / 38% / 40% / 42% / 44% / 46% / 48% / 50%. Source: `records/skills/playerclass07/pets/petskill_arcaneseal_defenseaura_buff.dbr` → `defensiveElementalResistance`.

### Bursting Round — 10/10 → 20/20

*Tooltip:* A carefully calibrated round that explodes upon contact with the target to consume them and nearby foes in flames. This is a ranged technique that activates off of default weapon attacks.

*Records:* `records/skills/playerclass07/wpattack01.dbr` [Ashes of Malmouth]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **145% at 10/10**; current hard cap **180% at 20/20**. Natural-cap pace: **+4% per rank**; weakest overcap pace: **+3% per rank**. Proposed safe hard cap: **185%**. Current overcap: 148% / 152% / 155% / 159% / 162% / 166% / 169% / 173% / 176% / 180%. Candidate overcap: 149% / 153% / 157% / 161% / 165% / 169% / 173% / 177% / 181% / 185%. Source: `records/skills/playerclass07/wpattack01.dbr` → `weaponDamagePct`.

#### To-be-exception

- [ ] **Activation Weight** — natural cap **22% at 10/10**; current hard cap **25% at 20/20**. Natural-cap pace: **+0.667% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **29.667%**. **Review reason:** Chance and weighting fields are discrete probability mechanics and may have engine or balance caps. Recommended default: preserve vanilla until explicitly approved. Current overcap: 22% / 22% / 23% / 23% / 23% / 24% / 24% / 24% / 24% / 25%. Candidate overcap: 22.667% / 23.333% / 24.333% / 25% / 25.667% / 26.667% / 27.333% / 28% / 28.667% / 29.667%. Source: `records/skills/playerclass07/wpattack01.dbr` → `skillChanceWeight`.

### Chilling Burst — 16/16 → 26/26

*Records:* `records/skills/playerclass07/pets/petskill_icerune_icering.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Chilling Rounds — 10/10 → 20/20

*Tooltip:* A barrage infused with chilling arcane energies freezes the target to the core, ensuring an easy kill. This is a ranged technique that activates off of default weapon attacks.

*Records:* `records/skills/playerclass07/wpattack02.dbr` [Ashes of Malmouth]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **90% at 10/10**; current hard cap **100% at 20/20**. Natural-cap pace: **+2% per rank**; weakest overcap pace: **+1% per rank**. Proposed safe hard cap: **110%**. Current overcap: 91% / 92% / 93% / 94% / 95% / 96% / 97% / 98% / 99% / 100%. Candidate overcap: 92% / 94% / 96% / 98% / 100% / 102% / 104% / 106% / 108% / 110%. Source: `records/skills/playerclass07/wpattack02.dbr` → `weaponDamagePct`.

#### To-be-exception

- [ ] **Activation Weight** — natural cap **22% at 10/10**; current hard cap **25% at 20/20**. Natural-cap pace: **+0.667% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **29.667%**. **Review reason:** Chance and weighting fields are discrete probability mechanics and may have engine or balance caps. Recommended default: preserve vanilla until explicitly approved. Current overcap: 22% / 22% / 23% / 23% / 23% / 24% / 24% / 24% / 24% / 25%. Candidate overcap: 22.667% / 23.333% / 24.333% / 25% / 25.667% / 26.667% / 27.333% / 28% / 28.667% / 29.667%. Source: `records/skills/playerclass07/wpattack02.dbr` → `skillChanceWeight`.

### Concussive Blast — 12/12 → 22/22

*Records:* `records/skills/playerclass07/pets/petskill_concussiverune_nova_01.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Knockdown Chance** — natural cap **50% at 12/12**; current hard cap **60% at 22/22**. Natural-cap pace: **+2% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **70%**. **Review reason:** Chance and weighting fields are discrete probability mechanics and may have engine or balance caps. Recommended default: preserve vanilla until explicitly approved. Current overcap: 51% / 52% / 53% / 54% / 55% / 56% / 57% / 58% / 59% / 60%. Candidate overcap: 52% / 54% / 56% / 58% / 60% / 62% / 64% / 66% / 68% / 70%. Source: `records/skills/playerclass07/pets/petskill_concussiverune_nova_01.dbr` → `offensiveKnockdownChance`.

### Deadly Aim — 12/12 → 22/22

*Tooltip:* For an Inquisitor facing off against some of humanity's greatest foes, sometimes a single shot or well-placed critical blow is all the opportunity they have, and the only one they need.

*Records:* `records/skills/playerclass07/passive02.dbr` [Ashes of Malmouth]

#### Safe changes

- [ ] **Offensive Ability** — natural cap **18% at 12/12**; current hard cap **24% at 22/22**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Proposed safe hard cap: **29%**. Current overcap: 18% / 19% / 19% / 20% / 20% / 21% / 21% / 22% / 22% / 24%. Candidate overcap: 19% / 20% / 21% / 22% / 23% / 24% / 25% / 26% / 27% / 29%. Source: `records/skills/playerclass07/passive02.dbr` → `characterOffensiveAbilityModifier`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Flames of Ignaffar — 16/16 → 26/26

*Tooltip:* Hold the Stone of Ignaffar in front of you, unleashing a torrent of flame from the palm of your hand for as long as you channel your will into the artifact. This is a channeled skill and must be held down to maintain. At 100% Cast Speed, Flames of Ignaffar deals damage and drains Energy every 0.24s.

*Records:* `records/skills/playerclass07/purifyingflame1.dbr` [Ashes of Malmouth]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **42% at 16/16**; current hard cap **58% at 26/26**. Natural-cap pace: **+2% per rank**; weakest overcap pace: **+1% per rank**. Proposed safe hard cap: **62%**. Current overcap: 44% / 45% / 47% / 48% / 50% / 51% / 53% / 54% / 56% / 58%. Candidate overcap: 44% / 46% / 48% / 50% / 52% / 54% / 56% / 58% / 60% / 62%. Source: `records/skills/playerclass07/purifyingflame1.dbr` → `weaponDamagePct`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Horn of Gandarr — 12/12 → 22/22

*Tooltip:* Study of the Horn of Gandarr was forbidden for centuries due to its mind shattering properties, but desperation called it into use when High Inquisitor Serenir utilized the Horn to great effect while singlehandedly taking on an occult coven. The cultists turned upon each other in confusion, allowing Serenir to finish off the stragglers with ease. This earned the Inquisitor a commendation and the Horn was later replicated by the Luminari scholars for field use, though with reduced potency.

*Records:* `records/skills/playerclass07/voiceofcommand1.dbr` [Ashes of Malmouth]

#### Safe changes

- [ ] **Pierce Damage (minimum)** — natural cap **500 at 12/12**; current hard cap **865 at 22/22**. Natural-cap pace: **+26 per rank**; weakest overcap pace: **+21 per rank**. Proposed safe hard cap: **870**. Current overcap: 529 / 558 / 587 / 616 / 645 / 677 / 709 / 768 / 789 / 865. Candidate overcap: 529 / 558 / 587 / 616 / 645 / 677 / 709 / 768 / 794 / 870. Source: `records/skills/playerclass07/voiceofcommand1.dbr` → `offensivePierceMin`.

- [ ] **Weapon Damage** — natural cap **65% at 12/12**; current hard cap **80% at 22/22**. Natural-cap pace: **+2% per rank**; weakest overcap pace: **+1% per rank**. Proposed safe hard cap: **85%**. Current overcap: 66% / 68% / 69% / 71% / 72% / 74% / 75% / 77% / 78% / 80%. Candidate overcap: 67% / 69% / 71% / 73% / 75% / 77% / 79% / 81% / 83% / 85%. Source: `records/skills/playerclass07/voiceofcommand1.dbr` → `weaponDamagePct`.

#### To-be-exception

- [ ] **Reduced Target Damage** — natural cap **25% at 12/12**; current hard cap **35% at 22/22**. Natural-cap pace: **+2.333% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **48.333%**. **Review reason:** Resistance reduction compounds party and damage scaling and must be reviewed against stacking rules. Recommended default: preserve vanilla until explicitly approved. Current overcap: 26% / 27% / 28% / 29% / 30% / 31% / 32% / 33% / 34% / 35%. Candidate overcap: 27.333% / 29.667% / 32% / 34.333% / 36.667% / 39% / 41.333% / 43.667% / 46% / 48.333%. Source: `records/skills/playerclass07/voiceofcommand1.dbr` → `offensiveTotalDamageReductionPercentMin`.

- [ ] **Target Radius** — natural cap **10 m at 12/12**; current hard cap **12 m at 22/22**. Natural-cap pace: **+0.5 m per rank**; weakest overcap pace: **+0.2 m per rank**. Unapproved linear-floor candidate: **15 m**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 10.2 m / 10.4 m / 10.6 m / 10.8 m / 11 m / 11.2 m / 11.4 m / 11.6 m / 11.8 m / 12 m. Candidate overcap: 10.5 m / 11 m / 11.5 m / 12 m / 12.5 m / 13 m / 13.5 m / 14 m / 14.5 m / 15 m. Source: `records/skills/playerclass07/voiceofcommand1.dbr` → `skillTargetRadius`.

### Ignition — 10/10 → 20/20

*Tooltip:* The Rune of Kalastor becomes increasingly unstable, triggering an immediate additional detonation at point of contact that dazes nearby enemies.

*Records:* `records/skills/playerclass07/pets/petskill_concussiverune_initialnova_01.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Inquisitor Seal — 12/12 → 22/22

*Tooltip:* Inscribe a protective seal upon the ground that shields allies and rebukes foes that cross its border. The seal is not permanent however and will fade over time. Inquisitor Seal scales with player bonuses.

*Records:* `records/skills/playerclass07/arcaneseal1.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Lightning Tether — 12/12 → 22/22

*Tooltip:* The target becomes tethered to you through an electrified connection that rapidly shocks the target and all enemies unfortunate enough to pass through it. The power within the tether is limited however and will snap should the distance between you and the target become too great. Up to 5 enemies can remain tethered at any given time.

*Records:* `records/skills/playerclass07/lightningnet2.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **TotalSpeed Damage (minimum)** — natural cap **40% at 12/12**; current hard cap **60% at 22/22**. Natural-cap pace: **+3% per rank**; weakest overcap pace: **+2% per rank**. Unapproved linear-floor candidate: **70%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 42% / 44% / 46% / 48% / 50% / 52% / 54% / 56% / 58% / 60%. Candidate overcap: 43% / 46% / 49% / 52% / 55% / 58% / 61% / 64% / 67% / 70%. Source: `records/skills/playerclass07/lightningnet2.dbr` → `offensiveSlowTotalSpeedMin`.

### Ranged Expertise — 10/10 → 20/20

*Tooltip:* Though armed with an array of powerful artifacts and relics, all Inquisitors must be prepared to face an opponent while relying solely on their wits and their firearm. Expertly wielding ranged weapons allows trained Inquisitors to take out their prey from a safe distance. This is a ranged weapon bonus. Also enables the ability to dual wield ranged weapons.

*Records:* `records/skills/playerclass07/passive01.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Attack Speed** — natural cap **15% at 10/10**; current hard cap **18% at 20/20**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **25%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 15% / 15% / 15% / 16% / 16% / 16% / 17% / 17% / 17% / 18%. Candidate overcap: 16% / 17% / 18% / 19% / 20% / 21% / 22% / 23% / 24% / 25%. Source: `records/skills/playerclass07/passive01.dbr` → `characterAttackSpeedModifier`.

- [ ] **Maximum Movement Speed** — natural cap **6% at 10/10**; current hard cap **8% at 20/20**. Natural-cap pace: **+0.333% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **10.667%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 6% / 6% / 6% / 7% / 7% / 7% / 7% / 8% / 8% / 8%. Candidate overcap: 6.333% / 6.667% / 7% / 8% / 8.333% / 8.667% / 9% / 10% / 10.333% / 10.667%. Source: `records/skills/playerclass07/passive01.dbr` → `characterRunSpeedMaxModifier`.

### Rebuke — 12/12 → 22/22

*Records:* `records/skills/playerclass07/pets/petskill_arcaneseal_aether_offenseaura_buff.dbr` [Ashes of Malmouth]; `records/skills/playerclass07/pets/petskill_arcaneseal_chaos_offenseaura_buff.dbr` [Ashes of Malmouth]; `records/skills/playerclass07/pets/petskill_arcaneseal_offenseaura_buff.dbr` [Ashes of Malmouth]; `records/skills/playerclass07/pets/petskill_arcaneseal_physical_offenseaura_buff.dbr` [Forgotten Gods]; `records/skills/playerclass07/pets/petskill_arcaneseal_vitality_offenseaura_buff.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Rune of Hagarrad — 16/16 → 26/26

*Tooltip:* The Rune of Hagarrad was one of the first objects contained within the Vault of the Luminari but, after mounting pressure from the imperial court to exterminate occult activity within the capital, it also became the first artifact to be sanctioned for study and replicated by the Luminari in order to cut off escape routes for fleeing targets. Runes of Hagarrad take 1 second to arm and scale with player bonuses. Icicles initially deal 25% reduced damage before reaching their full strength as they expand outward.

*Records:* `records/skills/playerclass07/icerune.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Rune of Kalastor — 12/12 → 22/22

*Tooltip:* Place the Rune of Kalastor upon the ground. This unstable artifact explodes upon contact with enemies, spilling explosive shrapnel upon the battlefield that shatters and erupts to inflict grievous harm. Runes of Kalastor take 1 second to arm and scale with player bonuses.

*Records:* `records/skills/playerclass07/concussiverune1.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Storm Box of Elgoloth — 16/16 → 26/26

*Tooltip:* Open the runed Storm Box of Elgoloth, surrounding the target foe with a psychic energy that electrifies the very air around them, shocking the target and all unfortunate enough to stand too close.

*Records:* `records/skills/playerclass07/lightningnet1_buff.dbr` [Ashes of Malmouth]

#### Safe changes

- [ ] **Defensive Ability** — natural cap **-115 at 16/16**; current hard cap **-175 at 26/26**. Natural-cap pace: **-7 per rank**; weakest overcap pace: **-5 per rank**. Proposed safe hard cap: **-193**. Current overcap: -120 / -125 / -130 / -135 / -140 / -145 / -150 / -155 / -160 / -175. Candidate overcap: -122 / -129 / -136 / -143 / -150 / -157 / -164 / -171 / -178 / -193. Source: `records/skills/playerclass07/lightningnet1_buff.dbr` → `characterDefensiveAbility`.

#### To-be-exception

- [ ] **Energy Cost** — natural cap **75 Energy at 16/16**; current hard cap **115 Energy at 26/26**. Natural-cap pace: **+4.333 Energy per rank**; weakest overcap pace: **+4 Energy per rank**. Unapproved linear-floor candidate: **118.333 Energy**. **Review reason:** Energy cost is a cost curve, not a player benefit; lowering its overcap penalty would be a separate balance change. Recommended default: preserve vanilla until explicitly approved. Current overcap: 79 Energy / 83 Energy / 87 Energy / 91 Energy / 95 Energy / 99 Energy / 103 Energy / 107 Energy / 111 Energy / 115 Energy. Candidate overcap: 79.333 Energy / 83.667 Energy / 88 Energy / 92.333 Energy / 96.667 Energy / 101 Energy / 105.333 Energy / 109.667 Energy / 114 Energy / 118.333 Energy. Source: `records/skills/playerclass07/lightningnet1_buff.dbr` → `skillManaCost`.

### Storm Spread — 10/10 → 20/20

*Tooltip:* A reckless technique for when enemy numbers prove overwhelming, a spread across a room can quickly even the odds. This is a ranged technique that activates off of default weapon attacks.

*Records:* `records/skills/playerclass07/wpattack03.dbr` [Ashes of Malmouth]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **38% at 10/10**; current hard cap **43% at 20/20**. Natural-cap pace: **+0.667% per rank**; weakest overcap pace: **0% per rank**. Proposed safe hard cap: **46.333%**. Current overcap: 38% / 38% / 39% / 39% / 40% / 40% / 41% / 41% / 42% / 43%. Candidate overcap: 38.667% / 39.333% / 40.333% / 41% / 42% / 42.667% / 43.667% / 44.333% / 45.333% / 46.333%. Source: `records/skills/playerclass07/wpattack03.dbr` → `weaponDamagePct`.

#### To-be-exception

- [ ] **Activation Weight** — natural cap **22% at 10/10**; current hard cap **25% at 20/20**. Natural-cap pace: **+0.667% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **29.667%**. **Review reason:** Chance and weighting fields are discrete probability mechanics and may have engine or balance caps. Recommended default: preserve vanilla until explicitly approved. Current overcap: 22% / 22% / 23% / 23% / 23% / 24% / 24% / 24% / 24% / 25%. Candidate overcap: 22.667% / 23.333% / 24.333% / 25% / 25.667% / 26.667% / 27.333% / 28% / 28.667% / 29.667%. Source: `records/skills/playerclass07/wpattack03.dbr` → `skillChanceWeight`.

### Word of Pain — 16/16 → 26/26

*Tooltip:* With arcane runes carefully woven into their gear, even the voices of inquisitors are sufficient to inflict immense suffering upon the enemies of humanity. With a single word, your foes writhe in pain as arcane energies assault their very being.

*Records:* `records/skills/playerclass07/wordofpain1_buff.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Word of Renewal — 12/12 → 22/22

*Tooltip:* With the power to destroy their foes or revitalize allies with a single phrase, Words of Power quickly became a staple of the Inquisitor arsenal. The Word of Renewal established Inquisitors as priceless assets during wartime due to its ability to invigorate the Inquisitor and their allies and steel them against occult foes.

*Records:* `records/skills/playerclass07/hunteraura1_buff.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Movement Speed** — natural cap **18% at 12/12**; current hard cap **24% at 22/22**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **28%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 19% / 19% / 20% / 20% / 21% / 21% / 22% / 22% / 23% / 24%. Candidate overcap: 19% / 20% / 21% / 22% / 23% / 24% / 25% / 26% / 27% / 28%. Source: `records/skills/playerclass07/hunteraura1_buff.dbr` → `characterRunSpeedModifier`.

- [ ] **Racial Bonus Defense** — natural cap **10% at 12/12**; current hard cap **15% at 22/22**. Natural-cap pace: **+0.333% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **17%**. **Review reason:** This is a specialized modifier with cap or encounter-specific consequences. Recommended default: preserve vanilla until explicitly approved. Current overcap: 11% / 11% / 11% / 12% / 12% / 12% / 13% / 13% / 13% / 15%. Candidate overcap: 11% / 11.333% / 11.667% / 12.667% / 13% / 13.333% / 14.333% / 14.667% / 15% / 17%. Source: `records/skills/playerclass07/hunteraura1_buff.dbr` → `racialBonusPercentDefense`.

## Necromancer

### Ancient Weapons — 16/16 → 26/26

*Records:* `records/skills/playerclass08/pets/petskill_skeleton_innate01.dbr` [Ashes of Malmouth]; `records/skills/playerclass08/pets/petskill_skeleton_innate02.dbr` [Ashes of Malmouth]; `records/skills/playerclass08/pets/petskill_skeleton_innate03.dbr` [Ashes of Malmouth]; `records/skills/playerclass08/pets/petskill_skeleton_innate04.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Blight Burst — 12/12 → 22/22

*Tooltip:* Toxic gases build up within the rotting bulk of the blight fiend, which it can then release upon unsuspecting foes in a toxic eruption of decay.

*Records:* `records/skills/playerclass08/pets/petskill_blightbeast_blightburst.dbr` [Ashes of Malmouth]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **70% at 12/12**; current hard cap **90% at 22/22**. Natural-cap pace: **+3% per rank**; weakest overcap pace: **+2% per rank**. Proposed safe hard cap: **100%**. Current overcap: 72% / 74% / 76% / 78% / 80% / 82% / 84% / 86% / 88% / 90%. Candidate overcap: 73% / 76% / 79% / 82% / 85% / 88% / 91% / 94% / 97% / 100%. Source: `records/skills/playerclass08/pets/petskill_blightbeast_blightburst.dbr` → `weaponDamagePct`.

#### To-be-exception

- [ ] **Taunt** — natural cap **100% at 12/12**; current hard cap **100% at 22/22**. Natural-cap pace: **+5% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **150%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 100% / 100% / 100% / 100% / 100% / 100% / 100% / 100% / 100% / 100%. Candidate overcap: 105% / 110% / 115% / 120% / 125% / 130% / 135% / 140% / 145% / 150%. Source: `records/skills/playerclass08/pets/petskill_blightbeast_blightburst.dbr` → `offensiveTauntMin`.

### Blighted Claws — 16/16 → 26/26

*Records:* `records/skills/playerclass08/pets/petskill_blightbeast_innate01.dbr` [Ashes of Malmouth]

#### Safe changes

- [ ] **Poison Damage (minimum)** — natural cap **120 at 16/16**; current hard cap **200 at 26/26**. Natural-cap pace: **+7.333 per rank**; weakest overcap pace: **+7 per rank**. Proposed safe hard cap: **200.667**. Current overcap: 128 / 136 / 143 / 151 / 159 / 166 / 174 / 182 / 190 / 200. Candidate overcap: 128 / 136 / 143.333 / 151.333 / 159.333 / 166.667 / 174.667 / 182.667 / 190.667 / 200.667. Source: `records/skills/playerclass08/pets/petskill_blightbeast_innate01.dbr` → `offensiveSlowPoisonMin`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Bone Harvest — 16/16 → 26/26

*Tooltip:* Through a force of necrotic energies, a Necromancer can force the bones of the long forgotten to burst forth from the earth like jagged spines and impale unwary foes.

*Records:* `records/skills/playerclass08/soulscythe1.dbr` [Ashes of Malmouth]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **365% at 16/16**; current hard cap **505% at 26/26**. Natural-cap pace: **+16% per rank**; weakest overcap pace: **+14% per rank**. Proposed safe hard cap: **525%**. Current overcap: 379% / 393% / 407% / 421% / 435% / 449% / 463% / 477% / 491% / 505%. Candidate overcap: 381% / 397% / 413% / 429% / 445% / 461% / 477% / 493% / 509% / 525%. Source: `records/skills/playerclass08/soulscythe1.dbr` → `weaponDamagePct`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Call of the Grave — 10/10 → 20/20

*Tooltip:* Call upon the rot and decay of the grave to fuel your vile magic and throw your undying minions into a vicious frenzy.

*Records:* `records/skills/playerclass08/callofthegrave.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Deathbolt — 16/16 → 26/26

*Records:* `records/skills/playerclass08/pets/petskill_skeleton_deathbolt.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Chance to Pass Through Enemies** — natural cap **100% at 16/16**; current hard cap **100% at 26/26**. Natural-cap pace: **+4% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **140%**. **Review reason:** Chance and weighting fields are discrete probability mechanics and may have engine or balance caps. Recommended default: preserve vanilla until explicitly approved. Current overcap: 100% / 100% / 100% / 100% / 100% / 100% / 100% / 100% / 100% / 100%. Candidate overcap: 104% / 108% / 112% / 116% / 120% / 124% / 128% / 132% / 136% / 140%. Source: `records/skills/playerclass08/pets/petskill_skeleton_deathbolt.dbr` → `projectilePiercingChance`.

### Drain Essence — 16/16 → 26/26

*Tooltip:* Necromancers firmly believe in the concept of greater good, and sometimes the greater good means that one's life essence must be sacrificed so that another may live. Though this transfer is frowned upon, some practitioners have trouble resisting the temptation of raw vital energy. At 100% Cast Speed, Drain Essence deals damage and drains Energy every 0.24s.

*Records:* `records/skills/playerclass08/lifetap1.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Attack Damage Converted to Health** — natural cap **10% at 16/16**; current hard cap **15% at 26/26**. Natural-cap pace: **+0.333% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **16.667%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 10% / 11% / 11% / 12% / 12% / 13% / 13% / 14% / 14% / 15%. Candidate overcap: 10.333% / 11.333% / 11.667% / 12.667% / 13% / 14% / 14.333% / 15.333% / 15.667% / 16.667%. Source: `records/skills/playerclass08/lifetap1.dbr` → `offensiveLifeLeechMin`.

### Fire Shard — 16/16 → 26/26

*Records:* `records/skills/playerclass08/pets/petskill_skeleton_chaosshard.dbr` [Fangs of Asterkarn]; `records/skills/playerclass08/pets/petskill_skeleton_fireshard.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Firebolt Nova — 16/16 → 26/26

*Records:* `records/skills/playerclass08/pets/petskill_skeleton_chaosnova.dbr` [Fangs of Asterkarn]; `records/skills/playerclass08/pets/petskill_skeleton_fireballnova.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Foul Eruption — 12/12 → 22/22

*Tooltip:* The vile necrotic energies suffuse the flesh, causing slain foes to erupt violently, spilling disease and ichor onto nearby enemies.

*Records:* `records/skills/playerclass08/ravenousearth3.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Reduced Target Resistances** — natural cap **25% at 12/12**; current hard cap **35% at 22/22**. Natural-cap pace: **+2% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **45%**. **Review reason:** Resistance reduction compounds party and damage scaling and must be reviewed against stacking rules. Recommended default: preserve vanilla until explicitly approved. Current overcap: 26% / 27% / 28% / 29% / 30% / 31% / 32% / 33% / 34% / 35%. Candidate overcap: 27% / 29% / 31% / 33% / 35% / 37% / 39% / 41% / 43% / 45%. Source: `records/skills/playerclass08/ravenousearth3.dbr` → `offensiveTotalResistanceReductionAbsoluteMin`.

- [ ] **Reduction to Enemy Health (minimum)** — natural cap **28% at 12/12**; current hard cap **33% at 22/22**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **38%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 28% / 29% / 29% / 30% / 30% / 31% / 31% / 32% / 32% / 33%. Candidate overcap: 29% / 30% / 31% / 32% / 33% / 34% / 35% / 36% / 37% / 38%. Source: `records/skills/playerclass08/ravenousearth3.dbr` → `offensivePercentCurrentLifeMin`.

- [ ] **Target Radius** — natural cap **3 m at 12/12**; current hard cap **3.3 m at 22/22**. Natural-cap pace: **+0.033 m per rank**; weakest overcap pace: **0 m per rank**. Unapproved linear-floor candidate: **3.533 m**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 3 m / 3 m / 3 m / 3.1 m / 3.1 m / 3.1 m / 3.2 m / 3.2 m / 3.2 m / 3.3 m. Candidate overcap: 3.033 m / 3.067 m / 3.1 m / 3.2 m / 3.233 m / 3.267 m / 3.367 m / 3.4 m / 3.433 m / 3.533 m. Source: `records/skills/playerclass08/ravenousearth3.dbr` → `skillTargetRadius`.

### Harbinger of Souls — 12/12 → 22/22

*Tooltip:* Having mastered death, you become a living harbinger of that final fate, the life essence of your enemies but a plaything to manipulate at will.

*Records:* `records/skills/playerclass08/reaper1.dbr` [Ashes of Malmouth]

#### Safe changes

- [ ] **Aether Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass08/reaper1.dbr` → `offensiveAetherModifier`.

- [ ] **Vitality Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass08/reaper1.dbr` → `offensiveLifeModifier`.

- [ ] **Vitality Decay Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass08/reaper1.dbr` → `offensiveSlowLifeModifier`.

- [ ] **Vitality Decay Duration** — natural cap **75% at 12/12**; current hard cap **125% at 22/22**. Natural-cap pace: **+5.667% per rank**; weakest overcap pace: **+5% per rank**. Proposed safe hard cap: **131.667%**. Current overcap: 80% / 85% / 90% / 95% / 100% / 105% / 110% / 115% / 120% / 125%. Candidate overcap: 80.667% / 86.333% / 92% / 97.667% / 103.333% / 109% / 114.667% / 120.333% / 126% / 131.667%. Source: `records/skills/playerclass08/reaper1.dbr` → `offensiveSlowLifeDurationModifier`.

#### To-be-exception

- [ ] **Attack Damage Converted to Health** — natural cap **14% at 12/12**; current hard cap **20% at 22/22**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **24%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 15% / 15% / 16% / 16% / 17% / 17% / 18% / 18% / 19% / 20%. Candidate overcap: 15% / 16% / 17% / 18% / 19% / 20% / 21% / 22% / 23% / 24%. Source: `records/skills/playerclass08/reaper1.dbr` → `offensiveLifeLeechMin`.

- [ ] **Attack Speed** — natural cap **14% at 12/12**; current hard cap **20% at 22/22**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **25%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 14% / 15% / 15% / 16% / 16% / 17% / 17% / 18% / 18% / 20%. Candidate overcap: 15% / 16% / 17% / 18% / 19% / 20% / 21% / 22% / 23% / 25%. Source: `records/skills/playerclass08/reaper1.dbr` → `characterAttackSpeedModifier`.

- [ ] **Casting Speed** — natural cap **14% at 12/12**; current hard cap **20% at 22/22**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **25%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 14% / 15% / 15% / 16% / 16% / 17% / 17% / 18% / 18% / 20%. Candidate overcap: 15% / 16% / 17% / 18% / 19% / 20% / 21% / 22% / 23% / 25%. Source: `records/skills/playerclass08/reaper1.dbr` → `characterSpellCastSpeedModifier`.

### Ill Omen — 10/10 → 20/20

*Tooltip:* The mere presence of a Necromancer is often enough to inspire terror within their enemies. You unleash a ghostly wail upon your target that shatters the confidence of lesser foes and rapidly spreads confusion and fear amongst your enemies.

*Records:* `records/skills/playerclass08/illomen1_buff.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Contagion Limit** — natural cap **3 at 10/10**; current hard cap **4 at 20/20**. Natural-cap pace: **+0.333 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **7**. **Review reason:** Target and projectile counts or behavior are discrete mechanics that may change hit density and performance. Recommended default: preserve vanilla until explicitly approved. Current overcap: 3 / 3 / 3 / 3 / 4 / 4 / 4 / 4 / 4 / 4. Candidate overcap: 3.333 / 3.667 / 4 / 4.333 / 5.333 / 5.667 / 6 / 6.333 / 6.667 / 7. Source: `records/skills/playerclass08/illomen1_buff.dbr` → `contagionLimit`.

- [ ] **Duration** — natural cap **5 s at 10/10**; current hard cap **6 s at 20/20**. Natural-cap pace: **+0.2 s per rank**; weakest overcap pace: **+0.1 s per rank**. Unapproved linear-floor candidate: **7 s**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 5.1 s / 5.2 s / 5.3 s / 5.4 s / 5.5 s / 5.6 s / 5.7 s / 5.8 s / 5.9 s / 6 s. Candidate overcap: 5.2 s / 5.4 s / 5.6 s / 5.8 s / 6 s / 6.2 s / 6.4 s / 6.6 s / 6.8 s / 7 s. Source: `records/skills/playerclass08/illomen1_buff.dbr` → `skillActiveDuration`.

- [ ] **Maximum Spreads** — natural cap **20 at 10/10**; current hard cap **30 at 20/20**. Natural-cap pace: **+1.333 per rank**; weakest overcap pace: **+1 per rank**. Unapproved linear-floor candidate: **33.333**. **Review reason:** Target and projectile counts or behavior are discrete mechanics that may change hit density and performance. Recommended default: preserve vanilla until explicitly approved. Current overcap: 21 / 22 / 23 / 24 / 25 / 26 / 27 / 28 / 29 / 30. Candidate overcap: 21.333 / 22.667 / 24 / 25.333 / 26.667 / 28 / 29.333 / 30.667 / 32 / 33.333. Source: `records/skills/playerclass08/illomen1_buff.dbr` → `contagionMaxSpread`.

- [ ] **Reduced Target Damage** — natural cap **25% at 10/10**; current hard cap **35% at 20/20**. Natural-cap pace: **+2% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **45%**. **Review reason:** Resistance reduction compounds party and damage scaling and must be reviewed against stacking rules. Recommended default: preserve vanilla until explicitly approved. Current overcap: 26% / 27% / 28% / 29% / 30% / 31% / 32% / 33% / 34% / 35%. Candidate overcap: 27% / 29% / 31% / 33% / 35% / 37% / 39% / 41% / 43% / 45%. Source: `records/skills/playerclass08/illomen1_buff.dbr` → `offensiveTotalDamageReductionPercentMin`.

### Mark of Torment — 10/10 → 20/20

*Tooltip:* Though all must ultimately answer to that final fate, your mastery of death has allowed you to delay the inevitable. By linking your soul to a nearby foe, you transfer some of the harm intended for you into them instead. Only one enemy can be Marked at any one time.

*Records:* `records/skills/playerclass08/soultransfer.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Damage Absorption** — natural cap **35% at 10/10**; current hard cap **50% at 20/20**. Natural-cap pace: **+2% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **55%**. **Review reason:** Absorption and maximum resistance can cross strong defensive breakpoints and require separate balance approval. Recommended default: preserve vanilla until explicitly approved. Current overcap: 36% / 38% / 39% / 41% / 42% / 44% / 45% / 47% / 48% / 50%. Candidate overcap: 37% / 39% / 41% / 43% / 45% / 47% / 49% / 51% / 53% / 55%. Source: `records/skills/playerclass08/soultransfer.dbr` → `damageAbsorptionPercent`.

### Master of Death — 12/12 → 22/22

*Tooltip:* A fully trained Necromancer is a terrifying thing to behold, their arrival heralded by the endless legions of the dead, forever bound to the will of their master.

*Records:* `records/skills/playerclass08/masterofdeath1.dbr` [Ashes of Malmouth]

#### Safe changes

- [ ] **Offensive Ability** — natural cap **12% at 12/12**; current hard cap **18% at 22/22**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Proposed safe hard cap: **23%**. Current overcap: 12% / 13% / 13% / 14% / 14% / 15% / 15% / 16% / 16% / 18%. Candidate overcap: 13% / 14% / 15% / 16% / 17% / 18% / 19% / 20% / 21% / 23%. Source: `records/skills/playerclass08/masterofdeath1.dbr` → `characterOffensiveAbilityModifier`.

#### To-be-exception

- [ ] **Vitality Resistance** — natural cap **25% at 12/12**; current hard cap **35% at 22/22**. Natural-cap pace: **+2.333% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **48.333%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: 26% / 27% / 28% / 29% / 30% / 31% / 32% / 33% / 34% / 35%. Candidate overcap: 27.333% / 29.667% / 32% / 34.333% / 36.667% / 39% / 41.333% / 43.667% / 46% / 48.333%. Source: `records/skills/playerclass08/masterofdeath1.dbr` → `defensiveLife`.

### Necrotic Edge — 12/12 → 22/22

*Tooltip:* By striking with the chill of the grave, your attacks inflict instant necrosis upon the afflicted wound, the sight of which can cause even the most resolute foes to falter. Can activate with all default weapon attacks. When used with a melee weapon, the attack strikes multiple nearby targets.

*Records:* `records/skills/playerclass08/weaponpool02.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Activation Weight** — natural cap **26% at 12/12**; current hard cap **30% at 22/22**. Natural-cap pace: **+0.333% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **32%**. **Review reason:** Chance and weighting fields are discrete probability mechanics and may have engine or balance caps. Recommended default: preserve vanilla until explicitly approved. Current overcap: 27% / 27% / 27% / 28% / 28% / 28% / 29% / 29% / 29% / 30%. Candidate overcap: 27% / 27.333% / 27.667% / 28.667% / 29% / 29.333% / 30.333% / 30.667% / 31% / 32%. Source: `records/skills/playerclass08/weaponpool02.dbr` → `skillChanceWeight`.

- [ ] **Confusion Chance** — natural cap **100% at 12/12**; current hard cap **100% at 22/22**. Natural-cap pace: **+5% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **150%**. **Review reason:** Chance and weighting fields are discrete probability mechanics and may have engine or balance caps. Recommended default: preserve vanilla until explicitly approved. Current overcap: 100% / 100% / 100% / 100% / 100% / 100% / 100% / 100% / 100% / 100%. Candidate overcap: 105% / 110% / 115% / 120% / 125% / 130% / 135% / 140% / 145% / 150%. Source: `records/skills/playerclass08/weaponpool02.dbr` → `offensiveConfusionChance`.

- [ ] **Number of Targets** — natural cap **5 at 12/12**; current hard cap **7 at 22/22**. Natural-cap pace: **+0.333 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **9.667**. **Review reason:** Target and projectile counts or behavior are discrete mechanics that may change hit density and performance. Recommended default: preserve vanilla until explicitly approved. Current overcap: 5 / 5 / 5 / 6 / 6 / 6 / 6 / 6 / 7 / 7. Candidate overcap: 5.333 / 5.667 / 6 / 7 / 7.333 / 7.667 / 8 / 8.333 / 9.333 / 9.667. Source: `records/skills/playerclass08/weaponpool02.dbr` → `skillTargetNumber`.

### Raise Skeletons — 16/16 → 26/26

*Tooltip:* The art of reanimating skeletal remains is among the first rites of aspiring Necromancers, but also one of the most rudimentary. Through sheer will, a Necromancer may call upon the spirits beyond the veil and draw them into the bones of the deceased. Should the ritual succeed, skeletal minions, loyal only to the summoner, shall rise. Skeletons scale with Pet Bonuses. More powerful minions may be raised with higher skill rank.

*Records:* `records/skills/playerclass08/summon_skeleton1.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Spawn Object Weights** — natural cap **24 at 16/16**; current hard cap **19 at 26/26**. Natural-cap pace: **-3.333 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **-9.333**. **Review reason:** Chance and weighting fields are discrete probability mechanics and may have engine or balance caps. Recommended default: preserve vanilla until explicitly approved. Current overcap: 23 / 23 / 22 / 22 / 21 / 21 / 20 / 20 / 19 / 19. Candidate overcap: 20.667 / 17.333 / 14 / 10.667 / 7.333 / 4 / 0.667 / -2.667 / -6 / -9.333. Source: `records/skills/playerclass08/summon_skeleton1.dbr` → `spawnObjectWeights`.

- [ ] **Spawn Object Weights3** — natural cap **24 at 16/16**; current hard cap **34 at 26/26**. Natural-cap pace: **+2 per rank**; weakest overcap pace: **+1 per rank**. Unapproved linear-floor candidate: **44**. **Review reason:** Chance and weighting fields are discrete probability mechanics and may have engine or balance caps. Recommended default: preserve vanilla until explicitly approved. Current overcap: 25 / 26 / 27 / 28 / 29 / 30 / 31 / 32 / 33 / 34. Candidate overcap: 26 / 28 / 30 / 32 / 34 / 36 / 38 / 40 / 42 / 44. Source: `records/skills/playerclass08/summon_skeleton1.dbr` → `spawnObjectWeights3`.

- [ ] **Spawn Object Weights4** — natural cap **14 at 16/16**; current hard cap **20 at 26/26**. Natural-cap pace: **+1.333 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **27.333**. **Review reason:** Chance and weighting fields are discrete probability mechanics and may have engine or balance caps. Recommended default: preserve vanilla until explicitly approved. Current overcap: 15 / 15 / 16 / 16 / 17 / 17 / 18 / 18 / 19 / 20. Candidate overcap: 15.333 / 16.667 / 18 / 19.333 / 20.667 / 22 / 23.333 / 24.667 / 26 / 27.333. Source: `records/skills/playerclass08/summon_skeleton1.dbr` → `spawnObjectWeights4`.

### Raise Skeletons — internal pet scaling — 16/16 → 26/26

*Records:* `records/skills/playerclass08/pets/petskill_skeleton_basescaling.dbr` [Ashes of Malmouth]; `records/skills/playerclass08/pets/petskill_skeleton_charge.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Ravenous Earth — 16/16 → 26/26

*Tooltip:* At your command, disease and rot pour forth through a hellish maw within the earth and infect all unfortunate enough to stand too close.

*Records:* `records/skills/playerclass08/ravenousearth1.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Fragment Count (maximum)** — natural cap **8 at 16/16**; current hard cap **9 at 26/26**. Natural-cap pace: **+0.333 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **12**. **Review reason:** Target and projectile counts or behavior are discrete mechanics that may change hit density and performance. Recommended default: preserve vanilla until explicitly approved. Current overcap: 8 / 8 / 8 / 8 / 8 / 8 / 9 / 9 / 9 / 9. Candidate overcap: 8.333 / 8.667 / 9 / 9.333 / 9.667 / 10 / 11 / 11.333 / 11.667 / 12. Source: `records/skills/playerclass08/ravenousearth1.dbr` → `projectileFragmentsLaunchNumberMax`.

### Reap Spirit — 16/16 → 26/26

*Tooltip:* One of the most powerful techniques bestowed upon his followers by Uroboruuk. By ripping apart the very being of a foe, one can not only inflict grievous harm, but also conjure forth a fragment of their soul to serve you. The resulting spirit is unstable and highly aggressive, which makes it all the more useful in battle. The Wraiths scale with Pet Bonuses.

*Records:* `records/skills/playerclass08/reapspirit1.dbr` [Ashes of Malmouth]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **310% at 16/16**; current hard cap **400% at 26/26**. Natural-cap pace: **+14% per rank**; weakest overcap pace: **+9% per rank**. Proposed safe hard cap: **450%**. Current overcap: 319% / 328% / 337% / 346% / 355% / 364% / 373% / 382% / 391% / 400%. Candidate overcap: 324% / 338% / 352% / 366% / 380% / 394% / 408% / 422% / 436% / 450%. Source: `records/skills/playerclass08/reapspirit1.dbr` → `weaponDamagePct`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Reap Spirit — internal pet basic attack — 16/16 → 26/26

*Records:* `records/skills/playerclass08/pets/petskill_wraithplayer_basicattack.dbr` [Fangs of Asterkarn]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Reap Spirit — internal pet Shadow Strike — 16/16 → 26/26

*Records:* `records/skills/playerclass08/pets/petskill_wraith_shadowstrike.dbr` [Ashes of Malmouth]; `records/skills/playerclass08/pets/petskill_wraithplayer_shadowstrike.dbr` [Fangs of Asterkarn]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Reaping Strike — 10/10 → 20/20

*Tooltip:* By infusing their weapons with deadly necrotic energies, Necromancers can inflict physical wounds that cut deeper than just the flesh. Can activate with all default weapon attacks.

*Records:* `records/skills/playerclass08/weaponpool01.dbr` [Ashes of Malmouth]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **190% at 10/10**; current hard cap **230% at 20/20**. Natural-cap pace: **+5% per rank**; weakest overcap pace: **+4% per rank**. Proposed safe hard cap: **240%**. Current overcap: 194% / 198% / 202% / 206% / 210% / 214% / 218% / 222% / 226% / 230%. Candidate overcap: 195% / 200% / 205% / 210% / 215% / 220% / 225% / 230% / 235% / 240%. Source: `records/skills/playerclass08/weaponpool01.dbr` → `weaponDamagePct`.

#### To-be-exception

- [ ] **Activation Weight** — natural cap **25% at 10/10**; current hard cap **30% at 20/20**. Natural-cap pace: **+0.667% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **33.333%**. **Review reason:** Chance and weighting fields are discrete probability mechanics and may have engine or balance caps. Recommended default: preserve vanilla until explicitly approved. Current overcap: 25% / 26% / 26% / 27% / 27% / 28% / 28% / 29% / 29% / 30%. Candidate overcap: 25.667% / 26.667% / 27.333% / 28.333% / 29% / 30% / 30.667% / 31.667% / 32.333% / 33.333%. Source: `records/skills/playerclass08/weaponpool01.dbr` → `skillChanceWeight`.

- [ ] **Attack Damage Converted to Health** — natural cap **36% at 10/10**; current hard cap **48% at 20/20**. Natural-cap pace: **+2% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **56%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 38% / 40% / 41% / 42% / 43% / 44% / 45% / 46% / 47% / 48%. Candidate overcap: 38% / 40% / 42% / 44% / 46% / 48% / 50% / 52% / 54% / 56%. Source: `records/skills/playerclass08/weaponpool01.dbr` → `offensiveLifeLeechMin`.

### Rotting Fumes — 12/12 → 22/22

*Tooltip:* The stench emanating from the blight fiend becomes impossible to withstand, with the very air around the creature inducing vomiting and blurring vision.

*Records:* `records/skills/playerclass08/pets/petskill_blightbeast_poisonfumes.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Reduced Target Defensive Ability** — natural cap **212 at 12/12**; current hard cap **335 at 22/22**. Natural-cap pace: **+17 per rank**; weakest overcap pace: **+12 per rank**. Unapproved linear-floor candidate: **382**. **Review reason:** Reduced Offensive or Defensive Ability compounds hit and critical-hit thresholds and needs encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 224 / 236 / 248 / 260 / 272 / 284 / 296 / 308 / 320 / 335. Candidate overcap: 229 / 246 / 263 / 280 / 297 / 314 / 331 / 348 / 365 / 382. Source: `records/skills/playerclass08/pets/petskill_blightbeast_poisonfumes.dbr` → `offensiveSlowDefensiveAbilityMin`.

### Siphon Souls — 12/12 → 22/22

*Tooltip:* In a ghastly release of necrotic energies, you attempt to harvest the spirits of nearby foes with a cruel curse, draining them of their very essence while transferring it to you.

*Records:* `records/skills/playerclass08/soulsiphon1_buff.dbr` [Ashes of Malmouth]

#### Safe changes

- [ ] **Health Regeneration** — natural cap **-70% at 12/12**; current hard cap **-80% at 22/22**. Natural-cap pace: **-2.667% per rank**; weakest overcap pace: **-1% per rank**. Proposed safe hard cap: **-96.667%**. Current overcap: -71% / -72% / -73% / -74% / -75% / -76% / -77% / -78% / -79% / -80%. Candidate overcap: -72.667% / -75.333% / -78% / -80.667% / -83.333% / -86% / -88.667% / -91.333% / -94% / -96.667%. Source: `records/skills/playerclass08/soulsiphon1_buff.dbr` → `characterLifeRegenModifier`.

#### To-be-exception

- [ ] **Target Radius** — natural cap **7.5 m at 12/12**; current hard cap **8.5 m at 22/22**. Natural-cap pace: **+0.3 m per rank**; weakest overcap pace: **+0.1 m per rank**. Unapproved linear-floor candidate: **10.5 m**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 7.6 m / 7.7 m / 7.8 m / 7.9 m / 8 m / 8.1 m / 8.2 m / 8.3 m / 8.4 m / 8.5 m. Candidate overcap: 7.8 m / 8.1 m / 8.4 m / 8.7 m / 9 m / 9.3 m / 9.6 m / 9.9 m / 10.2 m / 10.5 m. Source: `records/skills/playerclass08/soulsiphon1_buff.dbr` → `skillTargetRadius`.

### Soul Harvest — 12/12 → 22/22

*Tooltip:* The bones of the dead fragment and absorb the souls of your foes, empowering you and your minions with the power of death. Soul Harvest affects all attacks and pets while active.

*Records:* `records/skills/playerclass08/soulscythe3_buff.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Spectral Binding — 12/12 → 22/22

*Tooltip:* Binding spirits is a dangerous practice, but one that can be vastly rewarding with forgotten knowledge or even protection. By forcing the spirits of the fallen to serve, you become infused with their essence, granting you vitality and further control over your necrotic powers.

*Records:* `records/skills/playerclass08/spectralarmor1.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Spectral Wrath — 10/10 → 20/20

*Tooltip:* The spectres empowering you lash out at anything that dares strike you, cursing it with a debilitating spell from beyond the grave.

*Records:* `records/skills/playerclass08/spectralarmor2_buff.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Aether Resistance** — natural cap **-30% at 10/10**; current hard cap **-40% at 20/20**. Natural-cap pace: **-2.333% per rank**; weakest overcap pace: **-1% per rank**. Unapproved linear-floor candidate: **-53.333%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: -31% / -32% / -33% / -34% / -35% / -36% / -37% / -38% / -39% / -40%. Candidate overcap: -32.333% / -34.667% / -37% / -39.333% / -41.667% / -44% / -46.333% / -48.667% / -51% / -53.333%. Source: `records/skills/playerclass08/spectralarmor2_buff.dbr` → `defensiveAether`.

- [ ] **Cold Resistance** — natural cap **-25% at 10/10**; current hard cap **-35% at 20/20**. Natural-cap pace: **-2% per rank**; weakest overcap pace: **-1% per rank**. Unapproved linear-floor candidate: **-45%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: -26% / -27% / -28% / -29% / -30% / -31% / -32% / -33% / -34% / -35%. Candidate overcap: -27% / -29% / -31% / -33% / -35% / -37% / -39% / -41% / -43% / -45%. Source: `records/skills/playerclass08/spectralarmor2_buff.dbr` → `defensiveCold`.

- [ ] **Duration** — natural cap **5 s at 10/10**; current hard cap **6 s at 20/20**. Natural-cap pace: **+0.133 s per rank**; weakest overcap pace: **+0.1 s per rank**. Unapproved linear-floor candidate: **6.333 s**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 5.1 s / 5.2 s / 5.3 s / 5.4 s / 5.5 s / 5.6 s / 5.7 s / 5.8 s / 5.9 s / 6 s. Candidate overcap: 5.133 s / 5.267 s / 5.4 s / 5.533 s / 5.667 s / 5.8 s / 5.933 s / 6.067 s / 6.2 s / 6.333 s. Source: `records/skills/playerclass08/spectralarmor2_buff.dbr` → `skillActiveDuration`.

- [ ] **Physical Resistance** — natural cap **-25 at 10/10**; current hard cap **-35 at 20/20**. Natural-cap pace: **-2 per rank**; weakest overcap pace: **-1 per rank**. Unapproved linear-floor candidate: **-45**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: -26 / -27 / -28 / -29 / -30 / -31 / -32 / -33 / -34 / -35. Candidate overcap: -27 / -29 / -31 / -33 / -35 / -37 / -39 / -41 / -43 / -45. Source: `records/skills/playerclass08/spectralarmor2_buff.dbr` → `defensivePhysical`.

- [ ] **Poison Resistance** — natural cap **-25% at 10/10**; current hard cap **-35% at 20/20**. Natural-cap pace: **-2% per rank**; weakest overcap pace: **-1% per rank**. Unapproved linear-floor candidate: **-45%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: -26% / -27% / -28% / -29% / -30% / -31% / -32% / -33% / -34% / -35%. Candidate overcap: -27% / -29% / -31% / -33% / -35% / -37% / -39% / -41% / -43% / -45%. Source: `records/skills/playerclass08/spectralarmor2_buff.dbr` → `defensivePoison`.

- [ ] **Target Radius** — natural cap **4 m at 10/10**; current hard cap **5 m at 20/20**. Natural-cap pace: **+0.2 m per rank**; weakest overcap pace: **+0.1 m per rank**. Unapproved linear-floor candidate: **6 m**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 4.1 m / 4.2 m / 4.3 m / 4.4 m / 4.5 m / 4.6 m / 4.7 m / 4.8 m / 4.9 m / 5 m. Candidate overcap: 4.2 m / 4.4 m / 4.6 m / 4.8 m / 5 m / 5.2 m / 5.4 m / 5.6 m / 5.8 m / 6 m. Source: `records/skills/playerclass08/spectralarmor2_buff.dbr` → `skillTargetRadius`.

- [ ] **Vitality Resistance** — natural cap **-25% at 10/10**; current hard cap **-35% at 20/20**. Natural-cap pace: **-2% per rank**; weakest overcap pace: **-1% per rank**. Unapproved linear-floor candidate: **-45%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: -26% / -27% / -28% / -29% / -30% / -31% / -32% / -33% / -34% / -35%. Candidate overcap: -27% / -29% / -31% / -33% / -35% / -37% / -39% / -41% / -43% / -45%. Source: `records/skills/playerclass08/spectralarmor2_buff.dbr` → `defensiveLife`.

### Summon Blight Fiend — 16/16 → 26/26

*Tooltip:* Unmoved by the noxious fumes of decay, conjure forth an abomination made of corpses and rotting filth to rise up from the earth and subdue your enemies. Only one blight fiend can be summoned at any one time. The blight fiend scales with Pet Bonuses.

*Records:* `records/skills/playerclass08/summon_blightbeast1.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Summon Blight Fiend — internal pet ability — 16/16 → 26/26

*Records:* `records/skills/playerclass08/pets/petskill_blightbeast_violentbarf.dbr` [Ashes of Malmouth]

#### Safe changes

- [ ] **Poison Damage (minimum)** — natural cap **120 at 16/16**; current hard cap **200 at 26/26**. Natural-cap pace: **+7.333 per rank**; weakest overcap pace: **+7 per rank**. Proposed safe hard cap: **200.667**. Current overcap: 128 / 136 / 143 / 151 / 159 / 166 / 174 / 182 / 190 / 200. Candidate overcap: 128 / 136 / 143.333 / 151.333 / 159.333 / 166.667 / 174.667 / 182.667 / 190.667 / 200.667. Source: `records/skills/playerclass08/pets/petskill_blightbeast_violentbarf.dbr` → `offensiveSlowPoisonMin`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Undeath Aura — 16/16 → 26/26

*Tooltip:* The Revenants presence saps all life from nearby foes.

*Records:* `records/skills/playerclass08/pets/petskill_skeleton_undeathaura1.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Reduction to Enemy Health (minimum)** — natural cap **8% at 16/16**; current hard cap **10% at 26/26**. Natural-cap pace: **+0.333% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **12.667%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 8% / 8% / 8% / 8% / 9% / 9% / 9% / 9% / 9% / 10%. Candidate overcap: 8.333% / 8.667% / 9% / 9.333% / 10.333% / 10.667% / 11% / 11.333% / 11.667% / 12.667%. Source: `records/skills/playerclass08/pets/petskill_skeleton_undeathaura1.dbr` → `offensivePercentCurrentLifeMin`.

### Undeath Missiles — 16/16 → 26/26

*Records:* `records/skills/playerclass08/pets/petskill_skeleton_aethermissiles.dbr` [Fangs of Asterkarn]; `records/skills/playerclass08/pets/petskill_skeleton_undeathmissiles.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Virulent Death — 16/16 → 26/26

*Records:* `records/skills/playerclass08/pets/petskill_blightbeast_poisonpool.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Vitality Nova — 16/16 → 26/26

*Records:* `records/skills/playerclass08/pets/petskill_wraith_vitalitynova.dbr` [Ashes of Malmouth]; `records/skills/playerclass08/pets/petskill_wraithplayer_vitalitynova.dbr` [Fangs of Asterkarn]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Will of the Crypt — 12/12 → 22/22

*Tooltip:* Infuse your skeletal minions with necrotic energies, strengthening their bones against physical blows.

*Records:* `records/skills/playerclass08/pets/petskill_skeleton_modifier.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Wraith's Touch — 16/16 → 26/26

*Records:* `records/skills/playerclass08/pets/petskill_wraith_innate01.dbr` [Ashes of Malmouth]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

## Oathkeeper

### Aegis of Menhir — 16/16 → 26/26

*Tooltip:* With the strength of the earth flowing through you by the blessings of Menhir, hurl a magical aegis that will home in upon your target and leave it staggered and dazed before returning to you. Requires a shield.

*Records:* `records/skills/playerclass09/aegis1.dbr` [Forgotten Gods]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **345% at 16/16**; current hard cap **465% at 26/26**. Natural-cap pace: **+15% per rank**; weakest overcap pace: **+12% per rank**. Proposed safe hard cap: **495%**. Current overcap: 357% / 369% / 381% / 393% / 405% / 417% / 429% / 441% / 453% / 465%. Candidate overcap: 360% / 375% / 390% / 405% / 420% / 435% / 450% / 465% / 480% / 495%. Source: `records/skills/playerclass09/aegis1.dbr` → `weaponDamagePct`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Ascension — 12/12 → 22/22

*Tooltip:* Through deep contemplation and resolute faith, an Oathkeeper may experience, even if briefly, a fragment of their deity's presence within them. This guiding light offers solace in trying times, a taste of a god's true might.

*Records:* `records/skills/playerclass09/ascension1.dbr` [Forgotten Gods]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Celestial Presence — 12/12 → 22/22

*Tooltip:* The guardian's very presence sears the souls of your heretical foes.

*Records:* `records/skills/playerclass09/pets/petskill_celestialguardian_celestialwrath1_buff.dbr` [Forgotten Gods]; `records/skills/playerclass09/pets/petskill_celestialguardian_celestialwrath1b_buff.dbr` [Forgotten Gods]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Bleeding Resistance** — natural cap **-25% at 12/12**; current hard cap **-35% at 22/22**. Natural-cap pace: **-2% per rank**; weakest overcap pace: **-1% per rank**. Unapproved linear-floor candidate: **-45%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: -26% / -27% / -28% / -29% / -30% / -31% / -32% / -33% / -34% / -35%. Candidate overcap: -27% / -29% / -31% / -33% / -35% / -37% / -39% / -41% / -43% / -45%. Source: `records/skills/playerclass09/pets/petskill_celestialguardian_celestialwrath1_buff.dbr` → `defensiveBleeding`.

- [ ] **Bleeding Resistance** — natural cap **-25% at 12/12**; current hard cap **-35% at 22/22**. Natural-cap pace: **-2% per rank**; weakest overcap pace: **-1% per rank**. Unapproved linear-floor candidate: **-45%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: -26% / -27% / -28% / -29% / -30% / -31% / -32% / -33% / -34% / -35%. Candidate overcap: -27% / -29% / -31% / -33% / -35% / -37% / -39% / -41% / -43% / -45%. Source: `records/skills/playerclass09/pets/petskill_celestialguardian_celestialwrath1b_buff.dbr` → `defensiveBleeding`.

- [ ] **ElementalResistance Resistance** — natural cap **-25% at 12/12**; current hard cap **-35% at 22/22**. Natural-cap pace: **-2% per rank**; weakest overcap pace: **-1% per rank**. Unapproved linear-floor candidate: **-45%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: -26% / -27% / -28% / -29% / -30% / -31% / -32% / -33% / -34% / -35%. Candidate overcap: -27% / -29% / -31% / -33% / -35% / -37% / -39% / -41% / -43% / -45%. Source: `records/skills/playerclass09/pets/petskill_celestialguardian_celestialwrath1_buff.dbr` → `defensiveElementalResistance`.

- [ ] **Physical Resistance** — natural cap **-25 at 12/12**; current hard cap **-35 at 22/22**. Natural-cap pace: **-2 per rank**; weakest overcap pace: **-1 per rank**. Unapproved linear-floor candidate: **-45**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: -26 / -27 / -28 / -29 / -30 / -31 / -32 / -33 / -34 / -35. Candidate overcap: -27 / -29 / -31 / -33 / -35 / -37 / -39 / -41 / -43 / -45. Source: `records/skills/playerclass09/pets/petskill_celestialguardian_celestialwrath1_buff.dbr` → `defensivePhysical`.

- [ ] **Poison Resistance** — natural cap **-25% at 12/12**; current hard cap **-35% at 22/22**. Natural-cap pace: **-2% per rank**; weakest overcap pace: **-1% per rank**. Unapproved linear-floor candidate: **-45%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: -26% / -27% / -28% / -29% / -30% / -31% / -32% / -33% / -34% / -35%. Candidate overcap: -27% / -29% / -31% / -33% / -35% / -37% / -39% / -41% / -43% / -45%. Source: `records/skills/playerclass09/pets/petskill_celestialguardian_celestialwrath1b_buff.dbr` → `defensivePoison`.

- [ ] **Target Radius** — natural cap **4 m at 12/12**; current hard cap **4.5 m at 22/22**. Natural-cap pace: **+0.033 m per rank**; weakest overcap pace: **0 m per rank**. Unapproved linear-floor candidate: **4.667 m**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 4.1 m / 4.1 m / 4.2 m / 4.2 m / 4.3 m / 4.3 m / 4.4 m / 4.4 m / 4.5 m / 4.5 m. Candidate overcap: 4.1 m / 4.133 m / 4.233 m / 4.267 m / 4.367 m / 4.4 m / 4.5 m / 4.533 m / 4.633 m / 4.667 m. Source: `records/skills/playerclass09/pets/petskill_celestialguardian_celestialwrath1_buff.dbr` → `skillTargetRadius`.

- [ ] **Target Radius** — natural cap **4 m at 12/12**; current hard cap **4.5 m at 22/22**. Natural-cap pace: **+0.033 m per rank**; weakest overcap pace: **0 m per rank**. Unapproved linear-floor candidate: **4.667 m**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 4.1 m / 4.1 m / 4.2 m / 4.2 m / 4.3 m / 4.3 m / 4.4 m / 4.4 m / 4.5 m / 4.5 m. Candidate overcap: 4.1 m / 4.133 m / 4.233 m / 4.267 m / 4.367 m / 4.4 m / 4.5 m / 4.533 m / 4.633 m / 4.667 m. Source: `records/skills/playerclass09/pets/petskill_celestialguardian_celestialwrath1b_buff.dbr` → `skillTargetRadius`.

- [ ] **Vitality Resistance** — natural cap **-25% at 12/12**; current hard cap **-35% at 22/22**. Natural-cap pace: **-2% per rank**; weakest overcap pace: **-1% per rank**. Unapproved linear-floor candidate: **-45%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: -26% / -27% / -28% / -29% / -30% / -31% / -32% / -33% / -34% / -35%. Candidate overcap: -27% / -29% / -31% / -33% / -35% / -37% / -39% / -41% / -43% / -45%. Source: `records/skills/playerclass09/pets/petskill_celestialguardian_celestialwrath1b_buff.dbr` → `defensiveLife`.

### Divine Mandate — 12/12 → 22/22

*Tooltip:* Whether raising their shield in the name of Empyrion himself, or serving under the banners of a member of his celestial court, Oathkeepers that have risen in the ranks are considered to be an extension of divine will and heralds of celestial retribution.

*Records:* `records/skills/playerclass09/divinemandate1.dbr` [Forgotten Gods]

#### Safe changes

- [ ] **Burn Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass09/divinemandate1.dbr` → `offensiveSlowFireModifier`.

- [ ] **Fire Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass09/divinemandate1.dbr` → `offensiveFireModifier`.

- [ ] **Internal Trauma Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass09/divinemandate1.dbr` → `offensiveSlowPhysicalModifier`.

- [ ] **Internal Trauma Duration** — natural cap **75% at 12/12**; current hard cap **125% at 22/22**. Natural-cap pace: **+5.667% per rank**; weakest overcap pace: **+5% per rank**. Proposed safe hard cap: **131.667%**. Current overcap: 80% / 85% / 90% / 95% / 100% / 105% / 110% / 115% / 120% / 125%. Candidate overcap: 80.667% / 86.333% / 92% / 97.667% / 103.333% / 109% / 114.667% / 120.333% / 126% / 131.667%. Source: `records/skills/playerclass09/divinemandate1.dbr` → `offensiveSlowPhysicalDurationModifier`.

- [ ] **Physical Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass09/divinemandate1.dbr` → `offensivePhysicalModifier`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Dreeg's Cleave — 16/16 → 26/26

*Records:* `records/skills/playerclass09/pets/petskill_celestialguardian_bladearc1b.dbr` [Forgotten Gods]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Empyrion's Cleave — 16/16 → 26/26

*Records:* `records/skills/playerclass09/pets/petskill_celestialguardian_bladearc1.dbr` [Forgotten Gods]; `records/skills/playerclass09/pets/petskill_celestialguardian_bladearc1c.dbr` [Forgotten Gods]; `records/skills/playerclass09/pets/petskill_celestialguardian_bladearc1d.dbr` [Fangs of Asterkarn]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Eye of Reckoning — 16/16 → 26/26

*Tooltip:* When the first Oathkeepers looked upon the celestial vale and witnessed the astounding power of Empyrion's light, they sought to replicate its brilliance and might. The culmination of their prayers and training was the Eye of Reckoning, a devastating display of martial combat that rapidly cleaves through all nearby foes in a whirlwind of fire and light for as long as the Oathkeeper channels their focus into the attack. Requires a melee weapon. At 100% Attack Speed, Eye of Reckoning deals damage and drains Energy every 0.16s.

*Records:* `records/skills/playerclass09/eyeofreckoning1.dbr` [Forgotten Gods]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Energy Cost** — natural cap **11 Energy at 16/16**; current hard cap **16 Energy at 26/26**. Natural-cap pace: **+0.667 Energy per rank**; weakest overcap pace: **0 Energy per rank**. Unapproved linear-floor candidate: **19.333 Energy**. **Review reason:** Energy cost is a cost curve, not a player benefit; lowering its overcap penalty would be a separate balance change. Recommended default: preserve vanilla until explicitly approved. Current overcap: 11 Energy / 12 Energy / 12 Energy / 13 Energy / 13 Energy / 14 Energy / 14 Energy / 15 Energy / 15 Energy / 16 Energy. Candidate overcap: 11.667 Energy / 12.667 Energy / 13.333 Energy / 14.333 Energy / 15 Energy / 16 Energy / 16.667 Energy / 17.667 Energy / 18.333 Energy / 19.333 Energy. Source: `records/skills/playerclass09/eyeofreckoning1.dbr` → `skillManaCost`.

### Heart of Wrath — 12/12 → 22/22

*Tooltip:* Rendering judgment fills your heart with fiery purpose which burns nearby foes.

*Records:* `records/skills/playerclass09/judgment3.dbr` [Forgotten Gods]

#### Safe changes

- [ ] **Retaliation Damage Added to Attack** — natural cap **24% at 12/12**; current hard cap **34% at 22/22**. Natural-cap pace: **+1.333% per rank**; weakest overcap pace: **+1% per rank**. Proposed safe hard cap: **37.333%**. Current overcap: 25% / 26% / 27% / 28% / 29% / 30% / 31% / 32% / 33% / 34%. Candidate overcap: 25.333% / 26.667% / 28% / 29.333% / 30.667% / 32% / 33.333% / 34.667% / 36% / 37.333%. Source: `records/skills/playerclass09/judgment3.dbr` → `retaliationDamagePct`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Judgment — 12/12 → 22/22

*Tooltip:* Oathkeepers are the zealous enforcers of celestial judgment. By their will, heathenous foes are drawn in so that their final judgment may be rendered.

*Records:* `records/skills/playerclass09/judgment1.dbr` [Forgotten Gods]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Target Radius** — natural cap **10 m at 12/12**; current hard cap **12 m at 22/22**. Natural-cap pace: **+0.3 m per rank**; weakest overcap pace: **+0.2 m per rank**. Unapproved linear-floor candidate: **13 m**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 10.2 m / 10.4 m / 10.6 m / 10.8 m / 11 m / 11.2 m / 11.4 m / 11.6 m / 11.8 m / 12 m. Candidate overcap: 10.3 m / 10.6 m / 10.9 m / 11.2 m / 11.5 m / 11.8 m / 12.1 m / 12.4 m / 12.7 m / 13 m. Source: `records/skills/playerclass09/judgment1.dbr` → `skillTargetRadius`.

### Path of the Three — 12/12 → 22/22

*Tooltip:* Not all Oathkeepers swear fealty to deities blessing the Erulan empire. Some offer themselves before the three Witch Gods in the hopes of harnessing even a fraction of their terrible powers. These Oathkeepers consider themselves to be upon the true path, not deceived by empty promises of a light that has forsaken humanity.

*Records:* `records/skills/playerclass09/pathofthethree1.dbr` [Forgotten Gods]

#### Safe changes

- [ ] **Acid Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass09/pathofthethree1.dbr` → `offensivePoisonModifier`.

- [ ] **Poison Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass09/pathofthethree1.dbr` → `offensiveSlowPoisonModifier`.

- [ ] **Poison Duration** — natural cap **75% at 12/12**; current hard cap **125% at 22/22**. Natural-cap pace: **+5.667% per rank**; weakest overcap pace: **+5% per rank**. Proposed safe hard cap: **131.667%**. Current overcap: 80% / 85% / 90% / 95% / 100% / 105% / 110% / 115% / 120% / 125%. Candidate overcap: 80.667% / 86.333% / 92% / 97.667% / 103.333% / 109% / 114.667% / 120.333% / 126% / 131.667%. Source: `records/skills/playerclass09/pathofthethree1.dbr` → `offensiveSlowPoisonDurationModifier`.

- [ ] **Vitality Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass09/pathofthethree1.dbr` → `offensiveLifeModifier`.

- [ ] **Vitality Decay Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass09/pathofthethree1.dbr` → `offensiveSlowLifeModifier`.

#### To-be-exception

- [ ] **Skill Recharge Reduction** — natural cap **10% at 12/12**; current hard cap **15% at 22/22**. Natural-cap pace: **+0.333% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **16.667%**. **Review reason:** Recharge changes alter uptime and rotation breakpoints rather than only restoring a stat growth rate. Recommended default: preserve vanilla until explicitly approved. Current overcap: 11% / 11% / 12% / 12% / 13% / 13% / 14% / 14% / 15% / 15%. Candidate overcap: 11% / 11.333% / 12.333% / 12.667% / 13.667% / 14% / 15% / 15.333% / 16.333% / 16.667%. Source: `records/skills/playerclass09/pathofthethree1.dbr` → `skillCooldownReduction`.

### Presence of Virtue — 12/12 → 22/22

*Tooltip:* Oathkeepers are paragons of virtue and faith, properties they inspire within nearby allies. Those that stand beside them cannot help but be inspired into feats of valor.

*Records:* `records/skills/playerclass09/presenceofvirtue1_buff.dbr` [Forgotten Gods]

#### Safe changes

- [ ] **Offensive Ability** — natural cap **133 at 12/12**; current hard cap **220 at 22/22**. Natural-cap pace: **+11 per rank**; weakest overcap pace: **+8 per rank**. Proposed safe hard cap: **247**. Current overcap: 141 / 149 / 157 / 165 / 173 / 181 / 189 / 197 / 205 / 220. Candidate overcap: 144 / 155 / 166 / 177 / 188 / 199 / 210 / 221 / 232 / 247. Source: `records/skills/playerclass09/presenceofvirtue1_buff.dbr` → `characterOffensiveAbility`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Resilience — 12/12 → 22/22

*Tooltip:* For an Oathkeeper, resolute faith is the absolute defense. As life fades, so the spirit rises to oppose further harm.

*Records:* `records/skills/playerclass09/passive02.dbr` [Forgotten Gods]

#### Safe changes

- [ ] **Defensive Ability** — natural cap **12% at 12/12**; current hard cap **18% at 22/22**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Proposed safe hard cap: **23%**. Current overcap: 12% / 13% / 13% / 14% / 14% / 15% / 15% / 16% / 16% / 18%. Candidate overcap: 13% / 14% / 15% / 16% / 17% / 18% / 19% / 20% / 21% / 23%. Source: `records/skills/playerclass09/passive02.dbr` → `characterDefensiveAbilityModifier`.

#### To-be-exception

- [ ] **AllMaxResist Resistance** — natural cap **5% at 12/12**; current hard cap **8% at 22/22**. Natural-cap pace: **+0.333% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **10.333%**. **Review reason:** Absorption and maximum resistance can cross strong defensive breakpoints and require separate balance approval. Recommended default: preserve vanilla until explicitly approved. Current overcap: 5% / 5% / 6% / 6% / 6% / 7% / 7% / 7% / 7% / 8%. Candidate overcap: 5.333% / 5.667% / 6.667% / 7% / 7.333% / 8.333% / 8.667% / 9% / 9.333% / 10.333%. Source: `records/skills/playerclass09/passive02.dbr` → `defensiveAllMaxResist`.

- [ ] **Physical Resistance** — natural cap **10 at 12/12**; current hard cap **15 at 22/22**. Natural-cap pace: **+0.667 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **18.333**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: 10 / 11 / 11 / 12 / 12 / 13 / 13 / 14 / 14 / 15. Candidate overcap: 10.667 / 11.667 / 12.333 / 13.333 / 14 / 15 / 15.667 / 16.667 / 17.333 / 18.333. Source: `records/skills/playerclass09/passive02.dbr` → `defensivePhysical`.

### Righteous Fervor — 16/16 → 26/26

*Tooltip:* Oathkeepers charge into battle with prayers on their lips and righteousness in their hearts. When used as your default weapon attack, Righteous Fervor increases the intensity of your attacks with every strike. Building up charges increases the potency of the bonuses.

*Records:* `records/skills/playerclass09/righteousfervor1.dbr` [Forgotten Gods]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **150% at 16/16**; current hard cap **158% at 26/26**. Natural-cap pace: **+3% per rank**; weakest overcap pace: **0% per rank**. Proposed safe hard cap: **180%**. Current overcap: 151% / 152% / 152% / 153% / 154% / 155% / 155% / 156% / 157% / 158%. Candidate overcap: 153% / 156% / 159% / 162% / 165% / 168% / 171% / 174% / 177% / 180%. Source: `records/skills/playerclass09/righteousfervor1.dbr` → `weaponDamagePct`.

#### To-be-exception

- [ ] **Charge Level** — natural cap **8 at 16/16**; current hard cap **9 at 26/26**. Natural-cap pace: **+0.333 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **12**. **Review reason:** Charge mechanics use discrete thresholds and need skill-specific behavior testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 8 / 8 / 8 / 8 / 8 / 8 / 8 / 9 / 9 / 9. Candidate overcap: 8.333 / 8.667 / 9 / 9.333 / 9.667 / 10 / 10.333 / 11.333 / 11.667 / 12. Source: `records/skills/playerclass09/righteousfervor1.dbr` → `skillChargeLevel`.

- [ ] **Energy Cost** — natural cap **7 Energy at 16/16**; current hard cap **10 Energy at 26/26**. Natural-cap pace: **+0.333 Energy per rank**; weakest overcap pace: **0 Energy per rank**. Unapproved linear-floor candidate: **12.333 Energy**. **Review reason:** Energy cost is a cost curve, not a player benefit; lowering its overcap penalty would be a separate balance change. Recommended default: preserve vanilla until explicitly approved. Current overcap: 7 Energy / 8 Energy / 8 Energy / 8 Energy / 9 Energy / 9 Energy / 9 Energy / 10 Energy / 10 Energy / 10 Energy. Candidate overcap: 7.333 Energy / 8.333 Energy / 8.667 Energy / 9 Energy / 10 Energy / 10.333 Energy / 10.667 Energy / 11.667 Energy / 12 Energy / 12.333 Energy. Source: `records/skills/playerclass09/righteousfervor1.dbr` → `skillManaCost`.

### Safeguard — 12/12 → 22/22

*Tooltip:* In the hands of a trained Oathkeeper, a shield is not just an unbreakable defense, but also a formidable weapon. This is a shield bonus.

*Records:* `records/skills/playerclass09/passive01.dbr` [Forgotten Gods]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Shattering Smash — 10/10 → 20/20

*Tooltip:* Such is an Oathkeeper's prowess with a shield that the force of the blow resonates through the earth and sends an additional shockwave through your initial target. This is a shield combat technique that activates off of default weapon attacks. Requires a melee weapon and shield.

*Records:* `records/skills/playerclass09/wpattack02.dbr` [Forgotten Gods]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **140% at 10/10**; current hard cap **160% at 20/20**. Natural-cap pace: **+6% per rank**; weakest overcap pace: **+2% per rank**. Proposed safe hard cap: **200%**. Current overcap: 142% / 144% / 146% / 148% / 150% / 152% / 154% / 156% / 158% / 160%. Candidate overcap: 146% / 152% / 158% / 164% / 170% / 176% / 182% / 188% / 194% / 200%. Source: `records/skills/playerclass09/wpattack02.dbr` → `weaponDamagePct`.

#### To-be-exception

- [ ] **Activation Weight** — natural cap **26% at 10/10**; current hard cap **30% at 20/20**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **36%**. **Review reason:** Chance and weighting fields are discrete probability mechanics and may have engine or balance caps. Recommended default: preserve vanilla until explicitly approved. Current overcap: 27% / 27% / 27% / 28% / 28% / 28% / 29% / 29% / 29% / 30%. Candidate overcap: 27% / 28% / 29% / 30% / 31% / 32% / 33% / 34% / 35% / 36%. Source: `records/skills/playerclass09/wpattack02.dbr` → `skillChanceWeight`.

- [ ] **Reduced Target Physical Resistance** — natural cap **22% at 10/10**; current hard cap **33% at 20/20**. Natural-cap pace: **+2% per rank**; weakest overcap pace: **+1% per rank**. Unapproved linear-floor candidate: **42%**. **Review reason:** Resistance reduction compounds party and damage scaling and must be reviewed against stacking rules. Recommended default: preserve vanilla until explicitly approved. Current overcap: 23% / 24% / 25% / 26% / 27% / 28% / 29% / 30% / 31% / 33%. Candidate overcap: 24% / 26% / 28% / 30% / 32% / 34% / 36% / 38% / 40% / 42%. Source: `records/skills/playerclass09/wpattack02.dbr` → `offensivePhysicalResistanceReductionAbsoluteMin`.

### Smite — 10/10 → 20/20

*Tooltip:* A precise strike fueled by the Oathkeeper's righteous fury leaves enemies staggered and broken. With sufficient practice, this technique can even be extended to a shield. Can activate with all default weapon attacks. When used with a melee weapon and shield, will also strike with the shield.

*Records:* `records/skills/playerclass09/wpattack01.dbr` [Forgotten Gods]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **151% at 10/10**; current hard cap **171% at 20/20**. Natural-cap pace: **+2.667% per rank**; weakest overcap pace: **+2% per rank**. Proposed safe hard cap: **177.667%**. Current overcap: 153% / 155% / 157% / 159% / 161% / 163% / 165% / 167% / 169% / 171%. Candidate overcap: 153.667% / 156.333% / 159% / 161.667% / 164.333% / 167% / 169.667% / 172.333% / 175% / 177.667%. Source: `records/skills/playerclass09/wpattack01.dbr` → `weaponDamagePct`.

#### To-be-exception

- [ ] **Activation Weight** — natural cap **26% at 10/10**; current hard cap **30% at 20/20**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **36%**. **Review reason:** Chance and weighting fields are discrete probability mechanics and may have engine or balance caps. Recommended default: preserve vanilla until explicitly approved. Current overcap: 27% / 27% / 27% / 28% / 28% / 28% / 29% / 29% / 29% / 30%. Candidate overcap: 27% / 28% / 29% / 30% / 31% / 32% / 33% / 34% / 35% / 36%. Source: `records/skills/playerclass09/wpattack01.dbr` → `skillChanceWeight`.

### Soulfire — 12/12 → 22/22

*Tooltip:* Through the righteous fire burning with the Oathkeeper's soul, the light becomes as if a physical force, spiraling outward and piercing through unwary foes during the Eye of Reckoning.

*Records:* `records/skills/playerclass09/eyeofreckoning2.dbr` [Forgotten Gods]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Summon Guardian of Empyrion — 16/16 → 26/26

*Tooltip:* Call forth a loyal servant of Empyrion to cleave through your foes and render celestial judgment. The Celestial Guardian scales with player bonuses.

*Records:* `records/skills/playerclass09/summon_celestialguardian1.dbr` [Forgotten Gods]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Vire's Might — 16/16 → 26/26

*Tooltip:* First recorded in Arkovian texts when Agavold the Stalwart of the Temple of Vire selflessly charged through an entire legion of enemy forces, scattering their ranks and exposing them to an onslaught of arrows, all without taking a scratch. Vire's Might has since become a prime display of an Oathkeeper's strength, both physical and spiritual, in the face of seemingly impossible odds. When used with a shield, the shield's damage is added.

*Records:* `records/skills/playerclass09/viremight1.dbr` [Forgotten Gods]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **335% at 16/16**; current hard cap **415% at 26/26**. Natural-cap pace: **+15% per rank**; weakest overcap pace: **+8% per rank**. Proposed safe hard cap: **485%**. Current overcap: 343% / 351% / 359% / 367% / 375% / 383% / 391% / 399% / 407% / 415%. Candidate overcap: 350% / 365% / 380% / 395% / 410% / 425% / 440% / 455% / 470% / 485%. Source: `records/skills/playerclass09/viremight1.dbr` → `weaponDamagePct`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Volcanic Stride — 12/12 → 22/22

*Tooltip:* With fire in your heart and a prayer to Vire on your lips, your valiant charge leaves behind volcanic flames to incinerate your foes.

*Records:* `records/skills/playerclass09/viremight2.dbr` [Forgotten Gods]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

## Berserker

### Amatok's Pact — 12/12 → 22/22

*Tooltip:* The Kurn are spiritual people, believing their fates to be firmly tied to the will of their gods. Chief among them is Amatok, the Spirit of Winter. Without his mercy, none would survive Asterkarn's brutal winters. You form a pact with Amatok, granting his blessing to you and nearby allies.

*Records:* `records/skills/playerclass10/amatokpact1_buff.dbr` [Fangs of Asterkarn]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Avalanche — 10/10 → 20/20

*Tooltip:* You harness the might of Amatok in your attack, sending an avalanche of crushing ice with your attack. Can activate with all default weapon attacks.

*Records:* `records/skills/playerclass10/wpattack02.dbr` [Fangs of Asterkarn]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **120% at 10/10**; current hard cap **135% at 20/20**. Natural-cap pace: **+5% per rank**; weakest overcap pace: **+1% per rank**. Proposed safe hard cap: **170%**. Current overcap: 121% / 123% / 124% / 126% / 127% / 129% / 130% / 132% / 133% / 135%. Candidate overcap: 125% / 130% / 135% / 140% / 145% / 150% / 155% / 160% / 165% / 170%. Source: `records/skills/playerclass10/wpattack02.dbr` → `weaponDamagePct`.

#### To-be-exception

- [ ] **Activation Weight** — natural cap **26% at 10/10**; current hard cap **30% at 20/20**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **36%**. **Review reason:** Chance and weighting fields are discrete probability mechanics and may have engine or balance caps. Recommended default: preserve vanilla until explicitly approved. Current overcap: 27% / 27% / 27% / 28% / 28% / 28% / 29% / 29% / 29% / 30%. Candidate overcap: 27% / 28% / 29% / 30% / 31% / 32% / 33% / 34% / 35% / 36%. Source: `records/skills/playerclass10/wpattack02.dbr` → `skillChanceWeight`.

### Battle Surge — 12/12 → 22/22

*Tooltip:* To a trained berserker, there is no greater thrill than the glory of combat. As you land critical blows, you feel invigorated.

*Records:* `records/skills/playerclass10/passive02.dbr` [Fangs of Asterkarn]

#### Safe changes

- [ ] **Energy Regeneration** — natural cap **17 at 12/12**; current hard cap **28 at 22/22**. Natural-cap pace: **+1.133 per rank**; weakest overcap pace: **+1.1 per rank**. Proposed safe hard cap: **28.333**. Current overcap: 18.1 / 19.2 / 20.3 / 21.4 / 22.5 / 23.6 / 24.7 / 25.8 / 26.9 / 28. Candidate overcap: 18.133 / 19.267 / 20.4 / 21.533 / 22.667 / 23.8 / 24.933 / 26.067 / 27.2 / 28.333. Source: `records/skills/playerclass10/passive02.dbr` → `characterManaRegen`.

#### To-be-exception

- [ ] **Health Restoration Duration** — natural cap **14% at 12/12**; current hard cap **18% at 22/22**. Natural-cap pace: **+0.667% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **22%**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 15% / 15% / 15% / 16% / 16% / 16% / 17% / 17% / 17% / 18%. Candidate overcap: 15% / 15.667% / 16.333% / 17.333% / 18% / 18.667% / 19.667% / 20.333% / 21% / 22%. Source: `records/skills/playerclass10/passive02.dbr` → `skillLifePercentBuffDuration`.

- [ ] **Skill Recharge** — natural cap **3 s at 12/12**; current hard cap **2 s at 22/22**. Natural-cap pace: **-0.2 s per rank**; weakest overcap pace: **-0.1 s per rank**. Unapproved linear-floor candidate: **1 s**. **Review reason:** Recharge changes alter uptime and rotation breakpoints rather than only restoring a stat growth rate. Recommended default: preserve vanilla until explicitly approved. Current overcap: 2.9 s / 2.8 s / 2.7 s / 2.6 s / 2.5 s / 2.4 s / 2.3 s / 2.2 s / 2.1 s / 2 s. Candidate overcap: 2.8 s / 2.6 s / 2.4 s / 2.2 s / 2 s / 1.8 s / 1.6 s / 1.4 s / 1.2 s / 1 s. Source: `records/skills/playerclass10/passive02.dbr` → `skillCooldownTime`.

### Bloodborne — 12/12 → 22/22

*Tooltip:* Those that give in completely to their primal impulses discover newfound might and sharpened senses. Only the release of death can stop a warrior in such a state of mind.

*Records:* `records/skills/playerclass10/bloodborne1.dbr` [Fangs of Asterkarn]

#### Safe changes

- [ ] **Bleeding Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass10/bloodborne1.dbr` → `offensiveSlowBleedingModifier`.

- [ ] **Bleeding Duration** — natural cap **75% at 12/12**; current hard cap **125% at 22/22**. Natural-cap pace: **+5.667% per rank**; weakest overcap pace: **+5% per rank**. Proposed safe hard cap: **131.667%**. Current overcap: 80% / 85% / 90% / 95% / 100% / 105% / 110% / 115% / 120% / 125%. Candidate overcap: 80.667% / 86.333% / 92% / 97.667% / 103.333% / 109% / 114.667% / 120.333% / 126% / 131.667%. Source: `records/skills/playerclass10/bloodborne1.dbr` → `offensiveSlowBleedingDurationModifier`.

- [ ] **Chaos Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass10/bloodborne1.dbr` → `offensiveChaosModifier`.

- [ ] **Pierce Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass10/bloodborne1.dbr` → `offensivePierceModifier`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Bloodfangs — 10/10 → 20/20

*Tooltip:* A cruel double strike leaves your enemies bleeding out. Can activate with all default weapon attacks.

*Records:* `records/skills/playerclass10/wpattack01.dbr` [Fangs of Asterkarn]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **90% at 10/10**; current hard cap **100% at 20/20**. Natural-cap pace: **+2% per rank**; weakest overcap pace: **+1% per rank**. Proposed safe hard cap: **110%**. Current overcap: 91% / 92% / 93% / 94% / 95% / 96% / 97% / 98% / 99% / 100%. Candidate overcap: 92% / 94% / 96% / 98% / 100% / 102% / 104% / 106% / 108% / 110%. Source: `records/skills/playerclass10/wpattack01.dbr` → `weaponDamagePct`.

#### To-be-exception

- [ ] **Activation Weight** — natural cap **26% at 10/10**; current hard cap **30% at 20/20**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **36%**. **Review reason:** Chance and weighting fields are discrete probability mechanics and may have engine or balance caps. Recommended default: preserve vanilla until explicitly approved. Current overcap: 27% / 27% / 27% / 28% / 28% / 28% / 29% / 29% / 29% / 30%. Candidate overcap: 27% / 28% / 29% / 30% / 31% / 32% / 33% / 34% / 35% / 36%. Source: `records/skills/playerclass10/wpattack01.dbr` → `skillChanceWeight`.

### Bonechilling Cry — 12/12 → 22/22

*Tooltip:* You unleash a bloodcurdling battle cry that shatters enemy defenses and leaves your foes demoralized and broken.

*Records:* `records/skills/playerclass10/bonechillingcry1_buff.dbr` [Fangs of Asterkarn]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Bleeding Resistance** — natural cap **-40% at 12/12**; current hard cap **-50% at 22/22**. Natural-cap pace: **-3% per rank**; weakest overcap pace: **-1% per rank**. Unapproved linear-floor candidate: **-70%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: -41% / -42% / -43% / -44% / -45% / -46% / -47% / -48% / -49% / -50%. Candidate overcap: -43% / -46% / -49% / -52% / -55% / -58% / -61% / -64% / -67% / -70%. Source: `records/skills/playerclass10/bonechillingcry1_buff.dbr` → `defensiveBleeding`.

- [ ] **Chaos Resistance** — natural cap **-25% at 12/12**; current hard cap **-35% at 22/22**. Natural-cap pace: **-2% per rank**; weakest overcap pace: **-1% per rank**. Unapproved linear-floor candidate: **-45%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: -26% / -27% / -28% / -29% / -30% / -31% / -32% / -33% / -34% / -35%. Candidate overcap: -27% / -29% / -31% / -33% / -35% / -37% / -39% / -41% / -43% / -45%. Source: `records/skills/playerclass10/bonechillingcry1_buff.dbr` → `defensiveChaos`.

- [ ] **Cold Resistance** — natural cap **-25% at 12/12**; current hard cap **-35% at 22/22**. Natural-cap pace: **-2% per rank**; weakest overcap pace: **-1% per rank**. Unapproved linear-floor candidate: **-45%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: -26% / -27% / -28% / -29% / -30% / -31% / -32% / -33% / -34% / -35%. Candidate overcap: -27% / -29% / -31% / -33% / -35% / -37% / -39% / -41% / -43% / -45%. Source: `records/skills/playerclass10/bonechillingcry1_buff.dbr` → `defensiveCold`.

- [ ] **Pierce Resistance** — natural cap **-30% at 12/12**; current hard cap **-40% at 22/22**. Natural-cap pace: **-2% per rank**; weakest overcap pace: **-1% per rank**. Unapproved linear-floor candidate: **-50%**. **Review reason:** Resistance and crowd-control protection can approach caps and should be reviewed by damage type. Recommended default: preserve vanilla until explicitly approved. Current overcap: -31% / -32% / -33% / -34% / -35% / -36% / -37% / -38% / -39% / -40%. Candidate overcap: -32% / -34% / -36% / -38% / -40% / -42% / -44% / -46% / -48% / -50%. Source: `records/skills/playerclass10/bonechillingcry1_buff.dbr` → `defensivePierce`.

- [ ] **Target Radius** — natural cap **10 m at 12/12**; current hard cap **12 m at 22/22**. Natural-cap pace: **+0.3 m per rank**; weakest overcap pace: **+0.2 m per rank**. Unapproved linear-floor candidate: **13 m**. **Review reason:** Duration and area values create gameplay breakpoints and need visual and encounter testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 10.2 m / 10.4 m / 10.6 m / 10.8 m / 11 m / 11.2 m / 11.4 m / 11.6 m / 11.8 m / 12 m. Candidate overcap: 10.3 m / 10.6 m / 10.9 m / 11.2 m / 11.5 m / 11.8 m / 12.1 m / 12.4 m / 12.7 m / 13 m. Source: `records/skills/playerclass10/bonechillingcry1_buff.dbr` → `skillTargetRadius`.

### Cold Snap — 16/16 → 26/26

*Tooltip:* You slam your talons into the ground, unleashing a cascade of ice. The ice initially deals 30% reduced damage before reaching its full strength as it expands outward.

*Records:* `records/skills/playerclass10/wereraven1_skill02_icering.dbr` [Fangs of Asterkarn]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Fault Line — 12/12 → 22/22

*Tooltip:* You leap with such ferocity that the resulting shockwave sends ripples through the very earth. The fault lines initially deal 25% reduced damage before reaching their full strength as they expand outward.

*Records:* `records/skills/playerclass10/leap2.dbr` [Fangs of Asterkarn]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Feral Claws — 16/16 → 26/26

*Tooltip:* You swipe at your foes with savage claws, cutting through their ranks.

*Records:* `records/skills/playerclass10/werewolf1_skill01_claws.dbr` [Fangs of Asterkarn]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **150% at 16/16**; current hard cap **192% at 26/26**. Natural-cap pace: **+5% per rank**; weakest overcap pace: **+4% per rank**. Proposed safe hard cap: **201%**. Current overcap: 154% / 158% / 162% / 166% / 170% / 174% / 178% / 182% / 186% / 192%. Candidate overcap: 155% / 160% / 165% / 170% / 175% / 180% / 185% / 190% / 195% / 201%. Source: `records/skills/playerclass10/werewolf1_skill01_claws.dbr` → `weaponDamagePct`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Hailstorm — 12/12 → 22/22

*Tooltip:* As the winds howl around you, icy hail forms and descends upon your foes.

*Records:* `records/skills/playerclass10/windsofasterkarn2.dbr` [Fangs of Asterkarn]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Heart of Asterkarn — 12/12 → 22/22

*Tooltip:* Those that have embraced the chill of Asterkarn in their hearts are forever changed by the ordeal. They brave Cairn's dangers knowing that Amatok walks with them.

*Records:* `records/skills/playerclass10/heartofastekarn1.dbr` [Fangs of Asterkarn]

#### Safe changes

- [ ] **Cold Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass10/heartofastekarn1.dbr` → `offensiveColdModifier`.

- [ ] **Frostburn Damage** — natural cap **135% at 12/12**; current hard cap **210% at 22/22**. Natural-cap pace: **+10% per rank**; weakest overcap pace: **+7% per rank**. Proposed safe hard cap: **235%**. Current overcap: 143% / 150% / 158% / 165% / 173% / 180% / 188% / 195% / 203% / 210%. Candidate overcap: 145% / 155% / 165% / 175% / 185% / 195% / 205% / 215% / 225% / 235%. Source: `records/skills/playerclass10/heartofastekarn1.dbr` → `offensiveSlowColdModifier`.

- [ ] **Frostburn Duration** — natural cap **75% at 12/12**; current hard cap **125% at 22/22**. Natural-cap pace: **+5.667% per rank**; weakest overcap pace: **+5% per rank**. Proposed safe hard cap: **131.667%**. Current overcap: 80% / 85% / 90% / 95% / 100% / 105% / 110% / 115% / 120% / 125%. Candidate overcap: 80.667% / 86.333% / 92% / 97.667% / 103.333% / 109% / 114.667% / 120.333% / 126% / 131.667%. Source: `records/skills/playerclass10/heartofastekarn1.dbr` → `offensiveSlowColdDurationModifier`.

- [ ] **Offensive Ability** — natural cap **14% at 12/12**; current hard cap **20% at 22/22**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Proposed safe hard cap: **25%**. Current overcap: 14% / 15% / 15% / 16% / 16% / 17% / 17% / 18% / 18% / 20%. Candidate overcap: 15% / 16% / 17% / 18% / 19% / 20% / 21% / 22% / 23% / 25%. Source: `records/skills/playerclass10/heartofastekarn1.dbr` → `characterOffensiveAbilityModifier`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Ice Talons — 16/16 → 26/26

*Tooltip:* You conjure vicious ice talons to tear through enemies in front of you.

*Records:* `records/skills/playerclass10/wereraven1_skill01_icicles.dbr` [Fangs of Asterkarn]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Implements of War — 12/12 → 22/22

*Tooltip:* Kurn berserkers have honed the art of two-weapon combat to deadly perfection. Their weapons are not just tools, but an extension of their relentless onslaught. This is a dual weapon bonus. Also enables the ability to dual wield weapons.

*Records:* `records/skills/playerclass10/passive01.dbr` [Fangs of Asterkarn]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Charge Cost Reduction** — natural cap **18 at 12/12**; current hard cap **25 at 22/22**. Natural-cap pace: **+1 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **28**. **Review reason:** Charge mechanics use discrete thresholds and need skill-specific behavior testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 19 / 20 / 20 / 21 / 22 / 22 / 23 / 24 / 24 / 25. Candidate overcap: 19 / 20 / 21 / 22 / 23 / 24 / 25 / 26 / 27 / 28. Source: `records/skills/playerclass10/passive01.dbr` → `skillComboChargeSpendReduction`.

### Leap — 16/16 → 26/26

*Tooltip:* Ever the first into the fray, you leap with such ferocity that the very earth shatters upon your arrival.

*Records:* `records/skills/playerclass10/leap1.dbr` [Fangs of Asterkarn]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **265% at 16/16**; current hard cap **345% at 26/26**. Natural-cap pace: **+9% per rank**; weakest overcap pace: **+8% per rank**. Proposed safe hard cap: **355%**. Current overcap: 273% / 281% / 289% / 297% / 305% / 313% / 321% / 329% / 337% / 345%. Candidate overcap: 274% / 283% / 292% / 301% / 310% / 319% / 328% / 337% / 346% / 355%. Source: `records/skills/playerclass10/leap1.dbr` → `weaponDamagePct`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Onslaught — 16/16 → 26/26

*Tooltip:* Kurn berserkers would lull their enemies into a false sense of confidence by engaging in a series of feints before unleashing a devastating well-timed blow. When used as your default weapon attack, Onslaught generates stacks. Your next activated cooldown attack will consume all stacks to deal additional damage.

*Records:* `records/skills/playerclass10/onslaught1.dbr` [Fangs of Asterkarn]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Combo Charge Level** — natural cap **5 at 16/16**; current hard cap **6 at 26/26**. Natural-cap pace: **+0.333 per rank**; weakest overcap pace: **0 per rank**. Unapproved linear-floor candidate: **9**. **Review reason:** Charge mechanics use discrete thresholds and need skill-specific behavior testing. Recommended default: preserve vanilla until explicitly approved. Current overcap: 5 / 5 / 5 / 5 / 5 / 5 / 5 / 5 / 6 / 6. Candidate overcap: 5.333 / 5.667 / 6 / 6.333 / 6.667 / 7 / 7.333 / 7.667 / 8.667 / 9. Source: `records/skills/playerclass10/onslaught1.dbr` → `skillComboChargeLevel`.

- [ ] **Energy Cost** — natural cap **7 Energy at 16/16**; current hard cap **10 Energy at 26/26**. Natural-cap pace: **+0.333 Energy per rank**; weakest overcap pace: **0 Energy per rank**. Unapproved linear-floor candidate: **12.333 Energy**. **Review reason:** Energy cost is a cost curve, not a player benefit; lowering its overcap penalty would be a separate balance change. Recommended default: preserve vanilla until explicitly approved. Current overcap: 7 Energy / 8 Energy / 8 Energy / 8 Energy / 9 Energy / 9 Energy / 9 Energy / 10 Energy / 10 Energy / 10 Energy. Candidate overcap: 7.333 Energy / 8.333 Energy / 8.667 Energy / 9 Energy / 10 Energy / 10.333 Energy / 10.667 Energy / 11.667 Energy / 12 Energy / 12.333 Energy. Source: `records/skills/playerclass10/onslaught1.dbr` → `skillManaCost`.

### Rallying Cry — 12/12 → 22/22

*Tooltip:* You unleash a boisterous battle cry that reinvigorates you and your allies and rallies them back into the fray.

*Records:* `records/skills/playerclass10/rallyingcry1_buff.dbr` [Fangs of Asterkarn]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Movement Speed** — natural cap **18% at 12/12**; current hard cap **24% at 22/22**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **28%**. **Review reason:** This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions. Recommended default: preserve vanilla until explicitly approved. Current overcap: 19% / 19% / 20% / 20% / 21% / 21% / 22% / 22% / 23% / 24%. Candidate overcap: 19% / 20% / 21% / 22% / 23% / 24% / 25% / 26% / 27% / 28%. Source: `records/skills/playerclass10/rallyingcry1_buff.dbr` → `characterRunSpeedModifier`.

### Rip and Tear — 16/16 → 26/26

*Tooltip:* You rip and tear through your foes in a straight line, tossing the weak aside as the fodder they are.

*Records:* `records/skills/playerclass10/werewolf1_skill02_charge.dbr` [Fangs of Asterkarn]

#### Safe changes

- [ ] **Weapon Damage** — natural cap **295% at 16/16**; current hard cap **385% at 26/26**. Natural-cap pace: **+13% per rank**; weakest overcap pace: **+9% per rank**. Proposed safe hard cap: **425%**. Current overcap: 304% / 313% / 322% / 331% / 340% / 349% / 358% / 367% / 376% / 385%. Candidate overcap: 308% / 321% / 334% / 347% / 360% / 373% / 386% / 399% / 412% / 425%. Source: `records/skills/playerclass10/werewolf1_skill02_charge.dbr` → `weaponDamagePct`.

#### To-be-exception

- None identified by the conservative numeric scan.

### Untamed Rage — 12/12 → 22/22

*Tooltip:* A wild beast is most dangerous when cornered, so too is a wounded berserker. As harm comes to you, it only deepens your rage.

*Records:* `records/skills/playerclass10/passive03.dbr` [Fangs of Asterkarn]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- [ ] **Damage Absorption** — natural cap **33% at 12/12**; current hard cap **40% at 22/22**. Natural-cap pace: **+1% per rank**; weakest overcap pace: **0% per rank**. Unapproved linear-floor candidate: **43%**. **Review reason:** Absorption and maximum resistance can cross strong defensive breakpoints and require separate balance approval. Recommended default: preserve vanilla until explicitly approved. Current overcap: 34% / 34% / 35% / 36% / 36% / 37% / 38% / 38% / 39% / 40%. Candidate overcap: 34% / 35% / 36% / 37% / 38% / 39% / 40% / 41% / 42% / 43%. Source: `records/skills/playerclass10/passive03.dbr` → `damageAbsorptionPercent`.

### Wereraven — 16/16 → 26/26

*Tooltip:* Kurn mystics are known to take on the aspect of dread ravens to terrorize the enemy with their talons and ice magic. Through Mogdrogen's guidance and blessing, you too can assume the form of the wereraven, gaining new bonuses and abilities for as long as the transformation persists. Wereraven form cannot use default weapon attacks or weapon pool skills.

*Records:* `records/skills/playerclass10/wereraven1.dbr` [Fangs of Asterkarn]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Werewolf — 16/16 → 26/26

*Tooltip:* Kurn berserkers blessed with Mogdrogen's gift were some of the most terrifying troops fielded in their ancient war with Erulan. To this day, tales of these warriors paint the Kurn as savage bloodthirsty monsters. With Mogdrogen's gift, you assume the form of the werewolf, gaining new bonuses and abilities for as long as the transformation persists. Werewolf form cannot use default weapon attacks or weapon pool skills.

*Records:* `records/skills/playerclass10/werewolf1.dbr` [Fangs of Asterkarn]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

### Winds of Asterkarn — 16/16 → 26/26

*Tooltip:* The chill in the Asterkarn peaks is legendary. Some have come to call the wind the reaper's caress, but to the Kurn it is Amatok's Breath. Their mystics have learned to channel its fury. For as long as the spell is maintained, the bitter winds of Asterkarn will assail your foes and tear flesh from bone. At 100% Cast Speed, Winds of Asterkarn deals damage and drains Energy every 0.16s and grows in size every 0.48s until it reaches maximum size.

*Records:* `records/skills/playerclass10/windsofasterkarn1.dbr` [Fangs of Asterkarn]

#### Safe changes

- None identified by the conservative numeric scan.

#### To-be-exception

- None identified by the conservative numeric scan.

## Implementation gates

1. Approve or reject every item in **To-be-exception**. Unreviewed exception fields remain vanilla.
2. Apply approved safe arrays to the mod by copying from the effective source layer first, so existing mod overrides are preserved and patched rather than overwritten.
3. Validate every edited array length against `skillUltimateLevel`; compare ranks 1 through the natural cap byte-for-byte with the source.
4. Test representative direct-damage, damage-over-time, buff, channeled, weapon-pool, pet, and transmuter skills in game. Confirm tooltip values at the natural cap, natural cap +1, and hard cap.
5. Rebuild the mod database in Asset Manager only after the approved DBR edits are complete. This plan file itself requires no compilation.

## Explicit exclusions

- Item-granted `skill_modifier.tpl` records are excluded because they modify skills through gear rather than define mastery rank progression.
- Fields with no detected reduction in marginal gain are not proposed for change.
- Hidden pet records are retained under a human-readable owning-skill label when no display tag exists.
- This plan does not alter devotion points, player level limits, enemy skills, item skills, or existing Ascended-affix overrides.

