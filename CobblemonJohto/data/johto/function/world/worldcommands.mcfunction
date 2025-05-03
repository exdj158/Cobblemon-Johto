#Runs cobblemon replacement blocks
function johto:world/cobblemonblocks

#Auto reloads the server if function fails to load (should thus fix itself by reloading)
tag @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] remove ReloadCheck
function johto:triggers/autoreload
execute if entity @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=!ReloadCheck] run reload

#Aligns and gets rid of nametag
execute as @e[type=cobblemon:npc,nbt={PersistenceRequired:0b}] run data merge entity @s {Rotation:[180f,0.0f],PersistenceRequired:1b,HideNPCNameTag:1b}

#Runs custom clickable loots
execute as @a[tag=ItemLoot] run function johto:triggers/itemlootgive

#Runs TriggerCommand Function
execute as @a[scores={TriggerCommand=1..}] run function johto:triggers/triggercommands

#Gives you starting items and commands
execute as @a[tag=!InitialTags] run function johto:triggers/startercommands

#Runs story roadblocks for story checks
execute as @a run function johto:world/roadblocks

#Removes Cooldown score if present
scoreboard players remove @a[scores={Cooldown=1..}] Cooldown 1

#Runs gym leader rematches
#Gym Leader Rematches
execute as @p[x=-2781,y=64,z=421,distance=..100,tag=AllGyms] unless entity @a[x=-2794,y=63,z=410,dx=26,dy=5,dz=15] run function johto:world/gymrematches/trainers

#tps leaders out if no player nearby can battle them
execute as @p[x=-2781,y=64,z=421,distance=..100,tag=!AllGyms] unless entity @a[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,scores={BattleStart=1..}] if entity @e[x=-2781,y=63,z=421,dy=3,type=cobblemon:npc] run particle cloud -2781 64 421 1 1 1 0.15 100
execute as @p[x=-2781,y=64,z=421,distance=..100,tag=!AllGyms] unless entity @a[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,scores={BattleStart=1..}] run tp @e[x=-2781,y=63,z=421,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000

#---------------------
#Runs infolist command for non-ops
scoreboard players enable @a Info
scoreboard players enable @a info
execute as @a[scores={Info=1..}] run function tools:infolist
execute as @a[scores={info=1..}] run function tools:infolist

#-------------------------------------------------------------------------------------------------------------------------
#Time-based commands

#Runs daily commands, sets time to armor stand based on game time
execute store result score @e[x=-799,y=64,z=-284,dy=3,type=armor_stand] DayTime run time query daytime
execute if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={DayTime=18000..},tag=!DailyExecuted] run function johto:triggers/dailycommands
execute if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={DayTime=18000..},tag=!DailyExecuted] run tag @e[x=-799,y=64,z=-284,dy=3,type=armor_stand] add DailyExecuted
tag @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={DayTime=..1000},tag=DailyExecuted] remove DailyExecuted


#-------------------------------------------------------------------------------------------------------------------------
#Runs HMs/Important Items

#Fly Map Refresh
execute as @a[x=1169,y=252,z=619,distance=..40] run function johto:hms/flymap

#HM Fly
execute as @a[scores={click=1..},nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"HM02: Fly"}],"text":""}'}}}] run scoreboard players set @s Fly 1
execute as @a[scores={click=1..},nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"HM02: Fly"}],"text":""}'}}}] run function johto:hms/fly
execute as @a[scores={click=1..},nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"HM02: Fly"}],"text":""}'}}}] run scoreboard players set @s click 0


#HM Flash
execute as @a[scores={click=1..},nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"HM05: Flash"}],"text":""}'}}}] run tellraw @s {"text":"You used Flash!","italic":true,"color":"gray"}
execute as @a[scores={click=1..},nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"HM05: Flash"}],"text":""}'}}}] run effect give @s minecraft:night_vision 900 1 true
execute as @a[scores={click=1..},nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"HM05: Flash"}],"text":""}'}}}] run playsound minecraft:entity.firework_rocket.launch ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={click=1..},nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"HM05: Flash"}],"text":""}'}}}] run scoreboard players set @s click 0


