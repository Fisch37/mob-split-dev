say Split!
# Scaling by 100x too much because that's the scaling of SCALE_REDUCTION
execute store result score @s _f37_msd_calc run attribute @s generic.scale base get 100000
# Exit if violating minimum scale
execute if score @s _f37_msd_calc matches ..6300 run return 1

# Calculate new scale
data modify storage fisch37:msd_tmp macro_args set value {}
scoreboard players operation @s _f37_msd_calc /= SCALE_REDUCTION _f37_msd_calc
execute store result storage fisch37:msd_tmp macro_args.scale float 0.001 run scoreboard players get @s _f37_msd_calc
# Rescale ExplosionRadius
execute store result score @s _f37_msd_calc run data get entity @s ExplosionRadius 100000
scoreboard players operation @s _f37_msd_calc /= SCALE_REDUCTION _f37_msd_calc
execute store result storage fisch37:msd_tmp macro_args.explosion float 0.001 run scoreboard players get @s _f37_msd_calc
# Rescale max_health
execute store result score @s _f37_msd_calc run attribute @s generic.max_health base get 100000
scoreboard players operation @s _f37_msd_calc /= SCALE_REDUCTION _f37_msd_calc
execute store result storage fisch37:msd_tmp macro_args.health float 0.001 run scoreboard players get @s _f37_msd_calc

function fisch37:msd/store_entity_id

data modify storage fisch37:msd_tmp macro_args.name set value "\"\""
data modify storage fisch37:msd_tmp macro_args.name set string entity @s CustomName

## Summon new entities
function fisch37:msd/macro_summon_rescaled with storage fisch37:msd_tmp macro_args
function fisch37:msd/macro_summon_rescaled with storage fisch37:msd_tmp macro_args

# Mark entity as done
tag @s add f37_msd_has_split