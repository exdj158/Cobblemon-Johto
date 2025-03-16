
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










#Lance teleporting out from Lake of Rage
execute as @a[scores={TriggerCommand=84}] run particle cloud -159 64 590 1 1 1 1 100
execute as @a[scores={TriggerCommand=84}] run tp @e[x=-159,y=63,z=590,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @a[scores={TriggerCommand=84}] run scoreboard players set @s TriggerCommand 0

#Jasmine teleports back to gym from lighthouse
execute as @a[scores={TriggerCommand=85}] run particle cloud 705 119 -40 1 1 1 0.15 100
execute as @a[scores={TriggerCommand=85}] run tp @e[x=705,y=119,z=-40,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @a[scores={TriggerCommand=85}] run scoreboard players set @s TriggerCommand 0

#Cleans out Slowpoke Well before teleport out
execute as @a[scores={TriggerCommand=86}] run particle cloud 289 39 -661 1 1 1 1 100
execute as @a[scores={TriggerCommand=86}] run tp @e[x=251,y=38,z=-691,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @a[scores={TriggerCommand=86}] run tp @e[x=262,y=42,z=-671,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @a[scores={TriggerCommand=86}] run tp @e[x=289,y=38,z=-661,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @a[scores={TriggerCommand=86}] run tp @e[x=291,y=38,z=-679,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @a[scores={TriggerCommand=86}] run tp @e[x=244,y=38,z=-708,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @a[scores={TriggerCommand=86}] run scoreboard players set @s TriggerCommand 0

#Runs teleport back to Kurt's
execute as @a[scores={TriggerCommand=87}] run effect give @s minecraft:blindness 3 1 true
execute as @a[scores={TriggerCommand=87}] run playsound flee ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=87}] run tp @s 366 64 -703 -30 13
execute as @a[scores={TriggerCommand=87}] run scoreboard players set @s click 1
execute as @a[scores={TriggerCommand=87}] run scoreboard players set @s TriggerCommand 0


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
execute as @a[scores={TriggerCommand=90}] run tp @e[x=343,y=64,z=216,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @a[scores={TriggerCommand=90}] run scoreboard players set @s TriggerCommand 0

#Silver Sprout Tower TP out
execute as @a[scores={TriggerCommand=91}] run tellraw @s {"text":"Silver used an Escape Rope!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=91}] run playsound flee ambient @s ~ ~ ~ 100 1 1
execute as @a[scores={TriggerCommand=91}] run particle cloud 57 104 29 1 1 1 0.15 100
execute as @a[scores={TriggerCommand=91}] run tp @e[x=57,y=103,z=29,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @a[scores={TriggerCommand=91}] run scoreboard players set @s TriggerCommand 0

#Silver Olivine TP out
execute as @a[scores={TriggerCommand=92}] run particle cloud 809 64 14 1 1 1 1 100
execute as @a[scores={TriggerCommand=92}] run tp @e[x=809,y=64,z=14,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
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
#100-200, shopkeeper based triggers

#Poke Ball
execute as @a[scores={TriggerCommand=100,Money=..199}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=100,Money=..199}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=100,Money=200..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=100,Money=200..}] run give @s cobblemon:poke_ball 1
execute as @a[scores={TriggerCommand=100,Money=200..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=100,Money=200..}] run scoreboard players remove @s Money 200
execute as @a[scores={TriggerCommand=100,Money=200..}] run scoreboard players set @s TriggerCommand 0


#Poke Ball x5
execute as @a[scores={TriggerCommand=101,Money=..999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=101,Money=..999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=101,Money=1000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=101,Money=1000..}] run give @s cobblemon:poke_ball 5
execute as @a[scores={TriggerCommand=101,Money=1000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=101,Money=1000..}] run scoreboard players remove @s Money 1000
execute as @a[scores={TriggerCommand=101,Money=1000..}] run scoreboard players set @s TriggerCommand 0


#Poke Ball x10
execute as @a[scores={TriggerCommand=102,Money=..1999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=102,Money=..1999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=102,Money=2000..}] run tellraw @s {"text":"You put the items in your inventory. You got an extra Premiere Ball for free!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=102,Money=2000..}] run give @s cobblemon:poke_ball 10
execute as @a[scores={TriggerCommand=102,Money=2000..}] run give @s cobblemon:premier_ball 1
execute as @a[scores={TriggerCommand=102,Money=2000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=102,Money=2000..}] run scoreboard players remove @s Money 2000
execute as @a[scores={TriggerCommand=102,Money=2000..}] run scoreboard players set @s TriggerCommand 0

#-----------------------------

#Great Ball
execute as @a[scores={TriggerCommand=103,Money=..599}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=103,Money=..599}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=103,Money=600..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=103,Money=600..}] run give @s cobblemon:great_ball 1
execute as @a[scores={TriggerCommand=103,Money=600..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=103,Money=600..}] run scoreboard players remove @s Money 600
execute as @a[scores={TriggerCommand=103,Money=600..}] run scoreboard players set @s TriggerCommand 0


#Great Ball x5
execute as @a[scores={TriggerCommand=104,Money=..2999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=104,Money=..2999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=104,Money=3000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=104,Money=3000..}] run give @s cobblemon:great_ball 5
execute as @a[scores={TriggerCommand=104,Money=3000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=104,Money=3000..}] run scoreboard players remove @s Money 3000
execute as @a[scores={TriggerCommand=104,Money=3000..}] run scoreboard players set @s TriggerCommand 0


#Great Ball x10
execute as @a[scores={TriggerCommand=105,Money=..5999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=105,Money=..5999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=105,Money=6000..}] run tellraw @s {"text":"You put the items in your inventory. You got an extra Premiere Ball for free!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=105,Money=6000..}] run give @s cobblemon:great_ball 10
execute as @a[scores={TriggerCommand=105,Money=6000..}] run give @s cobblemon:premier_ball 1
execute as @a[scores={TriggerCommand=105,Money=6000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=105,Money=6000..}] run scoreboard players remove @s Money 6000
execute as @a[scores={TriggerCommand=105,Money=6000..}] run scoreboard players set @s TriggerCommand 0

#-----------------------------

#Ultra Ball
execute as @a[scores={TriggerCommand=106,Money=..1199}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=106,Money=..1199}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=106,Money=1200..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=106,Money=1200..}] run give @s cobblemon:ultra_ball 1
execute as @a[scores={TriggerCommand=106,Money=1200..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=106,Money=1200..}] run scoreboard players remove @s Money 1200
execute as @a[scores={TriggerCommand=106,Money=1200..}] run scoreboard players set @s TriggerCommand 0


#Ultra Ball x5
execute as @a[scores={TriggerCommand=107,Money=..5999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=107,Money=..5999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=107,Money=6000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=107,Money=6000..}] run give @s cobblemon:ultra_ball 5
execute as @a[scores={TriggerCommand=107,Money=6000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=107,Money=6000..}] run scoreboard players remove @s Money 6000
execute as @a[scores={TriggerCommand=107,Money=6000..}] run scoreboard players set @s TriggerCommand 0


#Ultra Ball x10
execute as @a[scores={TriggerCommand=108,Money=..11999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=108,Money=..11999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=108,Money=12000..}] run tellraw @s {"text":"You put the items in your inventory. You got an extra Premiere Ball for free!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=108,Money=12000..}] run give @s cobblemon:ultra_ball 10
execute as @a[scores={TriggerCommand=108,Money=12000..}] run give @s cobblemon:premier_ball 1
execute as @a[scores={TriggerCommand=108,Money=12000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=108,Money=12000..}] run scoreboard players remove @s Money 12000
execute as @a[scores={TriggerCommand=108,Money=12000..}] run scoreboard players set @s TriggerCommand 0

#-----------------------------

#Potion x1
execute as @a[scores={TriggerCommand=109,Money=..299}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=109,Money=..299}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=109,Money=300..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=109,Money=300..}] run give @s cobblemon:potion 1
execute as @a[scores={TriggerCommand=109,Money=300..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=109,Money=300..}] run scoreboard players remove @s Money 300
execute as @a[scores={TriggerCommand=109,Money=300..}] run scoreboard players set @s TriggerCommand 0


#Potion x5
execute as @a[scores={TriggerCommand=110,Money=..1499}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=110,Money=..1499}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=110,Money=1500..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=110,Money=1500..}] run give @s cobblemon:potion 5
execute as @a[scores={TriggerCommand=110,Money=1500..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=110,Money=1500..}] run scoreboard players remove @s Money 1500
execute as @a[scores={TriggerCommand=110,Money=1500..}] run scoreboard players set @s TriggerCommand 0

#-----------------------------

#Super Potion x1
execute as @a[scores={TriggerCommand=111,Money=..699}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=111,Money=..699}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=111,Money=700..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=111,Money=700..}] run give @s cobblemon:super_potion 1
execute as @a[scores={TriggerCommand=111,Money=700..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=111,Money=700..}] run scoreboard players remove @s Money 700
execute as @a[scores={TriggerCommand=111,Money=700..}] run scoreboard players set @s TriggerCommand 0


