tag @s add _entity_id_target

execute summon minecraft:area_effect_cloud run tag @s add _entity_id_worker
ride @s mount @e[tag=_entity_id_worker, limit=1]
data modify storage fisch37:msd_tmp macro_args.id set string entity @e[tag=_entity_id_worker,limit=1] Passengers[0].id
kill @e[tag=_entity_id_worker]

tag @s remove _entity_id_target