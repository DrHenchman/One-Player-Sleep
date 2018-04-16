##########################################
# Authors: MadCat, DrHenchman
# Date: Jun 9, 2017
# Version: 2.0
# Minecraft Version 1.13
# Description:
# Uninstalls One Player Sleep Function
##########################################

scoreboard objectives remove OPSkickBed
scoreboard objectives remove OPSsleep

tellraw @a {"text":"Successfully Uninstalled!","color":"green"}
