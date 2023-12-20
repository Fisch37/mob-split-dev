execute store result score @s f37_msd_health run data get entity @s Health 10
execute if score @s f37_msd_health matches 0 if entity @s[tag=!f37_msd_has_split] at @s run function fisch37:msd/split

execute on passengers if entity @e[tag=splittable_entity_marker] run scoreboard players set @s f37_msd_has_reference 1