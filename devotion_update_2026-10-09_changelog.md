# Devotion update — 2026-10-09

Extracted the installed updated base, Ashes of Malmouth (GDX1), and Forgotten Gods (GDX2) databases into this mod workspace. Compared all devotion records against the previous game extracts, then merged only the patch changes into the mod.

Updated 49 mod DBRs and 201 fields: 13 numeric additions/adjustments at 4x the latest vanilla value, and 188 field removals from the game update. The original devotion_2x_summary.md is historical; current affected nonzero mod stats consistently equal 4x the previous game values. Added stats use that same observed scale. No previously buffed value was multiplied again.

The update also lowers Wolverine pet defensive ability and Rhowan's Crown elemental damage; their latest values are scaled 4x. Removed resistance fields and pet-bonus links follow the new game data. Other custom fields, skill levels, damage curves, proc behavior, cooldowns, and Unknown Soldier bleed durations are preserved.

## Source databases

| Source | Extracted DBRs | Devotion DBRs | Changed fields | SHA256 |
|---|---:|---:|---:|---|
| base | 34180 | 598 | 148 | 9E3532250CDB611A4CC989997C8F97FCEC2D6C422063A845E6C43CD538C30603 |
| gdx1 | 18455 | 227 | 51 | C9EB9B8B76F5A2DB6DE14523205253102509B07DFAC47B1DA090C27D0B5A8893 |
| gdx2 | 16453 | 156 | 2 | 163ACC749EE9D647A0A7122D1F93B3C7EE9859142C9ACABF1D7528591F5BC539 |

Archive paths are listed in audit/devotion_update_2026-10-09/source_manifest.json. Previous extracts were read only; updated extracts are retained in the audit folder. This comparison covers installed base/GDX1/GDX2 devotion records; no installed GDX3 database was present.

## Every changed mod record and field

All record paths below are relative to database/records/skills/devotion/. “Absent” means that the field is not serialized in the DBR. All 49 original records are backed up under audit/devotion_update_2026-10-09/before/.

