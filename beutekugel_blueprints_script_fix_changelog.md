# Beutekugel blueprint script correction — 2026-09-20

The player opened another Beutekugel after the first DBR correction and saw no blueprint. The newly compiled `.arz` was extracted and confirmed to contain all 12 changed sphere loot records and all 35 corrected blueprint tables. Ordinary loot still appeared. The random loot chain therefore did not deliver the promised blueprint in play; its exact engine failure point has not been established.

## Current implementation

- The sphere-opening script now chooses one of the same 948 base, Ashes of Malmouth, Forgotten Gods and Fangs of Asterkarn blueprint records with a uniform random index. No character-level table or item-level filter participates in that selection.
- The existing `popSphereOnSpawn` and `popSphereOnSpawnValuable` callbacks call the reward function once each before their original visual effect and sphere destruction. Together they serve all 12 configured sphere variants.
- The script first creates the selected blueprint on the ground at the sphere's coordinates. If entity creation or placement fails, it grants one copy directly to the local player's inventory and prints which path was used. Errors are logged without stopping ordinary sphere destruction.
- All 12 active `records/__mod/spheres/loot/loot_*.dbr` files were restored byte for byte from the pre-blueprint audit backups. This removes the unsuccessful extra DBR roll and restores their original loot groups and spawn counts. The complete per-file, per-field old/new values are retained in `audit/beutekugel_script_fix_2026-09-19/dbr_changes.json`.
- The 35 fixed-weight pool DBRs remain in the mod for historical auditing but are no longer referenced by these spheres.

## Files created or changed

- `source/scripts/game/beutekugel_blueprints.lua` — new 948-record inventory and direct reward function.
- `source/scripts/game/loot.lua` — recovered original script with one reward call in each of the two callbacks.
- `source/scripts/main.lua` — recovered original entrypoint with one new Script.Load for the reward module.
- `source/scripts/game/modscript.lua` and `source/scripts/game/utility.lua` — recovered copies of the two other existing archive members, unchanged in behavior.
- `resources/Scripts.arc` — replaced after Grim Dawn closed. Its SHA-256 matches the verified candidate at `audit/beutekugel_script_fix_2026-09-19/Scripts-packed.arc` (`5CEB1DCA4C3FF1DCFCFFF28E1DDF80E5253EB69CDBBECC382EE06CB7743483D9`). The exact previous archive is in `before/Scripts.arc`.
- `tools/install_beutekugel_script_fix.ps1` and `tools/pack_beutekugel_scripts.ps1` — retained source recovery/generation and ARC v3 packaging tools.
- `audit/beutekugel_script_fix_2026-09-19/before/Scripts.arc` — exact backup of the active original script archive. `before/loot_*.dbr` holds the 12 unsuccessful DBR overrides before restoration. `dbr_changes.json` holds all field-level restoration details.
- `beutekugel_blueprints_script_fix_changelog.md` — this audit. Previous changelogs remain unchanged and describe the earlier attempts.

## Checks and limitations

- The compiled `.arz` from the previous attempt contains the corrected 35 tables; compilation omission was ruled out for that build.
- The final script passed a Lua 5.1 mock run selecting all 948 records through both opening callbacks, with 1,896 simulated ground spawns, 2 simulated inventory fallbacks after entity-creation errors, and normal sphere destruction in all 1,898 cases. This verifies Lua syntax and control flow, not live engine entity creation.
- The staged script archive was unpacked by its ARC v3 layout and verified against all five exact source members and names. The mod's original ARC v3 archive is backed up.
- ArchiveTool listed the five members from the installed active archive, extracted them, and all five SHA-256 hashes matched the source files. Final extracted copies are under `audit/beutekugel_script_fix_2026-09-19/final_roundtrip/scripts/`.
- All 12 restored sphere DBRs matched their pre-change backups by SHA-256.
- In-game behavior remains unverified. If ground entity creation is unsupported for a selected blueprint, the inventory grant is the fallback. Character level is not read by the reward code. Learned-recipe behavior is not changed.
- A manual restart is needed after replacing a loaded script archive. The DBR restoration also needs an Asset Manager build; this had **not** been performed at the time of this audit. Until rebuilt, the compiled `.arz` still carries the old blueprint loot-table overrides alongside the new script reward.
