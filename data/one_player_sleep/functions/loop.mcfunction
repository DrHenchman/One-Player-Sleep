##########################################
# Authors: MadCat, DrHenchman
# Date: Jun 9, 2017
# Version: 2.0
# Minecraft Version 1.13
# Description:
# One Player Sleep main loop function.
##########################################

tag @a[nbt={Sleeping:1b},gamemode=survival] add isSleeping
execute if entity @a[tag=isSleeping] run scoreboard players enable @a OPSkickBed 
scoreboard players add @a[tag=isSleeping] OPSsleep 1

execute as @a[tag=isSleeping,scores={OPSsleep=1}] run tellraw @a ["",{"selector":"@s"},{"text":" is now sleeping. "},{"text":"[Click to wake]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger OPSkickBed set 1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to stop them sleeping through the night","color":"gray"}]}}}]

# Wait for 100 ticks to allow for Minecraft's regular sleep mechanic a chance (which takes 100 ticks)
execute as @a[scores={OPSsleep=110..}] run time add 30
# Setting thunder for 1 tick is closer to what Minecraft does when you sleep than doing /weather clear
execute if entity @a[scores={OPSsleep=200}] run weather thunder 1

execute if entity @a[scores={OPSkickBed=1..}] run function one_player_sleep:kicked

tag @a[tag=isSleeping,nbt={Sleeping:0b}] remove isSleeping
scoreboard players set @a[tag=!isSleeping,scores={OPSsleep=1..}] OPSsleep 0