#HM Surf giving faster swimming and water breathing
execute as @a[tag=Surf] at @s if block ~ ~ ~ minecraft:water run effect give @s minecraft:water_breathing 10 255 true
execute as @a[tag=Surf] at @s if block ~ ~ ~ minecraft:water run effect give @s minecraft:dolphins_grace 10 2 true


#Town Map
team leave @a[team=black]
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Town Map"}],"text":""}'}}}] run function johto:world/townmap
execute as @a[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Town Map"}],"text":""}'}}]}] run function johto:world/townmap


#MusicTitles function, tracks player around map checking for new areas or music
execute as @a[scores={TalkTime=0}] run function johto:world/musictitles


#Runs relog function if player is found with relog score
execute as @a[scores={relog=1..}] run function johto:triggers/relog

#Escape Ropes
execute as @a[scores={EscapeRopeUse=1..}] run function johto:world/escaperope

#Running Shoes Effects
execute as @a[nbt={Inventory:[{Slot:100b,id:"minecraft:golden_boots"}]}] run effect give @s minecraft:speed 30 2 true
execute as @a unless entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:golden_boots"}]}] run effect clear @s minecraft:speed

#-------------------------------------------------------------------------------------------------------------------------
#Music-based commands


#Music rate: 86 ticks per 60 seconds

#Runs the click trigger if player uses Carrot on a Stick
execute as @a[scores={click=1..},tag=TempDelay,nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Radio"}],"text":""}'}}}] run function johto:triggers/click
tag @a[scores={click=1..},tag=!TempDelay,nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Radio"}],"text":""}'}}}] add TempDelay



#Runs battle music and post-battle events
#Battle endings
execute as @a[scores={BattleEnd=1..}] run function johto:triggers/battles/battleend


#Battle start and music
execute as @a[scores={BattleStart=1..,MusicCooldown=0},tag=BattleMusicCooldown] run tag @s remove BattleMusicCooldown
execute as @a[scores={BattleStart=1..},tag=!BattleMusicCooldown] run function johto:triggers/battles/battlestart





#Primary radio (off-hand and slot 2)
#Slot 2
execute as @a[tag=!RadioOff,scores={MusicCooldown=0},nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Radio"}],"text":""}'}}]}] run function johto:world/radio

#Offhand
execute as @a[tag=!RadioOff,scores={MusicCooldown=0},nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Radio"}],"text":""}'}}]}] run function johto:world/radio

#Radio Stations
execute as @a[tag=!RadioOff,scores={MusicCooldown=0},nbt={Inventory:[{Slot:2b,components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Radio"}],"text":""}'}}]}] run function johto:world/radiostations
execute as @a[tag=!RadioOff,scores={MusicCooldown=0},nbt={Inventory:[{Slot:3b,components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Radio"}],"text":""}'}}]}] run function johto:world/radiostations
execute as @a[tag=!RadioOff,scores={MusicCooldown=0},nbt={Inventory:[{Slot:4b,components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Radio"}],"text":""}'}}]}] run function johto:world/radiostations
execute as @a[tag=!RadioOff,scores={MusicCooldown=0},nbt={Inventory:[{Slot:5b,components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Radio"}],"text":""}'}}]}] run function johto:world/radiostations
execute as @a[tag=!RadioOff,scores={MusicCooldown=0},nbt={Inventory:[{Slot:6b,components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Radio"}],"text":""}'}}]}] run function johto:world/radiostations
execute as @a[tag=!RadioOff,scores={MusicCooldown=0},nbt={Inventory:[{Slot:7b,components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Radio"}],"text":""}'}}]}] run function johto:world/radiostations



#Removes a MusicCooldown score each refresh if present
scoreboard players remove @a[scores={MusicCooldown=1..}] MusicCooldown 1

#-------------------------------------------------------------------------------------------------------------------------
#Unlocks Fly spots by visiting respective Pokemon Centers, sets spawnpoint if player dies

#Elm's Lab
scoreboard players set @a[x=-679,y=64,z=-480,distance=..10] Whiteout 0

scoreboard players set @a[x=-256,y=64,z=-489,distance=..5,scores={FlyCherrygrove=0}] FlyCherrygrove 1
scoreboard players set @a[x=-256,y=64,z=-489,distance=..5] Whiteout 1
spawnpoint @a[x=-256,y=64,z=-489,distance=..5] -256 64 -489

scoreboard players set @a[x=15,y=64,z=-106,distance=..5,scores={FlyViolet=0}] FlyViolet 1
scoreboard players set @a[x=15,y=64,z=-106,distance=..5] Whiteout 2
spawnpoint @a[x=15,y=64,z=-109,distance=..5] 15 64 -109

scoreboard players set @a[x=330,y=64,z=-728,distance=..5,scores={FlyAzalea=0}] FlyAzalea 1
scoreboard players set @a[x=330,y=64,z=-728,distance=..5] Whiteout 3
spawnpoint @a[x=330,y=64,z=-728,distance=..5] 330 64 -728

scoreboard players set @a[x=499,y=64,z=-424,distance=..5,scores={FlyGoldenrod=0}] FlyGoldenrod 1
scoreboard players set @a[x=499,y=64,z=-424,distance=..5] Whiteout 4
spawnpoint @a[x=499,y=64,z=-424,distance=..5] 499 64 -424

scoreboard players set @a[x=341,y=64,z=186,distance=..5,scores={FlyEcruteak=0}] FlyEcruteak 1
scoreboard players set @a[x=341,y=64,z=186,distance=..5] Whiteout 5
spawnpoint @a[x=341,y=64,z=183,distance=..5] 341 64 183

scoreboard players set @a[x=791,y=65,z=-40,distance=..5,scores={FlyOlivine=0}] FlyOlivine 1
scoreboard players set @a[x=791,y=65,z=-40,distance=..5] Whiteout 6
spawnpoint @a[x=791,y=64,z=-41,distance=..5] 791 64 -41

scoreboard players set @a[x=1186,y=65,z=-468,distance=..5,scores={FlyCianwood=0}] FlyCianwood 1
scoreboard players set @a[x=1186,y=65,z=-468,distance=..5] Whiteout 7
spawnpoint @a[x=1186,y=64,z=-469,distance=..5] 1186 64 -469

scoreboard players set @a[x=1617,y=88,z=-158,distance=..5,scores={FlySafari=0}] FlySafari 1
scoreboard players set @a[x=1617,y=88,z=-158,distance=..5] Whiteout 8
spawnpoint @a[x=1617,y=88,z=-160,distance=..5] 1617 88 -160

scoreboard players set @a[x=-177,y=64,z=162,distance=..5,scores={FlyMahogany=0}] FlyMahogany 1
scoreboard players set @a[x=-177,y=64,z=162,distance=..5] Whiteout 9
spawnpoint @a[x=-177,y=64,z=160,distance=..5] -177 64 160

scoreboard players set @a[x=-154,y=63,z=533,dx=22,dy=5,dz=5,scores={FlyLake=0}] FlyLake 1

scoreboard players set @a[x=-663,y=64,z=174,distance=..5,scores={FlyBlackthorn=0}] FlyBlackthorn 1
scoreboard players set @a[x=-663,y=64,z=174,distance=..5] Whiteout 10
spawnpoint @a[x=-663,y=64,z=171,distance=..5] -663 64 171

scoreboard players set @a[x=-999,y=64,z=64,distance=..5,scores={FlySilver=0}] FlySilver 1
scoreboard players set @a[x=-999,y=64,z=64,distance=..5] Whiteout 11
spawnpoint @a[x=-999,y=64,z=62,distance=..5] -999 64 62

scoreboard players set @a[x=-1258,y=64,z=15,distance=..5,scores={FlyVictory=0}] FlyVictory 1

scoreboard players set @a[x=-1292,y=84,z=322,distance=..5,scores={FlyVictory=0}] FlyIndigo 1
scoreboard players set @a[x=-1292,y=84,z=322,distance=..5] Whiteout 12
spawnpoint @a[x=-1292,y=84,z=322,distance=..5] -1292 84 322

scoreboard players set @a[x=-1704,y=64,z=-899,distance=..5,scores={FlyCinnabar=0}] FlyCinnabar 1
scoreboard players set @a[x=-1704,y=64,z=-899,distance=..5] Whiteout 13
spawnpoint @a[x=-1704,y=64,z=-899,distance=..5] -1704 64 -899

scoreboard players set @a[x=-1715,y=64,z=-321,distance=..15,scores={FlyPallet=0}] FlyPallet 1
scoreboard players set @a[x=-1715,y=64,z=-321,distance=..15] Whiteout 14
spawnpoint @a[x=-1715,y=64,z=-321,distance=..15] -1715 64 -321

scoreboard players set @a[x=-1701,y=64,z=7,distance=..5,scores={FlyViridian=0}] FlyViridian 1
scoreboard players set @a[x=-1701,y=64,z=7,distance=..5] Whiteout 15
spawnpoint @a[x=-1701,y=64,z=7,distance=..5] -1701 64 7

scoreboard players set @a[x=-1660,y=64,z=602,distance=..5,scores={FlyPewter=0}] FlyPewter 1
scoreboard players set @a[x=-1660,y=64,z=602,distance=..5] Whiteout 16
spawnpoint @a[x=-1660,y=64,z=602,distance=..5] -1660 64 602

scoreboard players set @a[x=-2165,y=64,z=749,distance=..5] Whiteout 17
spawnpoint @a[x=-2165,y=64,z=749,distance=..5] -2165 64 749

scoreboard players set @a[x=-2744,y=64,z=728,distance=..5,scores={FlyCerulean=0}] FlyCerulean 1
scoreboard players set @a[x=-2744,y=64,z=728,distance=..5] Whiteout 18
spawnpoint @a[x=-2744,y=64,z=728,distance=..5] -2744 64 728

scoreboard players set @a[x=-2405,y=64,z=-606,distance=..5,scores={FlyFuchsia=0}] FlyFuchsia 1
scoreboard players set @a[x=-2405,y=64,z=-606,distance=..5] Whiteout 19
spawnpoint @a[x=-2405,y=64,z=-608,distance=..5] -2405 64 -608

scoreboard players set @a[x=-2714,y=64,z=8,distance=..5,scores={FlyVermilion=0}] FlyVermilion 1
scoreboard players set @a[x=-2714,y=64,z=8,distance=..5] Whiteout 20
spawnpoint @a[x=-2714,y=64,z=8,distance=..5] -2714 64 8

scoreboard players set @a[x=-2704,y=64,z=279,distance=..5,scores={FlySaffron=0}] FlySaffron 1
scoreboard players set @a[x=-2704,y=64,z=279,distance=..5] Whiteout 21
spawnpoint @a[x=-2704,y=64,z=279,distance=..5] -2704 64 279

scoreboard players set @a[x=-2460,y=64,z=375,distance=..5,scores={FlyCeladon=0}] FlyCeladon 1
scoreboard players set @a[x=-2460,y=64,z=375,distance=..5] Whiteout 22
spawnpoint @a[x=-2460,y=64,z=375,distance=..5] -2460 64 375

scoreboard players set @a[x=-3253,y=64,z=357,distance=..5,scores={FlyLavender=0}] FlyLavender 1
scoreboard players set @a[x=-3253,y=64,z=357,distance=..5] Whiteout 23
spawnpoint @a[x=-3253,y=64,z=356,distance=..5] -3253 64 356

scoreboard players set @a[x=-3287,y=64,z=675,distance=..5] Whiteout 24
spawnpoint @a[x=-3287,y=64,z=675,distance=..5] -3287 64 675

#Route 32
scoreboard players set @a[x=127,y=64,z=-582,distance=..5] Whiteout 25
spawnpoint @a[x=127,y=64,z=-582,distance=..5] 127 64 -582



#Runs Whiteout function

#Battle tower, ends a player's streak if they lose.
execute as @a[x=858,y=75,z=-15,dx=102,dy=100,dz=143,tag=Whiteout] run tp @e[x=908,y=100,z=67,distance=..4,type=cobblemon:pokemon] 10000000 -50000 -10000000
execute as @a[x=858,y=75,z=-15,dx=102,dy=100,dz=143,tag=Whiteout] run scoreboard players set @s BattleStreak 0
execute as @a[x=858,y=75,z=-15,dx=102,dy=100,dz=143,tag=Whiteout] run scoreboard players set @s TriggerCommand 1
execute as @a[x=858,y=75,z=-15,dx=102,dy=100,dz=143,tag=Whiteout] run pokeheal

#Removes tag if Whiteout is disabled via lobby rule
execute if entity @e[x=-792,y=65,z=-284,dy=3,tag=WhiteoutDisable] run tag @a[tag=Whiteout] remove Whiteout

execute as @a[tag=Whiteout] run function johto:triggers/whiteout

#-------------------------------------------------------------------------------------------------------------------------
#Dialogues function

#Runs dialogue triggers to set scores or to open Cobble dialogues
execute as @a[tag=!InDialogue] run function johto:dialogue/dialoguetriggers

#Runs primary dialogue functions
execute as @a[scores={DialogueTrigger=1..500}] run function johto:dialogue/dialogue



#-------------------------------------------------------------------------------------------------------------------------
#Misc World Events 

#Runs Game Corner slot machines if buttons pressed
execute if block 516 66 -377 stone_button[powered=true] if entity @e[x=507,y=59,z=-370,dy=3,scores={rng=0}] run execute as @p[x=518,y=64,z=-377,distance=..2] run function johto:triggers/gamecorner
execute if block 516 66 -381 stone_button[powered=true] if entity @e[x=505,y=59,z=-370,dy=3,scores={rng=0}] run execute as @p[x=518,y=64,z=-381,distance=..2] run function johto:triggers/gamecorner
execute if block 513 66 -377 stone_button[powered=true] if entity @e[x=503,y=59,z=-370,dy=3,scores={rng=0}] run execute as @p[x=511,y=64,z=-377,distance=..2] run function johto:triggers/gamecorner
execute if block 513 66 -381 stone_button[powered=true] if entity @e[x=501,y=59,z=-370,dy=3,scores={rng=0}] run execute as @p[x=511,y=64,z=-381,distance=..2] run function johto:triggers/gamecorner
execute if block 507 66 -377 stone_button[powered=true] if entity @e[x=499,y=59,z=-370,dy=3,scores={rng=0}] run execute as @p[x=509,y=64,z=-377,distance=..2] run function johto:triggers/gamecorner
execute if block 507 66 -381 stone_button[powered=true] if entity @e[x=497,y=59,z=-370,dy=3,scores={rng=0}] run execute as @p[x=509,y=64,z=-381,distance=..2] run function johto:triggers/gamecorner
execute if block 504 66 -377 stone_button[powered=true] if entity @e[x=495,y=59,z=-370,dy=3,scores={rng=0}] run execute as @p[x=502,y=64,z=-377,distance=..2] run function johto:triggers/gamecorner
execute if block 504 66 -381 stone_button[powered=true] if entity @e[x=493,y=59,z=-370,dy=3,scores={rng=0}] run execute as @p[x=502,y=64,z=-381,distance=..2] run function johto:triggers/gamecorner
execute if block 498 66 -377 stone_button[powered=true] if entity @e[x=491,y=59,z=-370,dy=3,scores={rng=0}] run execute as @p[x=500,y=64,z=-377,distance=..2] run function johto:triggers/gamecorner
execute if block 498 66 -381 stone_button[powered=true] if entity @e[x=489,y=59,z=-370,dy=3,scores={rng=0}] run execute as @p[x=500,y=64,z=-381,distance=..2] run function johto:triggers/gamecorner
execute if block 495 66 -377 stone_button[powered=true] if entity @e[x=487,y=59,z=-370,dy=3,scores={rng=0}] run execute as @p[x=493,y=64,z=-377,distance=..2] run function johto:triggers/gamecorner
execute if block 495 66 -381 stone_button[powered=true] if entity @e[x=485,y=59,z=-370,dy=3,scores={rng=0}] run execute as @p[x=493,y=64,z=-381,distance=..2] run function johto:triggers/gamecorner


#Runs Ruins of Alph puzzle if player is in the ruins
execute if entity @e[x=-867,y=69,z=-214,dy=3,dz=4,tag=!UnownSpawning,limit=1] if entity @a[x=174,y=36,z=-163,dx=42,dy=22,dz=85] run function johto:world/ruinspuzzle

#Safari Zone Mapping Function
execute as @a[x=1590,y=74,z=-129,dx=10,dy=5,dz=10] run function johto:world/safariselect

#Runs Pre-Victory Road badge lights
execute as @a[x=-1262,y=63,z=57,dx=7,dy=5,dz=73] run function johto:world/badgegate

#Saffron Gym portals
execute as @a[x=-1222,y=0,z=500,dx=470,dy=240,dz=342] run function johto:world/saffrongym

#Tin Tower portals
execute as @a[x=240,y=63,z=297,dx=33,dy=240,dz=33] run function johto:world/tintower

#Bill's Grandfather giving out stones
execute as @a[x=-3072,y=63,z=1005,dx=21,dy=5,dz=12,tag=Dialogue195] run function johto:triggers/billshouse

#Tin Tower
execute as @a[x=240,y=63,z=297,dx=33,dy=240,dz=33] run function johto:world/tintower

#Runs Goldenrod Department Center Elevator
execute if entity @a[x=438,y=63,z=-395,dx=3,dy=34,dz=3] run function johto:world/departmentelevator


#-------------------------------------------------------------------------------------------------------------------------
#Road Blocks & World Blocks

#Ecruteak City Gym teleport from falling
playsound flee ambient @a[x=-1075,y=0,z=550,dx=31,dy=62,dz=51] ~ ~ ~ 1000 1 1
execute at @a[x=-1075,y=0,z=550,dx=31,dy=62,dz=51] run tp @a[x=-1075,y=0,z=550,dx=31,dy=62,dz=51] -1059 65 543 0 10
effect give @e[x=-1091,y=0,z=522,dx=63,dy=63,dz=105,type=cobblemon:pokemon] minecraft:levitation 1 1 true
execute at @e[x=-1091,y=0,z=522,dx=63,dy=63,dz=105,type=item] run tp @e[x=-1091,y=0,z=522,dx=63,dy=63,dz=105,type=item] -1059 65 538


#Tps player from Rematched Hall of Fame to real Hall of Fame room
execute at @a[x=-1354,y=77,z=751,dx=24,dy=10,dz=34] run clone -730 64 -328 -726 68 -328 -1343 78 750
execute at @a[x=-1354,y=77,z=751,dx=24,dy=10,dz=34] run tp @a[x=-1354,y=77,z=751,dx=24,dy=10,dz=34] ~53 ~ ~






#