| Record | Source | Field | Previous vanilla | Updated vanilla | Previous mod | Updated mod |
|---|---|---|---|---|---|---|
| pets/pet_hound_01.dbr | base | defensiveAether | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_01.dbr | base | defensiveChaos | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_01.dbr | base | defensiveCold | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_01.dbr | base | defensiveFire | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_01.dbr | base | defensiveLife | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_01.dbr | base | defensiveLightning | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_01.dbr | base | defensivePierce | 25.000000 | (absent) | 100.000000 | (absent) |
| pets/pet_hound_01.dbr | base | defensivePoison | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_02.dbr | base | defensiveAether | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_02.dbr | base | defensiveChaos | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_02.dbr | base | defensiveCold | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_02.dbr | base | defensiveFire | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_02.dbr | base | defensiveLife | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_02.dbr | base | defensiveLightning | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_02.dbr | base | defensivePierce | 25.000000 | (absent) | 100.000000 | (absent) |
| pets/pet_hound_02.dbr | base | defensivePoison | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_03.dbr | base | defensiveAether | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_03.dbr | base | defensiveChaos | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_03.dbr | base | defensiveCold | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_03.dbr | base | defensiveFire | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_03.dbr | base | defensiveLife | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_03.dbr | base | defensiveLightning | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_03.dbr | base | defensivePierce | 25.000000 | (absent) | 100.000000 | (absent) |
| pets/pet_hound_03.dbr | base | defensivePoison | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_04.dbr | base | defensiveAether | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_04.dbr | base | defensiveChaos | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_04.dbr | base | defensiveCold | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_04.dbr | base | defensiveFire | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_04.dbr | base | defensiveLife | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_04.dbr | base | defensiveLightning | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_04.dbr | base | defensivePierce | 25.000000 | (absent) | 100.000000 | (absent) |
| pets/pet_hound_04.dbr | base | defensivePoison | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_05.dbr | base | defensiveAether | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_05.dbr | base | defensiveChaos | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_05.dbr | base | defensiveCold | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_05.dbr | base | defensiveFire | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_05.dbr | base | defensiveLife | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_05.dbr | base | defensiveLightning | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_05.dbr | base | defensivePierce | 25.000000 | (absent) | 100.000000 | (absent) |
| pets/pet_hound_05.dbr | base | defensivePoison | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_06.dbr | base | defensiveAether | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_06.dbr | base | defensiveChaos | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_06.dbr | base | defensiveCold | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_06.dbr | base | defensiveFire | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_06.dbr | base | defensiveLife | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_06.dbr | base | defensiveLightning | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_06.dbr | base | defensivePierce | 25.000000 | (absent) | 100.000000 | (absent) |
| pets/pet_hound_06.dbr | base | defensivePoison | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_07.dbr | base | defensiveAether | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_07.dbr | base | defensiveChaos | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_07.dbr | base | defensiveCold | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_07.dbr | base | defensiveFire | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_07.dbr | base | defensiveLife | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_07.dbr | base | defensiveLightning | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_07.dbr | base | defensivePierce | 25.000000 | (absent) | 100.000000 | (absent) |
| pets/pet_hound_07.dbr | base | defensivePoison | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_08.dbr | base | defensiveAether | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_08.dbr | base | defensiveChaos | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_08.dbr | base | defensiveCold | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_08.dbr | base | defensiveFire | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_08.dbr | base | defensiveLife | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_08.dbr | base | defensiveLightning | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_08.dbr | base | defensivePierce | 25.000000 | (absent) | 100.000000 | (absent) |
| pets/pet_hound_08.dbr | base | defensivePoison | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_09.dbr | base | defensiveAether | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_09.dbr | base | defensiveChaos | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_09.dbr | base | defensiveCold | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_09.dbr | base | defensiveFire | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_09.dbr | base | defensiveLife | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_09.dbr | base | defensiveLightning | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_09.dbr | base | defensivePierce | 25.000000 | (absent) | 100.000000 | (absent) |
| pets/pet_hound_09.dbr | base | defensivePoison | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_10.dbr | base | defensiveAether | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_10.dbr | base | defensiveChaos | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_10.dbr | base | defensiveCold | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_10.dbr | base | defensiveFire | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_10.dbr | base | defensiveLife | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_10.dbr | base | defensiveLightning | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_10.dbr | base | defensivePierce | 25.000000 | (absent) | 100.000000 | (absent) |
| pets/pet_hound_10.dbr | base | defensivePoison | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_11.dbr | base | defensiveAether | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_11.dbr | base | defensiveChaos | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_11.dbr | base | defensiveCold | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_11.dbr | base | defensiveFire | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_11.dbr | base | defensiveLife | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_11.dbr | base | defensiveLightning | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_11.dbr | base | defensivePierce | 25.000000 | (absent) | 100.000000 | (absent) |
| pets/pet_hound_11.dbr | base | defensivePoison | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_12.dbr | base | defensiveAether | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_12.dbr | base | defensiveChaos | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_12.dbr | base | defensiveCold | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_12.dbr | base | defensiveFire | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_12.dbr | base | defensiveLife | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_12.dbr | base | defensiveLightning | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_12.dbr | base | defensivePierce | 25.000000 | (absent) | 100.000000 | (absent) |
| pets/pet_hound_12.dbr | base | defensivePoison | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_13.dbr | base | defensiveAether | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_13.dbr | base | defensiveChaos | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_13.dbr | base | defensiveCold | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_13.dbr | base | defensiveFire | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_13.dbr | base | defensiveLife | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_13.dbr | base | defensiveLightning | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_13.dbr | base | defensivePierce | 25.000000 | (absent) | 100.000000 | (absent) |
| pets/pet_hound_13.dbr | base | defensivePoison | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_14.dbr | base | defensiveAether | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_14.dbr | base | defensiveChaos | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_14.dbr | base | defensiveCold | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_14.dbr | base | defensiveFire | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_14.dbr | base | defensiveLife | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_14.dbr | base | defensiveLightning | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_14.dbr | base | defensivePierce | 25.000000 | (absent) | 100.000000 | (absent) |
| pets/pet_hound_14.dbr | base | defensivePoison | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_15.dbr | base | defensiveAether | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_15.dbr | base | defensiveChaos | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_15.dbr | base | defensiveCold | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_15.dbr | base | defensiveFire | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_15.dbr | base | defensiveLife | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_15.dbr | base | defensiveLightning | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_15.dbr | base | defensivePierce | 25.000000 | (absent) | 100.000000 | (absent) |
| pets/pet_hound_15.dbr | base | defensivePoison | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_16.dbr | gdx1 | defensiveAether | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_16.dbr | gdx1 | defensiveChaos | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_16.dbr | gdx1 | defensiveCold | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_16.dbr | gdx1 | defensiveFire | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_16.dbr | gdx1 | defensiveLife | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_16.dbr | gdx1 | defensiveLightning | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_16.dbr | gdx1 | defensivePierce | 25.000000 | (absent) | 100.000000 | (absent) |
| pets/pet_hound_16.dbr | gdx1 | defensivePoison | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_17.dbr | gdx1 | defensiveAether | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_17.dbr | gdx1 | defensiveChaos | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_17.dbr | gdx1 | defensiveCold | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_17.dbr | gdx1 | defensiveFire | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_17.dbr | gdx1 | defensiveLife | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_17.dbr | gdx1 | defensiveLightning | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_17.dbr | gdx1 | defensivePierce | 25.000000 | (absent) | 100.000000 | (absent) |
| pets/pet_hound_17.dbr | gdx1 | defensivePoison | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_18.dbr | gdx1 | defensiveAether | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_18.dbr | gdx1 | defensiveChaos | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_18.dbr | gdx1 | defensiveCold | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_18.dbr | gdx1 | defensiveFire | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_18.dbr | gdx1 | defensiveLife | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_18.dbr | gdx1 | defensiveLightning | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_18.dbr | gdx1 | defensivePierce | 25.000000 | (absent) | 100.000000 | (absent) |
| pets/pet_hound_18.dbr | gdx1 | defensivePoison | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_19.dbr | gdx1 | defensiveAether | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_19.dbr | gdx1 | defensiveChaos | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_19.dbr | gdx1 | defensiveCold | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_19.dbr | gdx1 | defensiveFire | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_19.dbr | gdx1 | defensiveLife | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_19.dbr | gdx1 | defensiveLightning | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_19.dbr | gdx1 | defensivePierce | 25.000000 | (absent) | 100.000000 | (absent) |
| pets/pet_hound_19.dbr | gdx1 | defensivePoison | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_20.dbr | gdx1 | defensiveAether | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_20.dbr | gdx1 | defensiveChaos | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_20.dbr | gdx1 | defensiveCold | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_20.dbr | gdx1 | defensiveFire | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_20.dbr | gdx1 | defensiveLife | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_20.dbr | gdx1 | defensiveLightning | 15.000000 | (absent) | 60.000000 | (absent) |
| pets/pet_hound_20.dbr | gdx1 | defensivePierce | 25.000000 | (absent) | 100.000000 | (absent) |
| pets/pet_hound_20.dbr | gdx1 | defensivePoison | 15.000000 | (absent) | 60.000000 | (absent) |
| tier1_06c.dbr | base | petBonusName | records/skills/devotion/tier1_06c_petbonus.dbr | (absent) | records/skills/devotion/tier1_06c_petbonus.dbr | (absent) |
| tier1_16b_petbonus.dbr | base | characterLifeModifier | (absent) | 4.000000 | (absent) | 16.000000 |
| tier1_16b_petbonus.dbr | base | defensivePierce | 15.000000 | (absent) | 60.000000 | (absent) |
| tier1_16c_petbonus.dbr | base | defensiveAether | 15.000000 | (absent) | 60.000000 | (absent) |
| tier1_16d_petbonus.dbr | base | defensiveChaos | 15.000000 | (absent) | 60.000000 | (absent) |
| tier1_28a.dbr | base | petBonusName | records/skills/devotion/tier1_28a_petbonus.dbr | (absent) | records/skills/devotion/tier1_28a_petbonus.dbr | (absent) |
| tier1_28b.dbr | base | petBonusName | records/skills/devotion/tier1_28b_petbonus.dbr | (absent) | records/skills/devotion/tier1_28b_petbonus.dbr | (absent) |
| tier1_28c_petbonus.dbr | base | characterDefensiveAbilityModifier | 0.000000 | 2.000000 | 0.000000 | 8.000000 |
| tier1_28c_petbonus.dbr | base | defensivePoison | 15.000000 | (absent) | 60.000000 | (absent) |
| tier1_28d_petbonus.dbr | base | characterRunSpeedModifier | 0.000000 | 5.000000 | 0.000000 | 20.000000 |
| tier1_28d_petbonus.dbr | base | defensiveBleeding | 25.000000 | (absent) | 100.000000 | (absent) |
| tier1_28e_petbonus.dbr | base | characterDefensiveAbilityModifier | 5.000000 | 4.000000 | 20.000000 | 16.000000 |
| tier1_31b.dbr | base | petBonusName | records/skills/devotion/tier1_31b_petbonus.dbr | (absent) | records/skills/devotion/tier1_31b_petbonus.dbr | (absent) |
| tier1_31d.dbr | base | petBonusName | records/skills/devotion/tier1_31d_perbonus.dbr | (absent) | records/skills/devotion/tier1_31d_perbonus.dbr | (absent) |
| tier1_39b_skill_petbonus.dbr | gdx1 | defensivePierce | 15.000000 | (absent) | 60.000000 | (absent) |
| tier1_43b_petbonus.dbr | gdx2 | defensiveElementalResistance | 15.000000 | (absent) | 60.000000 | (absent) |
| tier2_01b_petbonus.dbr | base | offensiveElementalModifier | 60.000000 | 40.000000 | 240.000000 | 160.000000 |
| tier2_01b_petbonus.dbr | base | offensiveSlowColdModifier | 0.000000 | 40.000000 | 0.000000 | 160.000000 |
| tier2_01b_petbonus.dbr | base | offensiveSlowFireModifier | 0.000000 | 40.000000 | 0.000000 | 160.000000 |
| tier2_01b_petbonus.dbr | base | offensiveSlowLightningModifier | 0.000000 | 40.000000 | 0.000000 | 160.000000 |
| tier2_01d_petbonus.dbr | base | defensiveElementalResistance | 18.000000 | (absent) | 72.000000 | (absent) |
| tier2_01d_petbonus.dbr | base | offensiveElementalModifier | (absent) | 40.000000 | (absent) | 160.000000 |
| tier2_01d_petbonus.dbr | base | offensiveSlowColdModifier | 0.000000 | 40.000000 | 0.000000 | 160.000000 |
| tier2_01d_petbonus.dbr | base | offensiveSlowFireModifier | 0.000000 | 40.000000 | 0.000000 | 160.000000 |
| tier2_01d_petbonus.dbr | base | offensiveSlowLightningModifier | 0.000000 | 40.000000 | 0.000000 | 160.000000 |
| tier2_10c_petbonus.dbr | base | characterLifeModifier | (absent) | 5.000000 | (absent) | 20.000000 |
| tier2_10c_petbonus.dbr | base | defensiveLife | 15.000000 | (absent) | 60.000000 | (absent) |
| tier2_12c.dbr | base | petBonusName | records/skills/devotion/tier2_12c_petbonus.dbr | (absent) | records/skills/devotion/tier2_12c_petbonus.dbr | (absent) |
| tier2_30a.dbr | base | petBonusName | records/skills/devotion/tier2_30a_petbonus.dbr | (absent) | records/skills/devotion/tier2_30a_petbonus.dbr | (absent) |
| tier2_30d.dbr | base | petBonusName | records/skills/devotion/tier2_30d_petbonus.dbr | (absent) | records/skills/devotion/tier2_30d_petbonus.dbr | (absent) |
| tier2_33b_petbonus.dbr | gdx1 | defensiveAether | 20.000000 | (absent) | 80.000000 | (absent) |
| tier2_33b.dbr | gdx1 | petBonusName | records/skills/devotion/tier2_33b_petbonus.dbr | (absent) | records/skills/devotion/tier2_33b_petbonus.dbr | (absent) |
| tier2_33d_petbonus.dbr | gdx1 | defensiveLife | 20.000000 | (absent) | 80.000000 | (absent) |
| tier2_33d.dbr | gdx1 | petBonusName | records/skills/devotion/tier2_33d_petbonus.dbr | (absent) | records/skills/devotion/tier2_33d_petbonus.dbr | (absent) |
| tier2_35c_petbonus.dbr | gdx1 | defensiveBleeding | 15.000000 | (absent) | 60.000000 | (absent) |
| tier2_35c_petbonus.dbr | gdx1 | defensivePoison | 15.000000 | (absent) | 60.000000 | (absent) |
| tier2_35c.dbr | gdx1 | petBonusName | records/skills/devotion/tier2_35c_petbonus.dbr | (absent) | records/skills/devotion/tier2_35c_petbonus.dbr | (absent) |
| tier3_15b_petbonus.dbr | gdx1 | defensivePoison | 30.000000 | (absent) | 120.000000 | (absent) |
| tier3_15b.dbr | gdx1 | petBonusName | records/skills/devotion/tier3_15b_petbonus.dbr | (absent) | records/skills/devotion/tier3_15b_petbonus.dbr | (absent) |
| tier3_15d_petbonus.dbr | gdx1 | defensiveBleeding | 30.000000 | (absent) | 120.000000 | (absent) |
| tier3_19c.dbr | gdx2 | petBonusName | records/skills/devotion/tier3_19c_petbonus.dbr | (absent) | records/skills/devotion/tier3_19c_petbonus.dbr | (absent) |