#Super Potion x5
execute as @a[scores={TriggerCommand=112,Money=..1499}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=112,Money=..1499}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=112,Money=3500..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=112,Money=3500..}] run give @s cobblemon:super_potion 5
execute as @a[scores={TriggerCommand=112,Money=3500..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=112,Money=3500..}] run scoreboard players remove @s Money 3500
execute as @a[scores={TriggerCommand=112,Money=3500..}] run scoreboard players set @s TriggerCommand 0

#-----------------------------

#Hyper Potion x1
execute as @a[scores={TriggerCommand=113,Money=..1199}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=113,Money=..1199}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=113,Money=1200..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=113,Money=1200..}] run give @s cobblemon:hyper_potion 1
execute as @a[scores={TriggerCommand=113,Money=1200..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=113,Money=1200..}] run scoreboard players remove @s Money 1200
execute as @a[scores={TriggerCommand=113,Money=1200..}] run scoreboard players set @s TriggerCommand 0


#Hyper Potion x5
execute as @a[scores={TriggerCommand=114,Money=..5999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=114,Money=..5999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=114,Money=6000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=114,Money=6000..}] run give @s cobblemon:hyper_potion 5
execute as @a[scores={TriggerCommand=114,Money=6000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=114,Money=6000..}] run scoreboard players remove @s Money 6000
execute as @a[scores={TriggerCommand=114,Money=6000..}] run scoreboard players set @s TriggerCommand 0

