# Ascended Bonus 4× Change Audit

Date: 2026-09-05

## Summary

- Interpretation: a 300% increase means original + 300%, or 4× the original non-zero value.
- Created or replaced **798 DBR overrides**: 66 general Ascended affixes and 732 mastery-specific modifiers.
- Changed **1058 field values**.
- Included user-requested structural fields: projectileLaunchNumber in 18 files, petBurstSpawn in 29 files, and petLimit in 27 files.
- Source: `D:\Games\Steam\steamapps\common\Grim Dawn\mods\gdx3\records`.
- Destination: the mod `database\records` tree, preserving every original record path.

## Intentionally unchanged

- Trigger chances and cooldown/duration plumbing (`refreshCooldown*`, `refreshDuration*`).
- Skill durations, cooldown times, target counts, targeting angles/radii, and explosion radii.
- WPS weights (`skillChanceWeight`).
- Boolean/weapon override fields and special-animation fields.
- Pet-record substitutions (`petSkillName`).
- Unnamed `augmentSkillLevel1` and `augmentSkillLevel2` values on general affixes.
- Ascended tables, randomizers, and mastery wrapper records; their existing references continue to resolve to these overrides.

## Validation

- Confirmed 66 referenced general records and 923 unique referenced mastery modifier records in the source data.
- Confirmed the selected field policy produces exactly 798 override DBRs.
- Compared every written DBR with an independently generated expected transformation of its source record; all 798 matched.
- Compilation was deliberately not performed because this update modifies only DBR records. Compile the mod manually in Asset Manager.

## Files and field changes

### records/items/lootaffixes/ascended/ad301a.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 40.000000 | 160.000000 |

### records/items/lootaffixes/ascended/ad301b.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 30.000000 | 120.000000 |

### records/items/lootaffixes/ascended/ad302a.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 25.000000 | 100.000000 |
| `characterLife` | 150.000000 | 600.000000 |

### records/items/lootaffixes/ascended/ad302b.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 20.000000 | 80.000000 |
| `characterLife` | 100.000000 | 400.000000 |

### records/items/lootaffixes/ascended/ad303a.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterStrength` | 50.000000 | 200.000000 |

### records/items/lootaffixes/ascended/ad303b.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterStrength` | 25.000000 | 100.000000 |

### records/items/lootaffixes/ascended/ad304a.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterLife` | 400.000000 | 1600.000000 |

### records/items/lootaffixes/ascended/ad304b.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterLife` | 220.000000 | 880.000000 |

### records/items/lootaffixes/ascended/ad305a.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterRunSpeedMaxModifier` | 5.000000 | 20.000000 |
| `characterRunSpeedModifier` | 5.000000 | 20.000000 |

### records/items/lootaffixes/ascended/ad305b.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterRunSpeedMaxModifier` | 6.000000 | 24.000000 |
| `characterRunSpeedModifier` | 6.000000 | 24.000000 |

### records/items/lootaffixes/ascended/ad306a.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterHealIncreasePercent` | 8.000000 | 32.000000 |

### records/items/lootaffixes/ascended/ad306b.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterHealIncreasePercent` | 10.000000 | 40.000000 |

### records/items/lootaffixes/ascended/ad307a.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `defensiveElementalResistance` | 20.000000 | 80.000000 |

### records/items/lootaffixes/ascended/ad307b.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `defensiveElementalResistance` | 30.000000 | 120.000000 |
| `defensiveFireMaxResist` | 2.000000 | 8.000000 |

### records/items/lootaffixes/ascended/ad308a.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `defensiveAether` | 20.000000 | 80.000000 |

### records/items/lootaffixes/ascended/ad308b.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `defensiveAether` | 30.000000 | 120.000000 |
| `defensiveAetherMaxResist` | 2.000000 | 8.000000 |

### records/items/lootaffixes/ascended/ad309a.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `defensiveChaos` | 20.000000 | 80.000000 |

### records/items/lootaffixes/ascended/ad309b.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `defensiveChaos` | 30.000000 | 120.000000 |
| `defensiveChaosMaxResist` | 2.000000 | 8.000000 |

### records/items/lootaffixes/ascended/ad310a.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `defensiveBleeding` | 20.000000 | 80.000000 |

### records/items/lootaffixes/ascended/ad310b.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `defensiveBleeding` | 30.000000 | 120.000000 |
| `defensiveBleedingMaxResist` | 2.000000 | 8.000000 |

### records/items/lootaffixes/ascended/ad311a.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `defensiveLife` | 20.000000 | 80.000000 |

### records/items/lootaffixes/ascended/ad311b.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `defensiveLife` | 30.000000 | 120.000000 |
| `defensiveLifeMaxResist` | 2.000000 | 8.000000 |

### records/items/lootaffixes/ascended/ad312a.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `defensivePierce` | 20.000000 | 80.000000 |

### records/items/lootaffixes/ascended/ad312b.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `defensivePierce` | 30.000000 | 120.000000 |
| `defensivePierceMaxResist` | 2.000000 | 8.000000 |

### records/items/lootaffixes/ascended/ad313a.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `defensivePoison` | 20.000000 | 80.000000 |

### records/items/lootaffixes/ascended/ad313b.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `defensivePoison` | 30.000000 | 120.000000 |
| `defensivePoisonMaxResist` | 2.000000 | 8.000000 |

### records/items/lootaffixes/ascended/ad314a.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `defensiveProtectionModifier` | 12.000000 | 48.000000 |

### records/items/lootaffixes/ascended/ad314b.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `defensivePhysical` | 3.000000 | 12.000000 |

### records/items/lootaffixes/ascended/ad315a.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterDodgePercent` | 3.000000 | 12.000000 |

### records/items/lootaffixes/ascended/ad315b.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterDodgePercent` | 4.000000 | 16.000000 |

### records/items/lootaffixes/ascended/ad316a.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterDeflectProjectile` | 3.000000 | 12.000000 |

### records/items/lootaffixes/ascended/ad316b.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterDeflectProjectile` | 4.000000 | 16.000000 |

### records/items/lootaffixes/ascended/ad317b.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `defensiveColdMaxResist` | 2.000000 | 8.000000 |
| `defensiveElementalResistance` | 30.000000 | 120.000000 |

### records/items/lootaffixes/ascended/ad318b.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `defensiveElementalResistance` | 30.000000 | 120.000000 |
| `defensiveLightningMaxResist` | 2.000000 | 8.000000 |

### records/items/lootaffixes/ascended/ao301a.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbility` | 40.000000 | 160.000000 |

### records/items/lootaffixes/ascended/ao301b.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbility` | 50.000000 | 200.000000 |

### records/items/lootaffixes/ascended/ao301c.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbility` | 40.000000 | 160.000000 |

### records/items/lootaffixes/ascended/ao301d.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbility` | 80.000000 | 320.000000 |

### records/items/lootaffixes/ascended/ao302a.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterLife` | 150.000000 | 600.000000 |
| `characterOffensiveAbility` | 20.000000 | 80.000000 |

### records/items/lootaffixes/ascended/ao302b.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbility` | 25.000000 | 100.000000 |
| `offensiveCritDamageModifier` | 3.000000 | 12.000000 |

### records/items/lootaffixes/ascended/ao302c.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbility` | 20.000000 | 80.000000 |
| `offensiveCritDamageModifier` | 4.000000 | 16.000000 |

### records/items/lootaffixes/ascended/ao302d.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbility` | 40.000000 | 160.000000 |
| `offensiveCritDamageModifier` | 8.000000 | 32.000000 |