## Retired source records

The game removed the following nine pet-bonus DBRs. Their old copies remain in our source tree, but all links to them were removed by this update. A search of every mod DBR confirmed zero remaining references. No mod files were deleted or moved.

- database/records/skills/devotion/tier1_06c_petbonus.dbr
- database/records/skills/devotion/tier1_28a_petbonus.dbr
- database/records/skills/devotion/tier1_28b_petbonus.dbr
- database/records/skills/devotion/tier1_31b_petbonus.dbr
- database/records/skills/devotion/tier1_31d_perbonus.dbr
- database/records/skills/devotion/tier2_12c_petbonus.dbr
- database/records/skills/devotion/tier2_30a_petbonus.dbr
- database/records/skills/devotion/tier2_30d_petbonus.dbr
- database/records/skills/devotion/tier3_19c_petbonus.dbr

## Created files

- tools/compare_devotion_update.ps1 — repeatable read-only comparison, with audit JSON output.
- tools/apply_devotion_update_2026-10-09.ps1 — guarded patch application; refuses to overwrite existing backups.
- devotion_update_2026-10-09_changelog.md — this report.
- audit/devotion_update_2026-10-09/ — extracted DBRs, extraction logs, source manifests, comparison JSON, applied changes JSON, validation JSON, and the 49 original DBR backups. Every individual file is listed in artifacts.csv (the manifest also lists itself).

## Validation and compilation

All three ArchiveTool extractions exited successfully. Verified all 201 patched fields against the latest effective base/GDX1/GDX2 records, validated all positive values at 4x, checked duplicate fields, read back all modified records, and compared every unrelated field against its backup. Verified zero retired-record references and preserved Shadow Strike at 1 second and Shadow Dance attacks at 2 seconds.

Compilation was deliberately not performed. Compile the mod manually to apply the changes in game.
