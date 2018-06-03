##########################################
# Authors: MadCat, DrHenchman 
# Date: Jun 9, 2017
# Version: 2.0
# Minecraft Version 1.13
# Description:
# Actions to kick a player out of bed
##########################################

execute as @a[scores={OPSsleep=1..}] at @s run summon minecraft:snowball ~ ~2 ~
execute as @a[scores={OPSkickBed=1..}] run tellraw @a[scores={OPSsleep=1..}] [{"text":"You have been woken by "},{"selector":"@s"}]
execute as @a run trigger OPSkickBed set 0
scoreboard players set @a[scores={OPSkickBed=1..}] OPSkickBed 0

