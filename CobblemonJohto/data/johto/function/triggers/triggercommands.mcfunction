
#Command to activate in tellraws:
#/trigger TriggerCommand set 1
#/scoreboard players enable @p TriggerCommand

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------




#22 - Safari Zone Begin Session
#If Safari Zone is currently active:
execute as @a[scores={TriggerCommand=22}] run execute as @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=SafariActive] run tellraw @a[scores={TriggerCommand=22}] {"text":"<Safari Clerk> Sorry, our Safari Zone is currently active. Please try again later!"}
execute as @a[scores={TriggerCommand=22}] run execute as @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=SafariActive] run scoreboard players set @a[scores={TriggerCommand=22}] TriggerCommand 0

execute as @a[scores={TriggerCommand=22}] run tp @s 1595 75 -125 -180 -5
execute as @a[scores={TriggerCommand=22}] run tellraw @s ["",{"text":"Before you start, you must pick which biomes you want in your Safari Zone!"}]
execute as @a[scores={TriggerCommand=22}] run tag @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] add SafariActive
execute as @a[scores={TriggerCommand=22}] run clone 1595 81 -121 1595 81 -121 1595 75 -122
execute as @a[scores={TriggerCommand=22}] run scoreboard players set @s Cooldown 0
execute as @a[scores={TriggerCommand=22}] run scoreboard players set @s TriggerCommand 0


#23 - Safari Zone Confirm Maps
execute as @a[scores={TriggerCommand=23}] run tag @s remove Dialogue201
execute as @a[scores={TriggerCommand=23}] run tag @s remove Dialogue202
execute as @a[scores={TriggerCommand=23}] run scoreboard players set @s[x=1590,y=74,z=-129,dx=10,dy=5,dz=10] DialogueTrigger 201
execute as @a[scores={TriggerCommand=23}] run scoreboard players set @s TriggerCommand 0


#77 - Map Room Cancel
execute as @a[scores={TriggerCommand=77}] run tag @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] remove SafariActive
execute as @a[scores={TriggerCommand=77}] run tp @s 1591 88 -103 180 4
execute as @a[scores={TriggerCommand=77}] run tellraw @s {"text":"<Safari Clerk> Thank you for visiting! Come again soon!"}
execute as @a[scores={TriggerCommand=77}] run setblock 1595 81 -129 minecraft:redstone_block
execute as @a[scores={TriggerCommand=77}] run scoreboard players set @e[x=-879,y=64,z=-180,dy=5,dz=10,type=armor_stand] BiomeID 0
execute as @a[scores={TriggerCommand=77}] run scoreboard players set @s Cooldown 0
execute as @a[scores={TriggerCommand=77}] run scoreboard players set @s TriggerCommand 0


#24 - Safari Zone quit button & Fly Prompt
#If Safari isn't active
execute as @a[scores={TriggerCommand=24..25}] run tag @s remove Dialogue202
execute as @a[scores={TriggerCommand=24..25}] run tag @s remove Dialogue201
execute as @a[scores={TriggerCommand=24..25}] run scoreboard players set @s DialogueTrigger 202
scoreboard players set @a[scores={TriggerCommand=24..25}] TriggerCommand 0


#26 - Sinjoh Ruins Abra TP out
execute as @a[scores={TriggerCommand=26}] run scoreboard players set @s[scores={TalkTime=0}] DialogueTrigger 177
execute as @a[scores={TriggerCommand=26}] run tag @s remove Dialogue177
scoreboard players set @a[scores={TriggerCommand=26}] TriggerCommand 0


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#tellraw @a[scores={TriggerCommand=0..1000}] {"text":"Success!"}
scoreboard players set @a[scores={TriggerCommand=0..11}] TriggerCommand 0
scoreboard players set @a[scores={TriggerCommand=15..49}] TriggerCommand 0
scoreboard players set @a[scores={TriggerCommand=53..1000}] TriggerCommand 0




#




#
