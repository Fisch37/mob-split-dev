##
 # main.mcfunction
 # msd
 #
 # Created by Fisch37.
##
# This is two @e for the same entity lookup. Terrible design.
execute as @e[type=#fisch37:splits_on_death] at @s run function fisch37:msd/mark

scoreboard players reset @e[type=marker, tag=splittable_entity_marker] f37_msd_has_reference
execute as @e[type=marker, tag=splittable_entity_marker] on vehicle run function fisch37:msd/entity_logic

# Turns out memory management is now a thing. Yeah, watch the world burn with 13000 loose markers sitting around.
execute as @e[type=marker, tag=splittable_entity_marker] unless score @s f37_msd_has_reference matches 1 run kill @s 