#-----------------------------

#Max Potion x1
execute as @a[scores={TriggerCommand=115,Money=..2499}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=115,Money=..2499}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=115,Money=2500..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=115,Money=2500..}] run give @s cobblemon:max_potion 1
execute as @a[scores={TriggerCommand=115,Money=2500..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=115,Money=2500..}] run scoreboard players remove @s Money 1200
execute as @a[scores={TriggerCommand=115,Money=2500..}] run scoreboard players set @s TriggerCommand 0


#Max Potion x5
execute as @a[scores={TriggerCommand=116,Money=..12499}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=116,Money=..12499}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=116,Money=12500..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=116,Money=12500..}] run give @s cobblemon:max_potion 5
execute as @a[scores={TriggerCommand=116,Money=12500..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=116,Money=12500..}] run scoreboard players remove @s Money 12500
execute as @a[scores={TriggerCommand=116,Money=12500..}] run scoreboard players set @s TriggerCommand 0

#-----------------------------

#Full Restore x1
execute as @a[scores={TriggerCommand=117,Money=..2999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=117,Money=..2999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=117,Money=3000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=117,Money=3000..}] run give @s cobblemon:full_restore 1
execute as @a[scores={TriggerCommand=117,Money=3000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=117,Money=3000..}] run scoreboard players remove @s Money 3000
execute as @a[scores={TriggerCommand=117,Money=3000..}] run scoreboard players set @s TriggerCommand 0


#Full Restore x5
execute as @a[scores={TriggerCommand=118,Money=..14999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=118,Money=..14999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=118,Money=15000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=118,Money=15000..}] run give @s cobblemon:full_restore 5
execute as @a[scores={TriggerCommand=118,Money=15000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=118,Money=15000..}] run scoreboard players remove @s Money 15000
execute as @a[scores={TriggerCommand=118,Money=15000..}] run scoreboard players set @s TriggerCommand 0

#-----------------------------

#Antidote x1
execute as @a[scores={TriggerCommand=119,Money=..99}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=119,Money=..99}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=119,Money=100..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=119,Money=100..}] run give @s cobblemon:antidote 1
execute as @a[scores={TriggerCommand=119,Money=100..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=119,Money=100..}] run scoreboard players remove @s Money 100
execute as @a[scores={TriggerCommand=119,Money=100..}] run scoreboard players set @s TriggerCommand 0


#Antidote x5
execute as @a[scores={TriggerCommand=120,Money=..499}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=120,Money=..499}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=120,Money=500..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=120,Money=500..}] run give @s cobblemon:antidote 5
execute as @a[scores={TriggerCommand=120,Money=500..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=120,Money=500..}] run scoreboard players remove @s Money 500
execute as @a[scores={TriggerCommand=120,Money=500..}] run scoreboard players set @s TriggerCommand 0

#-----------------------------

#Paralyze Heal x1
execute as @a[scores={TriggerCommand=121,Money=..199}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=121,Money=..199}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=121,Money=200..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=121,Money=200..}] run give @s cobblemon:paralyze_heal 1
execute as @a[scores={TriggerCommand=121,Money=200..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=121,Money=200..}] run scoreboard players remove @s Money 200
execute as @a[scores={TriggerCommand=121,Money=200..}] run scoreboard players set @s TriggerCommand 0


