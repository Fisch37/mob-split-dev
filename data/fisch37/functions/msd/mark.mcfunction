execute on passengers if entity @s[tag=splittable_entity_marker] run return 1

tag @s add _current_mark_target

execute summon marker run ride @s mount @e[tag=_current_mark_target,limit=1]
execute on passengers run tag @s add splittable_entity_marker

tag @s remove _current_mark_target