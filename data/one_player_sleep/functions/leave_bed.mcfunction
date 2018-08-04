execute store result score DayTime OPSsleep run time query daytime
execute if entity @s[tag=!kicked] if score DayTime OPSsleep matches 12000.. run tellraw @a ["",{"selector":"@s"},{"text":" is back up again. I guess they weren't that tired"}]
tag @s remove isSleeping
tag @s remove kicked
scoreboard players reset DayTime OPSsleep