#Paralyze Heal x5
execute as @a[scores={TriggerCommand=122,Money=..999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=122,Money=..999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=122,Money=1000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=122,Money=1000..}] run give @s cobblemon:paralyze_heal 5
execute as @a[scores={TriggerCommand=122,Money=1000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=122,Money=1000..}] run scoreboard players remove @s Money 1000
execute as @a[scores={TriggerCommand=122,Money=1000..}] run scoreboard players set @s TriggerCommand 0

#-----------------------------

#Awakening x1
execute as @a[scores={TriggerCommand=123,Money=..99}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=123,Money=..99}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=123,Money=100..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=123,Money=100..}] run give @s cobblemon:awakening 1
execute as @a[scores={TriggerCommand=123,Money=100..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=123,Money=100..}] run scoreboard players remove @s Money 100
execute as @a[scores={TriggerCommand=123,Money=100..}] run scoreboard players set @s TriggerCommand 0


#Awakening x5
execute as @a[scores={TriggerCommand=124,Money=..499}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=124,Money=..499}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=124,Money=500..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=124,Money=500..}] run give @s cobblemon:awakening 5
execute as @a[scores={TriggerCommand=124,Money=500..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=124,Money=500..}] run scoreboard players remove @s Money 500
execute as @a[scores={TriggerCommand=124,Money=500..}] run scoreboard players set @s TriggerCommand 0

#-----------------------------

#Burn Heal x1
execute as @a[scores={TriggerCommand=125,Money=..249}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=125,Money=..249}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=125,Money=250..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=125,Money=250..}] run give @s cobblemon:burn_heal 1
execute as @a[scores={TriggerCommand=125,Money=250..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=125,Money=250..}] run scoreboard players remove @s Money 250
execute as @a[scores={TriggerCommand=125,Money=250..}] run scoreboard players set @s TriggerCommand 0


#Burn Heal x5
execute as @a[scores={TriggerCommand=126,Money=..1249}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=126,Money=..1249}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=126,Money=1250..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=126,Money=1250..}] run give @s cobblemon:burn_heal 5
execute as @a[scores={TriggerCommand=126,Money=1250..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=126,Money=1250..}] run scoreboard players remove @s Money 1250
execute as @a[scores={TriggerCommand=126,Money=1250..}] run scoreboard players set @s TriggerCommand 0

#-----------------------------

#Ice Heal x1
execute as @a[scores={TriggerCommand=127,Money=..249}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=127,Money=..249}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=127,Money=250..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=127,Money=250..}] run give @s cobblemon:ice_heal 1
execute as @a[scores={TriggerCommand=127,Money=250..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=127,Money=250..}] run scoreboard players remove @s Money 250
execute as @a[scores={TriggerCommand=127,Money=250..}] run scoreboard players set @s TriggerCommand 0


#Ice Heal x5
execute as @a[scores={TriggerCommand=128,Money=..1249}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=128,Money=..1249}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=128,Money=1250..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=128,Money=1250..}] run give @s cobblemon:ice_heal 5
execute as @a[scores={TriggerCommand=128,Money=1250..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=128,Money=1250..}] run scoreboard players remove @s Money 1250
execute as @a[scores={TriggerCommand=128,Money=1250..}] run scoreboard players set @s TriggerCommand 0

#-----------------------------

#Escape Rope x1
execute as @a[scores={TriggerCommand=129,Money=..549}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=129,Money=..549}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=129,Money=550..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=129,Money=550..}] run function johto:spawn/escaperope
execute as @a[scores={TriggerCommand=129,Money=550..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=129,Money=550..}] run scoreboard players remove @s Money 550
execute as @a[scores={TriggerCommand=129,Money=550..}] run scoreboard players set @s TriggerCommand 0


#Escape Rope x5
execute as @a[scores={TriggerCommand=130,Money=..2749}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=130,Money=..2749}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=130,Money=2750..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=130,Money=2750..}] run function johto:spawn/escaperope
execute as @a[scores={TriggerCommand=130,Money=2750..}] run function johto:spawn/escaperope
execute as @a[scores={TriggerCommand=130,Money=2750..}] run function johto:spawn/escaperope
execute as @a[scores={TriggerCommand=130,Money=2750..}] run function johto:spawn/escaperope
execute as @a[scores={TriggerCommand=130,Money=2750..}] run function johto:spawn/escaperope
execute as @a[scores={TriggerCommand=130,Money=2750..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=130,Money=2750..}] run scoreboard players remove @s Money 2750
execute as @a[scores={TriggerCommand=130,Money=2750..}] run scoreboard players set @s TriggerCommand 0


















#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#If score is left behind, not to be used for longer store of data.
scoreboard players set @s TriggerCommand 0




#




#