### records/items/lootaffixes/ascended/ao303a.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbility` | 40.000000 | 160.000000 |

### records/items/lootaffixes/ascended/ao303b.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `offensiveCritDamageModifier` | 4.000000 | 16.000000 |

### records/items/lootaffixes/ascended/ao303c.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `offensiveCritDamageModifier` | 5.000000 | 20.000000 |

### records/items/lootaffixes/ascended/ao303d.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `offensiveCritDamageModifier` | 10.000000 | 40.000000 |

### records/items/lootaffixes/ascended/ao304a.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `offensiveTotalDamageModifier` | 15.000000 | 60.000000 |
| `retaliationTotalDamageModifier` | 15.000000 | 60.000000 |

### records/items/lootaffixes/ascended/ao304b.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `offensiveTotalDamageModifier` | 20.000000 | 80.000000 |
| `retaliationTotalDamageModifier` | 20.000000 | 80.000000 |

### records/items/lootaffixes/ascended/ao304c.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `offensiveTotalDamageModifier` | 20.000000 | 80.000000 |
| `retaliationTotalDamageModifier` | 20.000000 | 80.000000 |

### records/items/lootaffixes/ascended/ao304d.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `offensiveTotalDamageModifier` | 40.000000 | 160.000000 |
| `retaliationTotalDamageModifier` | 40.000000 | 160.000000 |

### records/items/lootaffixes/ascended/ao305a.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterAttackSpeedModifier` | 4.000000 | 16.000000 |
| `characterSpellCastSpeedModifier` | 4.000000 | 16.000000 |

### records/items/lootaffixes/ascended/ao305b.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterAttackSpeedModifier` | 5.000000 | 20.000000 |
| `characterSpellCastSpeedModifier` | 5.000000 | 20.000000 |

### records/items/lootaffixes/ascended/ao305c.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterAttackSpeedMaxModifier` | 4.000000 | 16.000000 |
| `characterAttackSpeedModifier` | 4.000000 | 16.000000 |
| `characterSpellCastSpeedMaxModifier` | 4.000000 | 16.000000 |
| `characterSpellCastSpeedModifier` | 4.000000 | 16.000000 |

### records/items/lootaffixes/ascended/ao305d.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterAttackSpeedMaxModifier` | 8.000000 | 32.000000 |
| `characterAttackSpeedModifier` | 8.000000 | 32.000000 |
| `characterSpellCastSpeedMaxModifier` | 8.000000 | 32.000000 |
| `characterSpellCastSpeedModifier` | 8.000000 | 32.000000 |

### records/items/lootaffixes/ascended/ao306a.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbility` | 20.000000 | 80.000000 |
| `offensiveTotalDamageModifier` | 10.000000 | 40.000000 |
| `retaliationTotalDamageModifier` | 10.000000 | 40.000000 |

### records/items/lootaffixes/ascended/ao306b.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbility` | 25.000000 | 100.000000 |
| `offensiveTotalDamageModifier` | 15.000000 | 60.000000 |
| `retaliationTotalDamageModifier` | 15.000000 | 60.000000 |

### records/items/lootaffixes/ascended/ao306c.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbility` | 20.000000 | 80.000000 |
| `offensiveTotalDamageModifier` | 15.000000 | 60.000000 |
| `retaliationTotalDamageModifier` | 15.000000 | 60.000000 |

### records/items/lootaffixes/ascended/ao306d.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbility` | 40.000000 | 160.000000 |
| `offensiveTotalDamageModifier` | 30.000000 | 120.000000 |
| `retaliationTotalDamageModifier` | 30.000000 | 120.000000 |

### records/items/lootaffixes/ascended/ao307a.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 20.000000 | 80.000000 |
| `characterOffensiveAbility` | 20.000000 | 80.000000 |

### records/items/lootaffixes/ascended/ao307b.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 25.000000 | 100.000000 |
| `characterOffensiveAbility` | 25.000000 | 100.000000 |

### records/items/lootaffixes/ascended/ao307c.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 20.000000 | 80.000000 |
| `characterOffensiveAbility` | 20.000000 | 80.000000 |

### records/items/lootaffixes/ascended/ao307d.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 40.000000 | 160.000000 |
| `characterOffensiveAbility` | 40.000000 | 160.000000 |

### records/items/lootaffixes/ascended/ao308a.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbility` | 20.000000 | 80.000000 |
| `offensiveLifeLeechMin` | 3.000000 | 12.000000 |

### records/items/lootaffixes/ascended/ao308b.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbility` | 25.000000 | 100.000000 |
| `offensiveLifeLeechMin` | 5.000000 | 20.000000 |

### records/items/lootaffixes/ascended/ao308c.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbility` | 20.000000 | 80.000000 |
| `offensiveLifeLeechMin` | 5.000000 | 20.000000 |

### records/items/lootaffixes/ascended/ao308d.dbr

