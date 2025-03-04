
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



#Elm's Lab tps out policeman
execute as @a[scores={TriggerCommand=88}] run particle cloud -682 64 -481 1 1 1 0.15 100
execute as @a[scores={TriggerCommand=88}] run tp @e[x=-682,y=63,z=-481,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @a[scores={TriggerCommand=88}] run scoreboard players set @s TriggerCommand 0

#Rocket HQ Silver TP out
execute as @a[scores={TriggerCommand=89}] run particle cloud -82 34 182 1 1 1 1 100
execute as @a[scores={TriggerCommand=89}] run tp @e[x=-82,y=33,z=182,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @a[scores={TriggerCommand=89}] run scoreboard players set @s TriggerCommand 0

#Ecruteak Silver TP out
execute as @a[scores={TriggerCommand=90}] run particle cloud 343 64 216 1 1 1 1 100
execute as @a[scores={TriggerCommand=90}] run tp @e[x=-2200,y=64,z=800,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @a[scores={TriggerCommand=90}] run scoreboard players set @s TriggerCommand 0

#Silver Sprout Tower TP out
execute as @a[scores={TriggerCommand=91}] run tellraw @s {"text":"Silver used an Escape Rope!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=91}] run playsound flee ambient @s ~ ~ ~ 100 1 1
execute as @a[scores={TriggerCommand=91}] run particle cloud 57 104 29 1 1 1 0.15 100
execute as @a[scores={TriggerCommand=91}] run tp @e[x=343,y=63,z=216,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @a[scores={TriggerCommand=91}] run scoreboard players set @s TriggerCommand 0

#Silver Olivine TP out
execute as @a[scores={TriggerCommand=92}] run particle cloud -2200 64 800 1 1 1 1 100
execute as @a[scores={TriggerCommand=92}] run tp @e[x=-2200,y=64,z=800,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @a[scores={TriggerCommand=92}] run scoreboard players set @s TriggerCommand 0

#Bill tps out
execute as @a[scores={TriggerCommand=93}] run particle cloud 337 64 191 1 1 1 1 100
execute as @a[scores={TriggerCommand=93}] run tp @e[x=337,y=63,z=191,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @a[scores={TriggerCommand=93}] run scoreboard players set @s TriggerCommand 0

#Cherrygrove Silver TPs out
execute as @a[scores={TriggerCommand=94}] run particle cloud -300 64 -509 1 1 1 1 100
execute as @a[scores={TriggerCommand=94}] run tp @e[x=-300,y=63,z=-509,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @a[scores={TriggerCommand=94}] run scoreboard players set @s TriggerCommand 0

#Azalea Silver TPs out
execute as @a[scores={TriggerCommand=95}] run particle cloud 402 64 -734 1 1 1 1 100
execute as @a[scores={TriggerCommand=95}] run tp @e[x=402,y=64,z=-734,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @a[scores={TriggerCommand=95}] run scoreboard players set @s TriggerCommand 0

#Goldenrod Silver TP out
execute as @a[scores={TriggerCommand=96}] run particle cloud 481 47 -305 1 1 1 1 100
execute as @a[scores={TriggerCommand=96}] run tp @e[x=481,y=47,z=-305,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @a[scores={TriggerCommand=96}] run scoreboard players set @s TriggerCommand 0

#Burned Tower Silver TP out
execute as @a[scores={TriggerCommand=97}] run particle cloud 441 64 312 1 1 1 1 100
execute as @a[scores={TriggerCommand=97}] run tp @e[x=441,y=64,z=312,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @a[scores={TriggerCommand=97}] run scoreboard players set @s TriggerCommand 0

#Victory Road Silver TP out
execute as @a[scores={TriggerCommand=98}] run particle cloud -1449 51 528 1 1 1 1 100
execute as @a[scores={TriggerCommand=98}] run tp @e[x=-1449,y=51,z=528,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @a[scores={TriggerCommand=98}] run scoreboard players set @s TriggerCommand 0

#Mt. Moon Silver TP out
execute as @a[scores={TriggerCommand=99}] run particle cloud -2200 64 800 1 1 1 1 100
execute as @a[scores={TriggerCommand=99}] run tp @e[x=-2200,y=64,z=800,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @a[scores={TriggerCommand=99}] run scoreboard players set @s TriggerCommand 0


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#tellraw @a[scores={TriggerCommand=0..1000}] {"text":"Success!"}
scoreboard players set @a[scores={TriggerCommand=0..11}] TriggerCommand 0
scoreboard players set @a[scores={TriggerCommand=15..49}] TriggerCommand 0
scoreboard players set @a[scores={TriggerCommand=53..1000}] TriggerCommand 0




#




#
