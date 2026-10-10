# Beutekugel blueprint drop correction — 2026-09-19

Current implementation: see [beutekugel_blueprints_script_fix_changelog.md](beutekugel_blueprints_script_fix_changelog.md). The corrected loot tables still failed to produce a visible blueprint in the player's test; the 12 active sphere loot records were restored and the new reward uses the opening script.

## Report and evidence

The player reported zero blueprints from 5–6 Beutekugels of various types at character levels 75–80, while ordinary loot appeared normally.

The installed compiled mod database (last written 2026-09-19 21:31:58 local time) was extracted read-only to inspect deployed records. It contains the 12 updated sphere loot records and all 35 new blueprint pools. All 35 deployed pools omit noPrefixNoSuffix. This rules out omission of these records from that compiled build, but does not independently prove which mod instance the running game loaded.

The fixed-weight template includes TemplateBase/LootItemTableRandomizer.tpl. Its plain-item outcome field noPrefixNoSuffix has an empty default. The generated pools provided item-selection weights but no positive affix-outcome weight. The installed base blueprint table records/items/loottables/blueprints/tdyn_blueprints_b01.dbr uses noPrefixNoSuffix=100000. This is a concrete configuration defect and a plausible cause of the empty blueprint branch; engine-level causality remains subject to an in-game retest.

The original generator and validation missed this inherited template requirement. This correction addresses that omission.

## Every DBR change

All paths below are relative to the mod database directory. In each record the ONLY field change is noPrefixNoSuffix: absent → 100000. All existing fields are unchanged.

| Record | Field | Before | After |
|---|---|---|---|
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_000.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_001.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_002.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_003.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_004.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_005.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_006.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_007.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_008.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_009.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_010.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_011.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_012.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_013.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_014.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_015.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_016.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_017.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_018.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_019.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_020.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_021.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_022.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_023.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_024.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_025.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_026.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_027.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_028.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_029.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_030.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_0_031.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_1_000.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_1_001.dbr | noPrefixNoSuffix | absent | 100000 |
| records/__mod/spheres/loot/blueprints_all_levels/pool_all.dbr | noPrefixNoSuffix | absent | 100000 |

## Other files

- tools/apply_beutekugel_blueprints.ps1: adds noPrefixNoSuffix=100000 to generated pool records and a preflight assertion requiring a positive plain-item outcome weight.
- audit/beutekugel_blueprints_2026-09-19_affix_fix/before/: 35 original pool DBRs, each with the same basename listed above, plus the prior apply_beutekugel_blueprints.ps1. These are recovery copies, not additional active DBRs.
- beutekugel_blueprints_drop_fix_changelog.md: this audit.
- beutekugel_blueprints_changelog.md: added a notice linking this correction. The original field-level history and manifest remain preserved. Original pool hashes describe the pre-correction version.

## Verification and retained scope

- Independently compared all 35 updated DBRs with their backups: exactly one field added to each; no other field value changed.
- Confirmed all 35 compiled pre-fix pool records omit the field.
- Confirmed all 12 sphere loot records still match their original implementation manifest hashes.
- Generator passes PowerShell syntax parsing.
- The 948-blueprint inventory, including all three DLCs and 32 potion blueprints, is unchanged.
- All item/branch selection weights are unchanged, retaining the original 1/948 table-selection probability per blueprint independent of character level.
- Existing gameplay scripts and compiled archives are unchanged. Ordinary sphere drops, enemy records, crafting requirements and learned-recipe behavior are unchanged.
- No files were deleted.
- Compilation deliberately not performed because this correction is DBR-only. Compile manually in Asset Manager, reload the mod, and retest several sphere types.
- No runtime test was performed. The requested visible-drop behavior is not yet confirmed; if the issue persists, learned-recipe filtering and nested fixed-table execution still require investigation.