Type: General affix

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbility` | 40.000000 | 160.000000 |
| `offensiveLifeLeechMin` | 10.000000 | 40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/a302a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbilityModifier` | 2.000000 | 8.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/a302b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbilityModifier` | 2.000000 | 8.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/a302c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `skillLifePercentBuffDuration` | 2.000000 | 8.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/a302d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `skillLifePercentBuffDuration` | 4.000000 | 16.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/a303a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `retaliationDamagePct` | 2.000000 | 8.000000 |
| `weaponDamagePct` | 5.000000 | 20.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/a303b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `retaliationDamagePct` | 4.000000 | 16.000000 |
| `weaponDamagePct` | 10.000000 | 40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/a303c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `retaliationDamagePct` | 3.000000 | 12.000000 |
| `weaponDamagePct` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/a303d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `retaliationDamagePct` | 6.000000 | 24.000000 |
| `weaponDamagePct` | 16.000000 | 64.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/a304g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbilityModifier` | 3.000000 | 12.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/a305g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 15.000000 | 60.000000 |
| `offensiveTotalDamageModifier` | 35.000000 | 140.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/a306e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbilityModifier` | 4.000000 | 16.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/a306f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbilityModifier` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/a306g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbilityModifier` | 4.000000 | 16.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b301a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b301b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 16.000000 | 64.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b301c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 70.000000 | 280.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b301d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 140.000000 | 560.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b301e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 70.000000 | 280.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b301f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 140.000000 | 560.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b301g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 120.000000 | 480.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b301h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 70.000000 | 280.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b302a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 12.000000 | 48.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b302b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 24.000000 | 96.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b302c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b302d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 120.000000 | 480.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b302e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveTotalSpeedResistance` | 25.000000 | 100.000000 |
| `offensiveTotalDamageModifier` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b302f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveTotalSpeedResistance` | 50.000000 | 200.000000 |
| `offensiveTotalDamageModifier` | 200.000000 | 800.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b302g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveTotalSpeedResistance` | 25.000000 | 100.000000 |
| `offensiveTotalDamageModifier` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b302h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b303a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 5.000000 | 20.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b303b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 12.000000 | 48.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b303c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 25.000000 | 100.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b303d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 50.000000 | 200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b303e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `projectilePiercing` | 100.000000 | 400.000000 |
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b303f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `projectilePiercing` | 100.000000 | 400.000000 |
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b303g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 40.000000 | 160.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b303h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 25.000000 | 100.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b304a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 15.000000 | 60.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b304b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b304c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 80.000000 | 320.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b304d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 160.000000 | 640.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b304e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 40.000000 | 160.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b304f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 80.000000 | 320.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b304g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `damageAbsorptionPercent` | 25.000000 | 100.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b304h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 80.000000 | 320.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b305a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 12.000000 | 48.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b305b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 24.000000 | 96.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b305c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b305d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b305e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b305f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b305g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b305h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b306a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `retaliationDamagePct` | 3.000000 | 12.000000 |
| `weaponDamagePct` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b306b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `retaliationDamagePct` | 5.000000 | 20.000000 |
| `weaponDamagePct` | 16.000000 | 64.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b306c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `retaliationDamagePct` | 10.000000 | 40.000000 |
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b306d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `retaliationDamagePct` | 20.000000 | 80.000000 |
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b306e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `retaliationDamagePct` | 10.000000 | 40.000000 |
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b306f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `retaliationDamagePct` | 20.000000 | 80.000000 |
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b306g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `retaliationDamagePct` | 10.000000 | 40.000000 |
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b306h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `retaliationDamagePct` | 10.000000 | 40.000000 |
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b307b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensivePhysicalMin` | 50.000000 | 200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b307c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensivePhysicalMin` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b307d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensivePhysicalMin` | 200.000000 | 800.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b307e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensivePhysicalMin` | 100.000000 | 400.000000 |
| `projectilePiercing` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b307f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensivePhysicalMin` | 200.000000 | 800.000000 |
| `projectilePiercing` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b307g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveTotalDamageModifier` | 200.000000 | 800.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b307h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensivePhysicalMin` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b308b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPhysicalMin` | 80.000000 | 320.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b308c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPhysicalMin` | 250.000000 | 1000.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b308d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPhysicalMin` | 500.000000 | 2000.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b308e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPhysicalMin` | 250.000000 | 1000.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b308f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPhysicalMin` | 500.000000 | 2000.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b308g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbilityModifier` | 18.000000 | 72.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass01/b308h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPhysicalMin` | 250.000000 | 1000.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/a301a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 30.000000 | 120.000000 |
| `characterLifeRegen` | 20.000000 | 80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/a301b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 25.000000 | 100.000000 |
| `characterLifeRegen` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/a301c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 20.000000 | 80.000000 |
| `characterLifeRegen` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/a301d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 40.000000 | 160.000000 |
| `characterLifeRegen` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/a303a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbilityModifier` | 2.000000 | 8.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/a303b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbilityModifier` | 2.000000 | 8.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/a303c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbilityModifier` | 3.000000 | 12.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/a303d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbilityModifier` | 6.000000 | 24.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/a304a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbilityModifier` | 2.000000 | 8.000000 |
| `characterLifeRegenModifier` | 50.000000 | 200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/a304b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbilityModifier` | 3.000000 | 12.000000 |
| `characterLifeRegenModifier` | 80.000000 | 320.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/a304c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbilityModifier` | 4.000000 | 16.000000 |
| `characterLifeRegenModifier` | 80.000000 | 320.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/a304d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbilityModifier` | 8.000000 | 32.000000 |
| `characterLifeRegenModifier` | 160.000000 | 640.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/a305a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 3.000000 | 12.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/a305b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 4.000000 | 16.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/a305c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 4.000000 | 16.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/a305d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/a305g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 15.000000 | 60.000000 |
| `offensiveTotalDamageModifier` | 35.000000 | 140.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/a306a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveProtectionModifier` | 16.000000 | 64.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/a306b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `damageAbsorptionPercent` | 2.000000 | 8.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/a306c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `damageAbsorptionPercent` | 3.000000 | 12.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/a306d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `damageAbsorptionPercent` | 6.000000 | 24.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b301a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 12.000000 | 48.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b301b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 24.000000 | 96.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b301c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 80.000000 | 320.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b301d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 160.000000 | 640.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b301e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 80.000000 | 320.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b301f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 160.000000 | 640.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b301g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 80.000000 | 320.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b301h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 80.000000 | 320.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b302a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveFireMin` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b302b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveFireMin` | 16.000000 | 64.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b302c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b302d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 16.000000 | 64.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b302e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b302f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 16.000000 | 64.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b302g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b302h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b303a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveFireMin` | 12.000000 | 48.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b303b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveFireMin` | 24.000000 | 96.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b303c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b303d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b303e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b303f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b303g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveFireMin` | 120.000000 | 480.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b303h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b304c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `petBurstSpawn` | 1 | 4 |
| `petLimit` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b304d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `petBurstSpawn` | 2 | 8 |
| `petLimit` | 2 | 8 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b304e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `petBurstSpawn` | 1 | 4 |
| `petLimit` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b304f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `petBurstSpawn` | 2 | 8 |
| `petLimit` | 2 | 8 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b304g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `petBurstSpawn` | 1 | 4 |
| `petLimit` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b304h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `petBurstSpawn` | 1 | 4 |
| `petLimit` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b305a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveLightningMin` | 5.000000 | 20.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b305b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveLightningMin` | 10.000000 | 40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b305c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveLightningMin` | 15.000000 | 60.000000 |
| `projectileLaunchNumber` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b305d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveLightningMin` | 30.000000 | 120.000000 |
| `projectileLaunchNumber` | 2 | 8 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b305e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveLightningMin` | 15.000000 | 60.000000 |
| `projectileLaunchNumber` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b305f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveLightningMin` | 30.000000 | 120.000000 |
| `projectileLaunchNumber` | 2 | 8 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b305g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveLightningMin` | 15.000000 | 60.000000 |
| `projectileLaunchNumber` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b305h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveLightningMin` | 15.000000 | 60.000000 |
| `projectileLaunchNumber` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b307b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveFireMin` | 15.000000 | 60.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b307c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveFireMin` | 45.000000 | 180.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b307d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveFireMin` | 90.000000 | 360.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b307e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveFireMin` | 45.000000 | 180.000000 |
| `projectilePiercing` | 75.000000 | 300.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b307f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveFireMin` | 90.000000 | 360.000000 |
| `projectilePiercing` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b307g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveFireMin` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b307h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveFireMin` | 45.000000 | 180.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b308a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 4.000000 | 16.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b308b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b308c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 25.000000 | 100.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b308d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 50.000000 | 200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b308e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 25.000000 | 100.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b308f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 50.000000 | 200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b308g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 40.000000 | 160.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass02/b308h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 25.000000 | 100.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/a301a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveCrowdControl` | 5.000000 | 20.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/a301b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveCrowdControl` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/a301c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveCrowdControl` | 10.000000 | 40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/a301d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveCrowdControl` | 20.000000 | 80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/a302a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `damageAbsorptionPercent` | 2.000000 | 8.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/a302b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `damageAbsorptionPercent` | 2.000000 | 8.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/a302c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `damageAbsorptionPercent` | 3.000000 | 12.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/a302d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `damageAbsorptionPercent` | 6.000000 | 24.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/a303a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/a303b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 25.000000 | 100.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/a303c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 20.000000 | 80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/a303d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 40.000000 | 160.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/a304a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveCritDamageModifier` | 3.000000 | 12.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/a304b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveCritDamageModifier` | 5.000000 | 20.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/a304c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveCritDamageModifier` | 5.000000 | 20.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/a304d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveCritDamageModifier` | 10.000000 | 40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/a305a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -1.000000 | -4.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/a305b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -3.000000 | -12.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/a305c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -4.000000 | -16.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/a305d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -8.000000 | -32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/a306a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | -50.000000 | -200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/a306b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | -60.000000 | -240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/a306c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | -50.000000 | -200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/a306d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | -100.000000 | -400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b301a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -3.000000 | -12.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b301b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -5.000000 | -20.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b301c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -10.000000 | -40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b301d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -20.000000 | -80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b301e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -10.000000 | -40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b301f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -20.000000 | -80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b301g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -10.000000 | -40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b301h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -10.000000 | -40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b302a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveLifeMin` | 20.000000 | 80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b302b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveLifeMin` | 40.000000 | 160.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b302c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveLifeMin` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b302d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveLifeMin` | 200.000000 | 800.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b302e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveLifeMin` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b302f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveLifeMin` | 200.000000 | 800.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b302g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveLifeMin` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b302h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveLifeMin` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b303a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveLifeMin` | 40.000000 | 160.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b303b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -4.000000 | -16.000000 |
| `offensiveLifeMin` | 80.000000 | 320.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b303c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -8.000000 | -32.000000 |
| `offensiveLifeMin` | 90.000000 | 360.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b303d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -16.000000 | -64.000000 |
| `offensiveLifeMin` | 180.000000 | 720.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b303e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -8.000000 | -32.000000 |
| `offensiveLifeMin` | 90.000000 | 360.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b303f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -16.000000 | -64.000000 |
| `offensiveLifeMin` | 180.000000 | 720.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b303g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -8.000000 | -32.000000 |
| `offensiveLifeMin` | 90.000000 | 360.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b303h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -8.000000 | -32.000000 |
| `offensiveLifeMin` | 90.000000 | 360.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b304d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbilityModifier` | 12.000000 | 48.000000 |
| `offensiveCritDamageModifier` | 20.000000 | 80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b304f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbilityModifier` | 12.000000 | 48.000000 |
| `offensiveCritDamageModifier` | 20.000000 | 80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b305d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterAttackSpeedMaxModifier` | 24.000000 | 96.000000 |
| `characterAttackSpeedModifier` | 24.000000 | 96.000000 |
| `characterSpellCastSpeedMaxModifier` | 24.000000 | 96.000000 |
| `characterSpellCastSpeedModifier` | 24.000000 | 96.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b305f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterAttackSpeedMaxModifier` | 24.000000 | 96.000000 |
| `characterAttackSpeedModifier` | 24.000000 | 96.000000 |
| `characterSpellCastSpeedMaxModifier` | 24.000000 | 96.000000 |
| `characterSpellCastSpeedModifier` | 24.000000 | 96.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b306a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveChaosMin` | 50.000000 | 200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b306b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveChaosMin` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b306c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveChaosMin` | 300.000000 | 1200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b306d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 140.000000 | 560.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b306e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveChaosMin` | 300.000000 | 1200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b306f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 140.000000 | 560.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b306g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveChaosMin` | 300.000000 | 1200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b306h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveChaosMin` | 300.000000 | 1200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b307a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensivePoisonMin` | 10.000000 | 40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b307b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensivePoisonMin` | 20.000000 | 80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b307c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensivePoisonMin` | 120.000000 | 480.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b307d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensivePoisonMin` | 180.000000 | 720.000000 |
| `weaponDamagePct` | 25.000000 | 100.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b307e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensivePoisonMin` | 120.000000 | 480.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b307f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensivePoisonMin` | 180.000000 | 720.000000 |
| `weaponDamagePct` | 25.000000 | 100.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b307g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensivePoisonMin` | 120.000000 | 480.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b307h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensivePoisonMin` | 120.000000 | 480.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b308a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPoisonMin` | 20.000000 | 80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b308b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPoisonMin` | 40.000000 | 160.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b308c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPoisonMin` | 250.000000 | 1000.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b308d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPoisonMin` | 400.000000 | 1600.000000 |
| `weaponDamagePct` | 25.000000 | 100.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b308e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPoisonMin` | 250.000000 | 1000.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b308f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPoisonMin` | 400.000000 | 1600.000000 |
| `weaponDamagePct` | 25.000000 | 100.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b308g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPoisonMin` | 250.000000 | 1000.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass03/b308h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPoisonMin` | 250.000000 | 1000.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/a301a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterLife` | 120.000000 | 480.000000 |
| `skillLifeBonusBuffDuration` | 120.000000 | 480.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/a301b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterLife` | 100.000000 | 400.000000 |
| `skillLifeBonusBuffDuration` | 200.000000 | 800.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/a301c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterLife` | 150.000000 | 600.000000 |
| `skillLifeBonusBuffDuration` | 300.000000 | 1200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/a301d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterLife` | 300.000000 | 1200.000000 |
| `skillLifeBonusBuffDuration` | 600.000000 | 2400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/a302a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | -25.000000 | -100.000000 |
| `characterOffensiveAbility` | -25.000000 | -100.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/a302b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | -30.000000 | -120.000000 |
| `characterOffensiveAbility` | -30.000000 | -120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/a302c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | -25.000000 | -100.000000 |
| `characterOffensiveAbility` | -25.000000 | -100.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/a302d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | -50.000000 | -200.000000 |
| `characterOffensiveAbility` | -50.000000 | -200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/a303d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 16.000000 | 64.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/a303e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/a303f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 16.000000 | 64.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/a303g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveColdMin` | 40.000000 | 160.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/a304d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveCritDamageModifier` | 10.000000 | 40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/a304e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveCritDamageModifier` | 5.000000 | 20.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/a304f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveCritDamageModifier` | 10.000000 | 40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/a304g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveCritDamageModifier` | 5.000000 | 20.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/a305d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 20.000000 | 80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/a305e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 15.000000 | 60.000000 |
| `offensiveTotalDamageModifier` | 35.000000 | 140.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/a305f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 30.000000 | 120.000000 |
| `offensiveTotalDamageModifier` | 70.000000 | 280.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/a305g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 15.000000 | 60.000000 |
| `offensiveTotalDamageModifier` | 35.000000 | 140.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/a305h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 10.000000 | 40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/a306d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 6.000000 | 24.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/a306e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 3.000000 | 12.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/a306f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 6.000000 | 24.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/a306g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensivePierceMin` | 22.000000 | 88.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b301a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b301b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 16.000000 | 64.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b301c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 50.000000 | 200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b301d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b301e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 50.000000 | 200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b301f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b301g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 50.000000 | 200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b301h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 50.000000 | 200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b302a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 12.000000 | 48.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b302b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 24.000000 | 96.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b302c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 70.000000 | 280.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b302d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 140.000000 | 560.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b302e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 18.000000 | 72.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b302f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 36.000000 | 144.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b302g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 70.000000 | 280.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b302h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 70.000000 | 280.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b303a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 4.000000 | 16.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b303b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b303c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `projectileLaunchNumber` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b303d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `projectileLaunchNumber` | 3 | 12 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b303e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `projectileLaunchNumber` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b303f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `projectileLaunchNumber` | 3 | 12 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b303g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `projectileLaunchNumber` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b303h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `projectileLaunchNumber` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b304a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 15.000000 | 60.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b304b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b304c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 90.000000 | 360.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b304d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 180.000000 | 720.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b304e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveCritDamageModifier` | 22.000000 | 88.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b304f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveCritDamageModifier` | 45.000000 | 180.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b304g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 120.000000 | 480.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b304h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 120.000000 | 480.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b305b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensivePierceMin` | 50.000000 | 200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b305c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensivePierceMin` | 160.000000 | 640.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b305d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -20.000000 | -80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b305e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -10.000000 | -40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b305f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -20.000000 | -80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b305g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -10.000000 | -40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b305h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -10.000000 | -40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b306b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b306c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b306d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -16.000000 | -64.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b306e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -8.000000 | -32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b306f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -16.000000 | -64.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b306g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -8.000000 | -32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b306h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -8.000000 | -32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b307b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 15.000000 | 60.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b307c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b307d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveTotalDamageModifier` | 240.000000 | 960.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b307e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveTotalDamageModifier` | 120.000000 | 480.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b307f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveTotalDamageModifier` | 240.000000 | 960.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b307g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveTotalDamageModifier` | 120.000000 | 480.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b307h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveTotalDamageModifier` | 120.000000 | 480.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b308b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 15.000000 | 60.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b308c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b308d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `petBurstSpawn` | 2 | 8 |
| `petLimit` | 2 | 8 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b308e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `petBurstSpawn` | 1 | 4 |
| `petLimit` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b308f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `petBurstSpawn` | 2 | 8 |
| `petLimit` | 2 | 8 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b308g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `petBurstSpawn` | 1 | 4 |
| `petLimit` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass04/b308h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `petBurstSpawn` | 1 | 4 |
| `petLimit` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/a301a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveCrowdControl` | 5.000000 | 20.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/a301b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveCrowdControl` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/a301c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveCrowdControl` | 10.000000 | 40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/a301d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveCrowdControl` | 20.000000 | 80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/a302a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbilityModifier` | 2.000000 | 8.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/a302b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbilityModifier` | 2.000000 | 8.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/a302c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbilityModifier` | 3.000000 | 12.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/a302d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbilityModifier` | 6.000000 | 24.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/a303a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 15.000000 | 60.000000 |
| `offensiveElementalMin` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/a303b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 20.000000 | 80.000000 |
| `offensiveElementalMin` | 10.000000 | 40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/a303c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 15.000000 | 60.000000 |
| `offensiveElementalMin` | 10.000000 | 40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/a303d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 30.000000 | 120.000000 |
| `offensiveElementalMin` | 20.000000 | 80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/a305a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveAetherMin` | 10.000000 | 40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/a305b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveAetherMin` | 12.000000 | 48.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/a305c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveAetherMin` | 12.000000 | 48.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/a305d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveAetherMin` | 24.000000 | 96.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/a306a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveCritDamageModifier` | 4.000000 | 16.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/a306b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveCritDamageModifier` | 6.000000 | 24.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/a306c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveCritDamageModifier` | 6.000000 | 24.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/a306d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveCritDamageModifier` | 12.000000 | 48.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b301a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveElementalMin` | 10.000000 | 40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b301b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveElementalMin` | 20.000000 | 80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b301c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveElementalMin` | 90.000000 | 360.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b301d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b301e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveElementalMin` | 90.000000 | 360.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b301f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b301g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveElementalMin` | 90.000000 | 360.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b301h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveElementalMin` | 90.000000 | 360.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b302a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveFireMin` | 12.000000 | 48.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b302b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveFireMin` | 24.000000 | 96.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b302c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveFireMin` | 80.000000 | 320.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b302d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 80.000000 | 320.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b302e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveFireMin` | 80.000000 | 320.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b302f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 80.000000 | 320.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b302g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveFireMin` | 80.000000 | 320.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b302h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveFireMin` | 80.000000 | 320.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b303a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveColdMin` | 12.000000 | 48.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b303b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveColdMin` | 24.000000 | 96.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b303c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveColdMin` | 150.000000 | 600.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b303d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 50.000000 | 200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b303e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveColdMin` | 75.000000 | 300.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b303f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 50.000000 | 200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b303g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveColdMin` | 75.000000 | 300.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b303h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveColdMin` | 75.000000 | 300.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b304a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveAetherMin` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b304b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveAetherMin` | 16.000000 | 64.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b304c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveAetherMin` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b304d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 25.000000 | 100.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b304e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveAetherMin` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b304f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 25.000000 | 100.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b304g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveAetherMin` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b304h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveAetherMin` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b305a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveAetherMin` | 20.000000 | 80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b305b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveAetherMin` | 40.000000 | 160.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b305c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `projectileLaunchNumber` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b305d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `projectileLaunchNumber` | 2 | 8 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b305e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `projectileLaunchNumber` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b305f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `projectileLaunchNumber` | 2 | 8 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b305g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `projectileLaunchNumber` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b305h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `projectileLaunchNumber` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b306a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowLightningMin` | 40.000000 | 160.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b306b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowLightningMin` | 80.000000 | 320.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b306c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowLightningMin` | 300.000000 | 1200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b306d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowLightningMin` | 600.000000 | 2400.000000 |
| `weaponDamagePct` | 25.000000 | 100.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b306e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowLightningMin` | 300.000000 | 1200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b306f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowLightningMin` | 600.000000 | 2400.000000 |
| `weaponDamagePct` | 25.000000 | 100.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b306g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowLightningMin` | 300.000000 | 1200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b306h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowLightningMin` | 300.000000 | 1200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b307a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterAttackSpeedModifier` | 5.000000 | 20.000000 |
| `characterSpellCastSpeedModifier` | 5.000000 | 20.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b307b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterAttackSpeedMaxModifier` | 5.000000 | 20.000000 |
| `characterAttackSpeedModifier` | 5.000000 | 20.000000 |
| `characterSpellCastSpeedMaxModifier` | 5.000000 | 20.000000 |
| `characterSpellCastSpeedModifier` | 5.000000 | 20.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b307c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterAttackSpeedMaxModifier` | 12.000000 | 48.000000 |
| `characterAttackSpeedModifier` | 12.000000 | 48.000000 |
| `characterSpellCastSpeedMaxModifier` | 12.000000 | 48.000000 |
| `characterSpellCastSpeedModifier` | 12.000000 | 48.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b307d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterAttackSpeedMaxModifier` | 24.000000 | 96.000000 |
| `characterAttackSpeedModifier` | 24.000000 | 96.000000 |
| `characterSpellCastSpeedMaxModifier` | 24.000000 | 96.000000 |
| `characterSpellCastSpeedModifier` | 24.000000 | 96.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b307e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterAttackSpeedMaxModifier` | 12.000000 | 48.000000 |
| `characterAttackSpeedModifier` | 12.000000 | 48.000000 |
| `characterSpellCastSpeedMaxModifier` | 12.000000 | 48.000000 |
| `characterSpellCastSpeedModifier` | 12.000000 | 48.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b307f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterAttackSpeedMaxModifier` | 24.000000 | 96.000000 |
| `characterAttackSpeedModifier` | 24.000000 | 96.000000 |
| `characterSpellCastSpeedMaxModifier` | 24.000000 | 96.000000 |
| `characterSpellCastSpeedModifier` | 24.000000 | 96.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b307g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterAttackSpeedMaxModifier` | 12.000000 | 48.000000 |
| `characterAttackSpeedModifier` | 12.000000 | 48.000000 |
| `characterSpellCastSpeedMaxModifier` | 12.000000 | 48.000000 |
| `characterSpellCastSpeedModifier` | 12.000000 | 48.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b307h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterAttackSpeedMaxModifier` | 12.000000 | 48.000000 |
| `characterAttackSpeedModifier` | 12.000000 | 48.000000 |
| `characterSpellCastSpeedMaxModifier` | 12.000000 | 48.000000 |
| `characterSpellCastSpeedModifier` | 12.000000 | 48.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b308a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbilityModifier` | 3.000000 | 12.000000 |
| `characterOffensiveAbilityModifier` | 3.000000 | 12.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b308b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbilityModifier` | 6.000000 | 24.000000 |
| `characterOffensiveAbilityModifier` | 6.000000 | 24.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b308c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbilityModifier` | 6.000000 | 24.000000 |
| `offensiveCritDamageModifier` | 10.000000 | 40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b308d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbilityModifier` | 12.000000 | 48.000000 |
| `offensiveCritDamageModifier` | 20.000000 | 80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b308e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbilityModifier` | 6.000000 | 24.000000 |
| `offensiveCritDamageModifier` | 10.000000 | 40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b308f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbilityModifier` | 12.000000 | 48.000000 |
| `offensiveCritDamageModifier` | 20.000000 | 80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b308g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbilityModifier` | 6.000000 | 24.000000 |
| `offensiveCritDamageModifier` | 10.000000 | 40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass05/b308h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbilityModifier` | 6.000000 | 24.000000 |
| `offensiveCritDamageModifier` | 10.000000 | 40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/a301a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveCritDamageModifier` | 3.000000 | 12.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/a301b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveCritDamageModifier` | 5.000000 | 20.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/a301c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveCritDamageModifier` | 5.000000 | 20.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/a301d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveCritDamageModifier` | 10.000000 | 40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/a302a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 15.000000 | 60.000000 |
| `characterLifeRegenModifier` | 25.000000 | 100.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/a302b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 20.000000 | 80.000000 |
| `characterLifeRegenModifier` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/a302c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 15.000000 | 60.000000 |
| `characterLifeRegenModifier` | 50.000000 | 200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/a302d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 30.000000 | 120.000000 |
| `characterLifeRegenModifier` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/a305c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 4.000000 | 16.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/a305g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveTotalDamageModifier` | 35.000000 | 140.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/a305h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 4.000000 | 16.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/a306c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbilityModifier` | 3.000000 | 12.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/a306g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbilityModifier` | 3.000000 | 12.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/a306h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbilityModifier` | 3.000000 | 12.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b301c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `petBurstSpawn` | 1 | 4 |
| `petLimit` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b301d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `petBurstSpawn` | 2 | 8 |
| `petLimit` | 2 | 8 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b301e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `petBurstSpawn` | 1 | 4 |
| `petLimit` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b301f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `petBurstSpawn` | 2 | 8 |
| `petLimit` | 2 | 8 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b301g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `petBurstSpawn` | 1 | 4 |
| `petLimit` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b301h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `petBurstSpawn` | 1 | 4 |
| `petLimit` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b302a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 4.000000 | 16.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b302b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b302c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 24.000000 | 96.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b302d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 48.000000 | 192.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b302e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 24.000000 | 96.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b302f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 48.000000 | 192.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b302g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 35.000000 | 140.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b302h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 35.000000 | 140.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b303d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowBleedingMin` | 600.000000 | 2400.000000 |
| `weaponDamagePct` | 40.000000 | 160.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b303f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowBleedingMin` | 600.000000 | 2400.000000 |
| `weaponDamagePct` | 40.000000 | 160.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b304d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowLightningMin` | 600.000000 | 2400.000000 |
| `weaponDamagePct` | 40.000000 | 160.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b304f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowLightningMin` | 600.000000 | 2400.000000 |
| `weaponDamagePct` | 40.000000 | 160.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b305a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowBleedingMin` | 20.000000 | 80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b305b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowBleedingMin` | 40.000000 | 160.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b305c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowBleedingMin` | 200.000000 | 800.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b305d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowBleedingMin` | 400.000000 | 1600.000000 |
| `weaponDamagePct` | 15.000000 | 60.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b305e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowBleedingMin` | 200.000000 | 800.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b305f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowBleedingMin` | 400.000000 | 1600.000000 |
| `weaponDamagePct` | 15.000000 | 60.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b305g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowBleedingMin` | 200.000000 | 800.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b305h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowBleedingMin` | 200.000000 | 800.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b306a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 12.000000 | 48.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b306b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 24.000000 | 96.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b306c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 70.000000 | 280.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b306d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 120.000000 | 480.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b306e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 70.000000 | 280.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b306f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 120.000000 | 480.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b306g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b306h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b307b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 15.000000 | 60.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b307c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -10.000000 | -40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b307d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 120.000000 | 480.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b307e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -10.000000 | -40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b307f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 120.000000 | 480.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b307g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -10.000000 | -40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b307h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -10.000000 | -40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b308b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 10.000000 | 40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b308d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass06/b308f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/a301a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 15.000000 | 60.000000 |
| `offensiveTotalDamageModifier` | 20.000000 | 80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/a301b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 20.000000 | 80.000000 |
| `offensiveTotalDamageModifier` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/a301c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 15.000000 | 60.000000 |
| `offensiveTotalDamageModifier` | 35.000000 | 140.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/a301d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | 30.000000 | 120.000000 |
| `offensiveTotalDamageModifier` | 70.000000 | 280.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/a303a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -1.000000 | -4.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/a303b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -3.000000 | -12.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/a303c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -4.000000 | -16.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/a303d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -8.000000 | -32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/a306c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -4.000000 | -16.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/a306d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -8.000000 | -32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/a306g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -4.000000 | -16.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/a306h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -4.000000 | -16.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b301a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveLightningMin` | 40.000000 | 160.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b301b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -4.000000 | -16.000000 |
| `offensiveLightningMin` | 80.000000 | 320.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b301c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -5.000000 | -20.000000 |
| `offensiveLightningMin` | 240.000000 | 960.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b301d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -10.000000 | -40.000000 |
| `offensiveLightningMin` | 480.000000 | 1920.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b301e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -5.000000 | -20.000000 |
| `offensiveLightningMin` | 240.000000 | 960.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b301f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -10.000000 | -40.000000 |
| `offensiveLightningMin` | 480.000000 | 1920.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b301g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -5.000000 | -20.000000 |
| `offensiveLightningMin` | 240.000000 | 960.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b301h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -5.000000 | -20.000000 |
| `offensiveLightningMin` | 240.000000 | 960.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b304a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveFireMin` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b304b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveFireMin` | 16.000000 | 64.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b304c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveFireMin` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b304d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 25.000000 | 100.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b304e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveFireMin` | 50.000000 | 200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b304f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 25.000000 | 100.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b304g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveFireMin` | 50.000000 | 200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b304h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveFireMin` | 50.000000 | 200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b305a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowFireMin` | 40.000000 | 160.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b305b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowFireMin` | 80.000000 | 320.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b305c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowFireMin` | 300.000000 | 1200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b305d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowFireMin` | 600.000000 | 2400.000000 |
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b305e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowFireMin` | 300.000000 | 1200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b305f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowFireMin` | 600.000000 | 2400.000000 |
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b305g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowFireMin` | 300.000000 | 1200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b305h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowFireMin` | 300.000000 | 1200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b306b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 15.000000 | 60.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b306c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveCritDamageModifier` | 20.000000 | 80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b306d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveCritDamageModifier` | 40.000000 | 160.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b306e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b306f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 120.000000 | 480.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b306g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveCritDamageModifier` | 20.000000 | 80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b306h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveCritDamageModifier` | 20.000000 | 80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b307b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b307c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | -140.000000 | -560.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b307d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | -280.000000 | -1120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b307e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b307f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b307g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | -140.000000 | -560.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b307h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | -140.000000 | -560.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b308b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 5.000000 | 20.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b308c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -8.000000 | -32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b308d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -16.000000 | -64.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b308e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 10.000000 | 40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b308f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 20.000000 | 80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b308g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -8.000000 | -32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass07/b308h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -8.000000 | -32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/a301a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbilityModifier` | 2.000000 | 8.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/a301b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbilityModifier` | 2.000000 | 8.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/a301c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbilityModifier` | 3.000000 | 12.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/a301d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbilityModifier` | 6.000000 | 24.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/a302a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterLife` | 120.000000 | 480.000000 |
| `skillLifeBonusBuffDuration` | 120.000000 | 480.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/a302b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterLife` | 100.000000 | 400.000000 |
| `skillLifeBonusBuffDuration` | 200.000000 | 800.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/a302c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterLife` | 150.000000 | 600.000000 |
| `skillLifeBonusBuffDuration` | 300.000000 | 1200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/a302d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterLife` | 300.000000 | 1200.000000 |
| `skillLifeBonusBuffDuration` | 600.000000 | 2400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/a304a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -1.000000 | -4.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/a304b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -3.000000 | -12.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/a304c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -4.000000 | -16.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/a304d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -8.000000 | -32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/a305g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveAetherMin` | 20.000000 | 80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/a306g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `damageAbsorptionPercent` | 5.000000 | 20.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b301a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveLifeMin` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b301b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveLifeMin` | 16.000000 | 64.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b301c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveLifeMin` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b301d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 25.000000 | 100.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b301e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveLifeMin` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b301f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 25.000000 | 100.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b301g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveLifeMin` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b301h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveLifeMin` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b302a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 12.000000 | 48.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b302b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 24.000000 | 96.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b302c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b302d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 120.000000 | 480.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b302e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b302f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 120.000000 | 480.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b302g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b302h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b303a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPoisonMin` | 40.000000 | 160.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b303b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPoisonMin` | 80.000000 | 320.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b303c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPoisonMin` | 300.000000 | 1200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b303d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b303e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPoisonMin` | 300.000000 | 1200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b303f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b303g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPoisonMin` | 300.000000 | 1200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b303h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPoisonMin` | 300.000000 | 1200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b304a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `petBurstSpawn` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b304b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `petBurstSpawn` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b304c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `petBurstSpawn` | 1 | 4 |
| `petLimit` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b304d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowLifeMin` | 600.000000 | 2400.000000 |
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b304e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `petBurstSpawn` | 1 | 4 |
| `petLimit` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b304f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowLifeMin` | 600.000000 | 2400.000000 |
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b304g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `petBurstSpawn` | 1 | 4 |
| `petLimit` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b304h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `petBurstSpawn` | 1 | 4 |
| `petLimit` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b305d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterAttackSpeedMaxModifier` | 24.000000 | 96.000000 |
| `characterAttackSpeedModifier` | 24.000000 | 96.000000 |
| `characterSpellCastSpeedMaxModifier` | 24.000000 | 96.000000 |
| `characterSpellCastSpeedModifier` | 24.000000 | 96.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b305f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterAttackSpeedMaxModifier` | 24.000000 | 96.000000 |
| `characterAttackSpeedModifier` | 24.000000 | 96.000000 |
| `characterSpellCastSpeedMaxModifier` | 24.000000 | 96.000000 |
| `characterSpellCastSpeedModifier` | 24.000000 | 96.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b306a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowLifeMin` | 50.000000 | 200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b306b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowLifeMin` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b306c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowLifeMin` | 400.000000 | 1600.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b306d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowLifeMin` | 800.000000 | 3200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b306e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowLifeMin` | 400.000000 | 1600.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b306f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowLifeMin` | 800.000000 | 3200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b306g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowLifeMin` | 400.000000 | 1600.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b306h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowLifeMin` | 400.000000 | 1600.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b307b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveLifeMin` | 50.000000 | 200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b307c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveLifeMin` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b307d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveLifeMin` | 200.000000 | 800.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b307e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveLifeMin` | 100.000000 | 400.000000 |
| `projectilePiercing` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b307f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveLifeMin` | 200.000000 | 800.000000 |
| `projectilePiercing` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b307g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveTotalDamageModifier` | 200.000000 | 800.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b307h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveTotalDamageModifier` | 200.000000 | 800.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b308b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 15.000000 | 60.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b308c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b308d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 120.000000 | 480.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b308e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b308f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 120.000000 | 480.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b308g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -5.000000 | -20.000000 |
| `offensiveColdMin` | 200.000000 | 800.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass08/b308h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveAllResistance` | -5.000000 | -20.000000 |
| `offensiveColdMin` | 200.000000 | 800.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/a301a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveCrowdControl` | 5.000000 | 20.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/a301b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveCrowdControl` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/a301c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveCrowdControl` | 10.000000 | 40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/a301d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `defensiveCrowdControl` | 20.000000 | 80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/a302a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbility` | 15.000000 | 60.000000 |
| `retaliationTotalDamageModifier` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/a302b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbility` | 20.000000 | 80.000000 |
| `retaliationTotalDamageModifier` | 35.000000 | 140.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/a302c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbility` | 15.000000 | 60.000000 |
| `retaliationTotalDamageModifier` | 35.000000 | 140.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/a302d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbility` | 30.000000 | 120.000000 |
| `retaliationTotalDamageModifier` | 70.000000 | 280.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/a304a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `skillLifePercentBuffDuration` | 3.000000 | 12.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/a304b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `skillLifePercentBuffDuration` | 4.000000 | 16.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/a304c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `skillLifePercentBuffDuration` | 4.000000 | 16.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/a304d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `skillLifePercentBuffDuration` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/a305g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbilityModifier` | 4.000000 | 16.000000 |
| `offensiveCritDamageModifier` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/a306d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/a306e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 4.000000 | 16.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/a306f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/a306g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbilityModifier` | 4.000000 | 16.000000 |
| `characterOffensiveAbilityModifier` | 4.000000 | 16.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b301a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `retaliationDamagePct` | 4.000000 | 16.000000 |
| `weaponDamagePct` | 10.000000 | 40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b301b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `retaliationDamagePct` | 8.000000 | 32.000000 |
| `weaponDamagePct` | 20.000000 | 80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b301c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `retaliationDamagePct` | 45.000000 | 180.000000 |
| `weaponDamagePct` | 90.000000 | 360.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b301d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPhysicalMin` | 600.000000 | 2400.000000 |
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b301e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `retaliationDamagePct` | 35.000000 | 140.000000 |
| `weaponDamagePct` | 70.000000 | 280.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b301f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPhysicalMin` | 600.000000 | 2400.000000 |
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b301g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPhysicalMin` | 300.000000 | 1200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b301h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `retaliationDamagePct` | 35.000000 | 140.000000 |
| `weaponDamagePct` | 70.000000 | 280.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b302a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `retaliationDamagePct` | 2.000000 | 8.000000 |
| `weaponDamagePct` | 4.000000 | 16.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b302b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `retaliationDamagePct` | 4.000000 | 16.000000 |
| `weaponDamagePct` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b302c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `retaliationDamagePct` | 12.000000 | 48.000000 |
| `weaponDamagePct` | 24.000000 | 96.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b302d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `retaliationDamagePct` | 24.000000 | 96.000000 |
| `weaponDamagePct` | 48.000000 | 192.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b302e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `retaliationDamagePct` | 12.000000 | 48.000000 |
| `weaponDamagePct` | 24.000000 | 96.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b302f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `retaliationDamagePct` | 24.000000 | 96.000000 |
| `weaponDamagePct` | 48.000000 | 192.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b302g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `retaliationDamagePct` | 18.000000 | 72.000000 |
| `weaponDamagePct` | 35.000000 | 140.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b302h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `retaliationDamagePct` | 18.000000 | 72.000000 |
| `weaponDamagePct` | 35.000000 | 140.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b303a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 12.000000 | 48.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b303b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 24.000000 | 96.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b303c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 70.000000 | 280.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b303d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 140.000000 | 560.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b303e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 70.000000 | 280.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b303f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 140.000000 | 560.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b303g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 40.000000 | 160.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b303h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 70.000000 | 280.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b304a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPhysicalMin` | 40.000000 | 160.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b304b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPhysicalMin` | 80.000000 | 320.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b304c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPhysicalMin` | 300.000000 | 1200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b304d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPhysicalMin` | 600.000000 | 2400.000000 |
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b304e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPhysicalMin` | 300.000000 | 1200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b304f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPhysicalMin` | 600.000000 | 2400.000000 |
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b304g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPhysicalMin` | 300.000000 | 1200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b304h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveSlowPhysicalMin` | 300.000000 | 1200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b305c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `petBurstSpawn` | 1 | 4 |
| `petLimit` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b305d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `petBurstSpawn` | 2 | 8 |
| `petLimit` | 2 | 8 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b305e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `petBurstSpawn` | 1 | 4 |
| `petLimit` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b305f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `petBurstSpawn` | 2 | 8 |
| `petLimit` | 2 | 8 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b305g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `petBurstSpawn` | 1 | 4 |
| `petLimit` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b305h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `petBurstSpawn` | 1 | 4 |
| `petLimit` | 1 | 4 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b306a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 2.000000 | 8.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b306b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 4.000000 | 16.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b306c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 16.000000 | 64.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b306d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 32.000000 | 128.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b306e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveFireMin` | 30.000000 | 120.000000 |
| `projectilePiercing` | 75.000000 | 300.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b306f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveFireMin` | 60.000000 | 240.000000 |
| `projectilePiercing` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b306g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 24.000000 | 96.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b306h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 16.000000 | 64.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b307b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 15.000000 | 60.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b307c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b307d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 120.000000 | 480.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b307e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b307f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 120.000000 | 480.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b307g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveTotalDamageModifier` | 200.000000 | 800.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b307h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b308a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `retaliationDamagePct` | 5.000000 | 20.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b308b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `retaliationDamagePct` | 10.000000 | 40.000000 |
| `weaponDamagePct` | 10.000000 | 40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b308c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `retaliationDamagePct` | 20.000000 | 80.000000 |
| `weaponDamagePct` | 40.000000 | 160.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b308d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `retaliationDamagePct` | 40.000000 | 160.000000 |
| `weaponDamagePct` | 80.000000 | 320.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b308e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterAttackSpeedMaxModifier` | 15.000000 | 60.000000 |
| `characterAttackSpeedModifier` | 15.000000 | 60.000000 |
| `characterSpellCastSpeedMaxModifier` | 15.000000 | 60.000000 |
| `characterSpellCastSpeedModifier` | 15.000000 | 60.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b308f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterAttackSpeedMaxModifier` | 30.000000 | 120.000000 |
| `characterAttackSpeedModifier` | 30.000000 | 120.000000 |
| `characterSpellCastSpeedMaxModifier` | 30.000000 | 120.000000 |
| `characterSpellCastSpeedModifier` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b308g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterAttackSpeedMaxModifier` | 15.000000 | 60.000000 |
| `characterAttackSpeedModifier` | 15.000000 | 60.000000 |
| `characterSpellCastSpeedMaxModifier` | 15.000000 | 60.000000 |
| `characterSpellCastSpeedModifier` | 15.000000 | 60.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass09/b308h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `retaliationDamagePct` | 20.000000 | 80.000000 |
| `weaponDamagePct` | 40.000000 | 160.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/a301a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterLife` | 120.000000 | 480.000000 |
| `skillLifeBonusBuffDuration` | 120.000000 | 480.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/a301b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterLife` | 100.000000 | 400.000000 |
| `skillLifeBonusBuffDuration` | 200.000000 | 800.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/a301c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterLife` | 150.000000 | 600.000000 |
| `skillLifeBonusBuffDuration` | 300.000000 | 1200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/a301d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterLife` | 300.000000 | 1200.000000 |
| `skillLifeBonusBuffDuration` | 600.000000 | 2400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/a303a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveColdMin` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/a303b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveColdMin` | 36.000000 | 144.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/a303c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveColdMin` | 36.000000 | 144.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/a303d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveColdMin` | 72.000000 | 288.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/a304a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 3.000000 | 12.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/a304b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 4.000000 | 16.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/a304c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 4.000000 | 16.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/a304d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/a306g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveColdMin` | 10.000000 | 40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b301a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 4.000000 | 16.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b301b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b301c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 24.000000 | 96.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b301d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 48.000000 | 192.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b301e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 24.000000 | 96.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b301f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 48.000000 | 192.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b301g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 35.000000 | 140.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b301h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 35.000000 | 140.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b302a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 12.000000 | 48.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b302b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 24.000000 | 96.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b302c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 70.000000 | 280.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b302d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 140.000000 | 560.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b302e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 70.000000 | 280.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b302f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 140.000000 | 560.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b302g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 70.000000 | 280.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b302h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 70.000000 | 280.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b303a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveColdMin` | 10.000000 | 40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b303b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveColdMin` | 20.000000 | 80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b303c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveColdMin` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b303d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b303e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveColdMin` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b303f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b303g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveColdMin` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b303h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveColdMin` | 100.000000 | 400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b304a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 10.000000 | 40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b304b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 20.000000 | 80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b304c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b304d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 120.000000 | 480.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b304e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b304f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 120.000000 | 480.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b304g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b304h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b305a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveColdMin` | 5.000000 | 20.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b305b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveColdMin` | 10.000000 | 40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b305c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveColdMin` | 50.000000 | 200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b305d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 20.000000 | 80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b305e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveColdMin` | 50.000000 | 200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b305f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 20.000000 | 80.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b305g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveColdMin` | 50.000000 | 200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b305h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `offensiveColdMin` | 50.000000 | 200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b306a.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | -50.000000 | -200.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b306b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | -100.000000 | -400.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b306c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | -140.000000 | -560.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b306d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | -280.000000 | -1120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b306e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | -140.000000 | -560.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b306f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | -280.000000 | -1120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b306g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | -140.000000 | -560.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b306h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterDefensiveAbility` | -140.000000 | -560.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b307b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 8.000000 | 32.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b307c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b307d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b307e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b307f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b307g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterAttackSpeedMaxModifier` | 12.000000 | 48.000000 |
| `characterAttackSpeedModifier` | 12.000000 | 48.000000 |
| `characterSpellCastSpeedMaxModifier` | 12.000000 | 48.000000 |
| `characterSpellCastSpeedModifier` | 12.000000 | 48.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b307h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b308b.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 10.000000 | 40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b308c.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b308d.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b308e.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 30.000000 | 120.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b308f.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 60.000000 | 240.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b308g.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `characterOffensiveAbilityModifier` | 6.000000 | 24.000000 |
| `offensiveCritDamageModifier` | 10.000000 | 40.000000 |

### records/skills/itemskillsgdx3/skillmodifiers/ascended/playerclass10/b308h.dbr

Type: Mastery modifier

| Field | Old | New |
|---|---:|---:|
| `weaponDamagePct` | 30.000000 | 120.000000 |

