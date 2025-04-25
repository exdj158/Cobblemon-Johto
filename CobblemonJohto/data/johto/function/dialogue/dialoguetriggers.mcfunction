#Runs specific conditions for player to open a dialogue screen
#Auto does not run function when player is in a text box, tag removed when player leaves text boxes

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#To prevent this command from running and resetting dialogues each refresh, add these lines at the start of an npc json
#    "initializationAction": ["q.run_command('tag @p add InDialogue');"],

#and remove with quitting the the dialogue box
#   "q.run_command('tag @p remove InDialogue');",


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


#Mom first walking downstairs
execute as @s[x=-736,y=64,z=-491,dx=10,dy=3,dz=6,tag=!Dialogue2] run opendialogue mom_dialogue2 @s

#Elm's Lab
execute as @s[x=-683,y=63,z=-478,distance=..10,tag=!Dialogue3] run opendialogue professorelm_dialogue3 @s

#-----------------

#Dialogue 3 - Elm's Lab after picking a starter
#Scans player's party for which one they picked
scoreboard players set @s[x=-683,y=63,z=-478,distance=..10] PokeHave 0
tag @s[x=-683,y=63,z=-478,distance=..10] remove FireHave
tag @s[x=-683,y=63,z=-478,distance=..10] remove GrassHave
tag @s[x=-683,y=63,z=-478,distance=..10] remove WaterHave

execute as @s[x=-683,y=63,z=-478,distance=..10,scores={StarterPick=0}] store result score @s PokeHave run testpartyslot @s 1 Bulbasaur
tag @s[scores={PokeHave=1..}] add GrassHave
execute as @s[x=-683,y=63,z=-478,distance=..10,scores={StarterPick=0}] store result score @s PokeHave run testpartyslot @s 1 Chikorita
tag @s[scores={PokeHave=1..}] add GrassHave
execute as @s[x=-683,y=63,z=-478,distance=..10,scores={StarterPick=0}] store result score @s PokeHave run testpartyslot @s 1 Treecko
tag @s[scores={PokeHave=1..}] add GrassHave
execute as @s[x=-683,y=63,z=-478,distance=..10,scores={StarterPick=0}] store result score @s PokeHave run testpartyslot @s 1 Turtwig
tag @s[scores={PokeHave=1..}] add GrassHave
execute as @s[x=-683,y=63,z=-478,distance=..10,scores={StarterPick=0}] store result score @s PokeHave run testpartyslot @s 1 Snivy
tag @s[scores={PokeHave=1..}] add GrassHave
execute as @s[x=-683,y=63,z=-478,distance=..10,scores={StarterPick=0}] store result score @s PokeHave run testpartyslot @s 1 Chespin
tag @s[scores={PokeHave=1..}] add GrassHave
execute as @s[x=-683,y=63,z=-478,distance=..10,scores={StarterPick=0}] store result score @s PokeHave run testpartyslot @s 1 Rowlet
tag @s[scores={PokeHave=1..}] add GrassHave
execute as @s[x=-683,y=63,z=-478,distance=..10,scores={StarterPick=0}] store result score @s PokeHave run testpartyslot @s 1 Grookey
tag @s[scores={PokeHave=1..}] add GrassHave
execute as @s[x=-683,y=63,z=-478,distance=..10,scores={StarterPick=0}] store result score @s PokeHave run testpartyslot @s 1 Sprigatito
tag @s[scores={PokeHave=1..}] add GrassHave

execute as @s[x=-683,y=63,z=-478,distance=..10,scores={StarterPick=0}] store result score @s PokeHave run testpartyslot @s 1 Charmander
tag @s[scores={PokeHave=1..}] add FireHave
execute as @s[x=-683,y=63,z=-478,distance=..10,scores={StarterPick=0}] store result score @s PokeHave run testpartyslot @s 1 Cyndaquil
tag @s[scores={PokeHave=1..}] add FireHave
execute as @s[x=-683,y=63,z=-478,distance=..10,scores={StarterPick=0}] store result score @s PokeHave run testpartyslot @s 1 Torchic
tag @s[scores={PokeHave=1..}] add FireHave
execute as @s[x=-683,y=63,z=-478,distance=..10,scores={StarterPick=0}] store result score @s PokeHave run testpartyslot @s 1 Chimchar
tag @s[scores={PokeHave=1..}] add FireHave
execute as @s[x=-683,y=63,z=-478,distance=..10,scores={StarterPick=0}] store result score @s PokeHave run testpartyslot @s 1 Tepig
tag @s[scores={PokeHave=1..}] add FireHave
execute as @s[x=-683,y=63,z=-478,distance=..10,scores={StarterPick=0}] store result score @s PokeHave run testpartyslot @s 1 Fennekin
tag @s[scores={PokeHave=1..}] add FireHave
execute as @s[x=-683,y=63,z=-478,distance=..10,scores={StarterPick=0}] store result score @s PokeHave run testpartyslot @s 1 Litten
tag @s[scores={PokeHave=1..}] add FireHave
execute as @s[x=-683,y=63,z=-478,distance=..10,scores={StarterPick=0}] store result score @s PokeHave run testpartyslot @s 1 Scorbunny
tag @s[scores={PokeHave=1..}] add FireHave
execute as @s[x=-683,y=63,z=-478,distance=..10,scores={StarterPick=0}] store result score @s PokeHave run testpartyslot @s 1 Fuecoco
tag @s[scores={PokeHave=1..}] add FireHave

execute as @s[x=-683,y=63,z=-478,distance=..10,scores={StarterPick=0}] store result score @s PokeHave run testpartyslot @s 1 Squirtle
tag @s[scores={PokeHave=1..}] add WaterHave
execute as @s[x=-683,y=63,z=-478,distance=..10,scores={StarterPick=0}] store result score @s PokeHave run testpartyslot @s 1 Totodile
tag @s[scores={PokeHave=1..}] add WaterHave
execute as @s[x=-683,y=63,z=-478,distance=..10,scores={StarterPick=0}] store result score @s PokeHave run testpartyslot @s 1 Mudkip
tag @s[scores={PokeHave=1..}] add WaterHave
execute as @s[x=-683,y=63,z=-478,distance=..10,scores={StarterPick=0}] store result score @s PokeHave run testpartyslot @s 1 Piplup
tag @s[scores={PokeHave=1..}] add WaterHave
execute as @s[x=-683,y=63,z=-478,distance=..10,scores={StarterPick=0}] store result score @s PokeHave run testpartyslot @s 1 Oshawott
tag @s[scores={PokeHave=1..}] add WaterHave
execute as @s[x=-683,y=63,z=-478,distance=..10,scores={StarterPick=0}] store result score @s PokeHave run testpartyslot @s 1 Froakie
tag @s[scores={PokeHave=1..}] add WaterHave
execute as @s[x=-683,y=63,z=-478,distance=..10,scores={StarterPick=0}] store result score @s PokeHave run testpartyslot @s 1 Popplio
tag @s[scores={PokeHave=1..}] add WaterHave
execute as @s[x=-683,y=63,z=-478,distance=..10,scores={StarterPick=0}] store result score @s PokeHave run testpartyslot @s 1 Sobble
tag @s[scores={PokeHave=1..}] add WaterHave
execute as @s[x=-683,y=63,z=-478,distance=..10,scores={StarterPick=0}] store result score @s PokeHave run testpartyslot @s 1 Quaxly
tag @s[scores={PokeHave=1..}] add WaterHave

execute as @s[x=-683,y=63,z=-478,distance=..10,tag=GrassHave] run scoreboard players set @s StarterPick 1
execute as @s[x=-683,y=63,z=-478,distance=..10,tag=FireHave] run scoreboard players set @s StarterPick 2
execute as @s[x=-683,y=63,z=-478,distance=..10,tag=WaterHave] run scoreboard players set @s StarterPick 3

execute as @s[x=-683,y=63,z=-478,distance=..10,scores={StarterPick=1..},tag=Dialogue3,tag=!Dialogue4] run opendialogue professorelm_dialogue4 @s

#-----------------
#Spawns Silver outside of Elm's Lab
execute as @p[x=-665,y=64,z=-493,distance=..50,tag=!Dialogue6] unless entity @e[x=-665,y=63,z=-493,dy=2,type=cobblemon:npc] run npcspawnat -665 64 -493 newbark_silver 1
execute as @p[x=-665,y=64,z=-493,distance=50..100,tag=Dialogue6] run tp @e[x=-665,y=63,z=-493,dy=2,type=cobblemon:npc] 10000000 -50000 -10000000

#Dialogue 5 - Mr. Pokemon and Oak
execute as @s[x=-255,y=63,z=-198,dx=20,dy=5,dz=8,tag=!Dialogue5] run opendialogue mrpokemon_dialogue5 @s

#Dialogue 6 & 7, Silver Cherrygrove battle
#execute as @a[x=-300,y=64,z=-509,distance=0..5,tag=Dialogue5,tag=!Dialogue6] run opendialogue cherrygrove_silver_interaction @s
execute as @s[x=-279,y=64,z=-509,distance=0..10,tag=!Dialogue7,scores={StarterPick=1..}] unless entity @e[x=-300,y=64,z=-509,dy=3,type=cobblemon:npc] run particle cloud -300 64 -509 1 1 1 1 50
execute as @s[x=-279,y=64,z=-509,distance=0..10,tag=!Dialogue7,scores={StarterPick=1}] unless entity @e[x=-300,y=64,z=-509,dy=3,type=cobblemon:npc] run npcspawnat -300 64 -509 cherrygrove_silver1 1
execute as @s[x=-279,y=64,z=-509,distance=0..10,tag=!Dialogue7,scores={StarterPick=2}] unless entity @e[x=-300,y=64,z=-509,dy=3,type=cobblemon:npc] run npcspawnat -300 64 -509 cherrygrove_silver2 1
execute as @s[x=-279,y=64,z=-509,distance=0..10,tag=!Dialogue7,scores={StarterPick=3}] unless entity @e[x=-300,y=64,z=-509,dy=3,type=cobblemon:npc] run npcspawnat -300 64 -509 cherrygrove_silver3 1

#Dialogue 8 - Elm's Lab stolen Pokemon
execute as @s[x=-681,y=64,z=-493,distance=..10,tag=!Dialogue8] unless entity @e[x=-682,y=64,z=-481,dy=3,type=cobblemon:npc] run npcspawnat -682 64 -481 newbark_policeman 1
execute as @s[x=-683,y=63,z=-478,distance=..10,tag=Dialogue5,tag=!Dialogue8] run opendialogue elmslab_dialogue8 @s

#Dialogue 9 - Sprout Tower Silver
execute as @s[x=57,y=104,z=13,distance=..10,tag=!Dialogue9] unless entity @e[x=57,y=103,z=29,dy=3,type=cobblemon:npc] run npcspawnat 57 104 29 sprouttower_silver 1
execute as @s[x=54,y=103,z=22,dx=12,dy=5,dz=10,tag=!Dialogue9] run opendialogue sprouttower_silver_dialogue9 @s 

#Dialogue 13 - Elm's Aide giving Togepi
execute as @s[x=15,y=64,z=-111,distance=..15,tag=Falkner,tag=!Dialogue13] unless entity @e[x=11,y=64,z=-100,dy=3,type=cobblemon:npc] run npcspawnat 11 64 -100 violet_elmsaide 1

#Rocket guarding Slowpoke Well until Kurt runs in
execute as @s[x=244,y=56,z=-714,distance=0..25,tag=!Dialogue14] unless entity @e[x=247,y=54,z=-714,dy=3,type=cobblemon:npc] run npcspawnat 247 54 -714 slowpokewell_rocketexterior 1
execute as @s[x=244,y=56,z=-714,distance=0..25,tag=Dialogue14] run tp @e[x=247,y=54,z=-714,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000

#Dialogue 14 - Kurt first hearing of Team Rocket
execute as @s[x=371,y=64,z=-698,distance=..4,tag=!Dialogue14] run opendialogue kurt_dialogue14 @s 

#Makes Kurt invisible if player is between quests
execute as @s[x=371,y=64,z=-698,distance=..4,tag=Dialogue14,tag=!Dialogue16] run effect give @e[x=371,y=64,z=-698,dy=4,type=cobblemon:npc] minecraft:invisibility 10 1 true

#Dialogue 15 - Kurt in the well
execute as @s[x=244,y=39,z=-708,distance=..10,tag=Dialogue14,tag=!Dialogue15] unless entity @e[x=244,y=39,z=-708,dy=3,type=cobblemon:npc] run npcspawnat 244 39 -708 slowpokewell_kurt 1
execute as @s[x=244,y=39,z=-708,distance=..7,tag=Dialogue14,tag=!Dialogue15] run opendialogue kurt_dialogue15 @s 

#Summons the Rocket Grunts in the well
execute as @s[x=244,y=39,z=-708,distance=..10,tag=Dialogue15,tag=!Dialogue16] unless entity @e[x=251,y=39,z=-691,dy=3,type=cobblemon:npc] run npcspawnat 251 39 -691 rocketgrunt1 1
execute as @s[x=244,y=39,z=-708,distance=..10,tag=Dialogue15,tag=!Dialogue16] unless entity @e[x=262,y=43,z=-671,dy=3,type=cobblemon:npc] run npcspawnat 262 43 -671 rocketgrunt2 1
execute as @s[x=244,y=39,z=-708,distance=..10,tag=Dialogue15,tag=!Dialogue16] unless entity @e[x=291,y=39,z=-679,dy=3,type=cobblemon:npc] run npcspawnat 291 39 -679 rocketgrunt3 1
execute as @s[x=244,y=39,z=-708,distance=..10,tag=Dialogue15,tag=!Dialogue16] unless entity @e[x=289,y=39,z=-661,dy=3,type=cobblemon:npc] run npcspawnat 289 39 -661 rocketproton1 1

#Azalea Silver Spawn
execute as @s[x=402,y=64,z=-734,distance=..15,tag=Bugsy,tag=Dialogue16,tag=!Dialogue20,scores={StarterPick=1..}] unless entity @e[x=402,y=64,z=-734,dy=3,type=cobblemon:npc] run particle cloud 402 64 -734 1 1 1 1 100
execute as @s[x=402,y=64,z=-734,distance=..15,tag=Bugsy,tag=Dialogue16,tag=!Dialogue20,scores={StarterPick=1}] unless entity @e[x=402,y=64,z=-734,dy=3,type=cobblemon:npc] run npcspawnat 402 64 -734 azalea_silver1 1
execute as @s[x=402,y=64,z=-734,distance=..15,tag=Bugsy,tag=Dialogue16,tag=!Dialogue20,scores={StarterPick=2}] unless entity @e[x=402,y=64,z=-734,dy=3,type=cobblemon:npc] run npcspawnat 402 64 -734 azalea_silver2 1
execute as @s[x=402,y=64,z=-734,distance=..15,tag=Bugsy,tag=Dialogue16,tag=!Dialogue20,scores={StarterPick=3}] unless entity @e[x=402,y=64,z=-734,dy=3,type=cobblemon:npc] run npcspawnat 402 64 -734 azalea_silver3 1

#Ilex Forest


#Goldenrod City

#Shop lady giving out squirt bottle after Whitney
execute as @s[x=421,y=64,z=-300,distance=..4,tag=Whitney,tag=!Dialogue29] run opendialogue flowershoplady_dialogue29 @s 

#Dialogue 31 - Silver outside Ecruteak
execute as @s[x=343,y=64,z=216,distance=..50,tag=!Dialogue31] unless entity @e[x=343,y=64,z=216,dy=3,type=cobblemon:npc] run npcspawnat 343 64 216 ecruteak_silver 1

#Dialogue 33 - Surf Guy giving ability if all trainers are beaten
execute as @s[x=333,y=64,z=219,dx=20,dy=5,dz=14,tag=Kimono1,tag=Kimono2,tag=Kimono3,tag=Kimono4,tag=Kimono5,tag=!Dialogue33,scores={Cooldown=0}] run opendialogue surfguy_dialogue33 @s 

#Burned Tower Silver Spawn
execute as @s[x=441,y=64,z=312,distance=..20,tag=!Dialogue35,scores={StarterPick=1..}] unless entity @e[x=441,y=64,z=312,dy=3,type=cobblemon:npc] run particle cloud 441 64 312 1 1 1 1 100
execute as @s[x=441,y=64,z=312,distance=..20,tag=!Dialogue35,scores={StarterPick=1}] unless entity @e[x=441,y=64,z=312,dy=3,type=cobblemon:npc] run npcspawnat 441 64 312 burnedtower_silver1 1
execute as @s[x=441,y=64,z=312,distance=..20,tag=!Dialogue35,scores={StarterPick=2}] unless entity @e[x=441,y=64,z=312,dy=3,type=cobblemon:npc] run npcspawnat 441 64 312 burnedtower_silver2 1
execute as @s[x=441,y=64,z=312,distance=..20,tag=!Dialogue35,scores={StarterPick=3}] unless entity @e[x=441,y=64,z=312,dy=3,type=cobblemon:npc] run npcspawnat 441 64 312 burnedtower_silver3 1

#Dialogue 39 - Silver outside Olivine Gym
execute at @s[x=809,y=63,z=14,distance=..40,tag=!Dialogue39] unless entity @e[x=809,y=64,z=14,dy=3,type=cobblemon:npc] run spawnnpcat 809 64 14 olivine_silver 1

#Dialogue 40 - Olivine Lighthouse Jasmine first introduction
execute at @s[x=694,y=119,z=-48,dx=17,dy=10,dz=15,tag=!Dialogue42] unless entity @e[x=705,y=119,z=-40,dy=3,type=cobblemon:npc] run spawnnpcat 705 119 -40 jasmine_lighthouse 1
execute at @s[x=694,y=119,z=-48,dx=17,dy=10,dz=15,tag=!Dialogue42] unless entity @e[x=706,y=119,z=-38,dy=3,type=cobblemon:pokemon] run pokespawnat 706 119 -38 ampharos uncatchable=yes no_ai=yes level=30
execute at @s[x=694,y=119,z=-48,dx=17,dy=10,dz=15,tag=!Dialogue42] as @e[x=706,y=119,z=-38,dy=3,type=cobblemon:pokemon] at @s run tp @s ~ ~ ~ 150 50
execute at @s[x=694,y=119,z=-48,dx=17,dy=10,dz=15,nbt={PersistenceRequired:0b}] as @e[x=706,y=119,z=-38,dy=3,type=cobblemon:pokemon] run data merge entity @s {PersistenceRequired:1b}
execute at @s[x=694,y=119,z=-48,dx=17,dy=10,dz=15,tag=Dialogue42] as @e[x=706,y=119,z=-38,dy=3,type=cobblemon:pokemon] at @s run tp @s ~ ~ ~ 150 10

#Dialogue 41 - Cianwood Medicine Doctor
execute as @s[x=1221,y=63,z=-491,dx=19,dy=5,dz=10,tag=Dialogue40,tag=!Dialogue41] run opendialogue cianwood_doctor_dialogue41 @s 

#Dialogue 42 - Jasmine Olivine Return to gym
execute as @s[x=705,y=119,z=-40,distance=..5,tag=Dialogue41,tag=!Dialogue42] run opendialogue jasmine_dialogue42 @s 

#Chuck's Wife Fly HM
execute as @s[x=1261,y=64,z=-488,distance=..10,tag=Chuck,tag=!Dialogue43] run opendialogue chuckswife_dialogue43 @s

#Dialogue 64 - Route 43 Rocket mugging
execute as @s[x=-198,y=63,z=343,dx=19,dy=5,dz=19,tag=!Dialogue48] run opendialogue route43_rocketgrunt_interaction @s
execute as @s[x=-187,y=64,z=352,distance=..30,tag=!Dialogue64] unless entity @e[x=-184,y=64,z=352,dy=3,type=cobblemon:npc] run npcspawnat -184 64 352 route43_rocketgrunt 1
execute as @s[x=-187,y=64,z=352,distance=..30,tag=!Dialogue64] unless entity @e[x=-190,y=64,z=352,dy=3,type=cobblemon:npc] run npcspawnat -190 64 352 route43_rocketgrunt 1

execute as @s[x=-187,y=64,z=352,distance=..30,tag=Dialogue64] as @e[x=-184,y=64,z=352,dy=3,type=cobblemon:npc] run tp @s 10000000 -50000 -10000000
execute as @s[x=-187,y=64,z=352,distance=..30,tag=Dialogue64] as @e[x=-190,y=64,z=352,dy=3,type=cobblemon:npc] run tp @s 10000000 -50000 -10000000

execute as @s[x=-187,y=64,z=352,distance=..30,tag=Dialogue64] unless entity @e[x=-181,y=64,z=352,dy=3,type=cobblemon:npc] run npcspawnat -181 64 352 route43_officerjenny 1
execute as @s[x=-187,y=64,z=352,distance=..30,tag=!Dialogue64] as @e[x=-181,y=64,z=352,dy=3,type=cobblemon:npc] run tp @s 10000000 -50000 -10000000

#Red Gyarados Spawn
scoreboard players set @a[x=-169,y=65,z=645,distance=..15,tag=!Dialogue49] DialogueTrigger 49

#Lance after battling the Gyarados
execute as @s[x=-159,y=64,z=590,distance=..50,tag=Dialogue49,tag=!Dialogue51] unless entity @e[x=-159,y=64,z=590,dy=3,type=cobblemon:npc] run npcspawnat -159 64 590 lake_lance 1

#Rocket HQ


#Silver in rocket HQ
execute as @s[x=-82,y=34,z=182,distance=..20,tag=!Dialogue59] unless entity @e[x=-82,y=34,z=182,dy=3,type=cobblemon:npc] run npcspawnat -82 34 182 rockethq_silver 1



#Goldenrod Underground Silver
execute as @s[x=481,y=47,z=-305,distance=..25,tag=!Dialogue68,scores={StarterPick=1..}] unless entity @e[x=481,y=47,z=-305,dy=3,type=cobblemon:npc] run particle cloud 481 47 -305 1 1 1 1 100
execute as @s[x=481,y=47,z=-305,distance=..25,tag=!Dialogue68,scores={StarterPick=1}] unless entity @e[x=481,y=47,z=-305,dy=3,type=cobblemon:npc] run npcspawnat 481 47 -305 goldenrod_silver1 1
execute as @s[x=481,y=47,z=-305,distance=..25,tag=!Dialogue68,scores={StarterPick=2}] unless entity @e[x=481,y=47,z=-305,dy=3,type=cobblemon:npc] run npcspawnat 481 47 -305 goldenrod_silver2 1
execute as @s[x=481,y=47,z=-305,distance=..25,tag=!Dialogue68,scores={StarterPick=3}] unless entity @e[x=481,y=47,z=-305,dy=3,type=cobblemon:npc] run npcspawnat 481 47 -305 goldenrod_silver3 1


#Goldenrod Underground iron door unlock
#Locked
execute if block 480 55 -321 minecraft:air if entity @a[x=480,y=54,z=-326,distance=..25] run fill 478 57 -322 479 55 -324 air
execute if block 480 55 -321 minecraft:air if entity @a[x=480,y=54,z=-326,distance=..25] run clone -728 66 -333 -726 64 -334 479 55 -322

#Unlocked
execute if block 480 55 -321 minecraft:iron_block if entity @a[x=480,y=54,z=-326,distance=..10,tag=Dialogue66] run playsound minecraft:entity.iron_golem.death ambient @a[x=480,y=54,z=-326,distance=..10,tag=Dialogue66,scores={Cooldown=0}] ~ ~ ~ 1 1 1
execute if block 480 55 -321 minecraft:iron_block if entity @a[x=480,y=54,z=-326,distance=..10,tag=Dialogue66] run scoreboard players set @a[x=480,y=54,z=-326,distance=..10,tag=Dialogue66,scores={Cooldown=0}] Cooldown 10
execute if block 480 55 -321 minecraft:iron_block if entity @a[x=480,y=54,z=-326,distance=..10,tag=Dialogue66] run clone -724 66 -333 -723 64 -335 478 55 -324
execute if block 480 55 -321 minecraft:iron_block if entity @a[x=480,y=54,z=-326,distance=..10,tag=Dialogue66] run fill 481 55 -322 479 57 -321 air


#Dialogue69 - Goldenrod Radio Director underground, spawns NPC
execute at @s[x=426,y=37,z=-304,distance=..25,tag=!Dialogue72] unless entity @e[x=426,y=37,z=-304,dy=3,type=cobblemon:npc] run npcspawnat 426 38 -304 director_dialogue69
execute at @s[x=426,y=37,z=-304,distance=..25,tag=Dialogue72] as @e[x=426,y=37,z=-304,dy=3,type=cobblemon:npc] run tp @s 10000000 -50000 -10000000

#Radio Tower Shutter Open and Close
#Locked
execute if block 502 43 -244 minecraft:air if entity @a[x=498,y=42,z=-246,distance=..25] run fill 502 43 -244 502 46 -239 minecraft:iron_bars

#Unlocked
execute if block 502 43 -244 minecraft:iron_bars if entity @a[x=498,y=42,z=-246,dx=9,dy=5,dz=10,tag=Dialogue69] run playsound minecraft:entity.iron_golem.death ambient @a[x=498,y=42,z=-246,dx=9,dy=5,dz=10,tag=Dialogue69,scores={Cooldown=0}] ~ ~ ~ 1 1 1
execute if block 502 43 -244 minecraft:iron_bars if entity @a[x=498,y=42,z=-246,dx=9,dy=5,dz=10,tag=Dialogue69] run scoreboard players set @a[x=498,y=42,z=-246,dx=9,dy=5,dz=10,tag=Dialogue69,scores={Cooldown=0}] Cooldown 10
execute if block 502 43 -244 minecraft:iron_bars if entity @a[x=498,y=42,z=-246,dx=9,dy=5,dz=10,tag=Dialogue69] run fill 502 43 -244 502 46 -239 minecraft:air









#Elm granting Master Ball
execute as @s[x=-683,y=63,z=-478,distance=..10,tag=Clair,tag=!Dialogue81] run opendialogue professorelm_dialogue81 @s

#Silver Victory Road
execute as @s[x=-1449,y=51,z=528,distance=..25,tag=!Dialogue85,scores={StarterPick=1..}] unless entity @e[x=-1449,y=51,z=528,dy=3,type=cobblemon:npc] run particle cloud -1449 51 528 1 1 1 1 100
execute as @s[x=-1449,y=51,z=528,distance=..25,tag=!Dialogue85,scores={StarterPick=1}] unless entity @e[x=-1449,y=51,z=528,dy=3,type=cobblemon:npc] run npcspawnat -1449 51 528 victoryroad_silver1 1
execute as @s[x=-1449,y=51,z=528,distance=..25,tag=!Dialogue85,scores={StarterPick=2}] unless entity @e[x=-1449,y=51,z=528,dy=3,type=cobblemon:npc] run npcspawnat -1449 51 528 victoryroad_silver2 1
execute as @s[x=-1449,y=51,z=528,distance=..25,tag=!Dialogue85,scores={StarterPick=3}] unless entity @e[x=-1449,y=51,z=528,dy=3,type=cobblemon:npc] run npcspawnat -1449 51 528 victoryroad_silver3 1





#Elm granting SS Ticket
execute as @s[x=-683,y=63,z=-478,distance=..10,tag=Dialogue81,tag=!Dialogue101,scores={IP=1..}] run opendialogue professorelm_dialogue101 @s

#SS Aqua Voyages
execute as @s[x=744,y=73,z=-193,distance=..15,tag=Dialogue101,scores={TalkTime=0}] run tag @s remove Dialogue214
execute as @s[x=-2749,y=72,z=-159,distance=..15,tag=Dialogue101,scores={TalkTime=0}] run tag @s remove Dialogue214

execute as @s[x=744,y=73,z=-193,distance=..15,tag=Dialogue101,scores={TalkTime=0}] run scoreboard players set @s DialogueTrigger 214
execute as @s[x=-2749,y=72,z=-159,distance=..15,tag=Dialogue101,scores={TalkTime=0}] run scoreboard players set @s DialogueTrigger 214


#Friday Lapras Spawn
execute if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=5}] run scoreboard players set @a[x=120,y=13,z=-852,distance=..15,tag=!Dialogue105] DialogueTrigger 105


#Oak Kanto Starters
execute as @s[x=-1715,y=64,z=-307,distance=..5,tag=!Dialogue153] run opendialogue professoroak_dialogue153 @s

#Mt. Moon Silver
execute as @s[x=-2200,y=64,z=800,distance=..25,tag=!Dialogue131,scores={StarterPick=1..}] unless entity @e[x=-2200,y=64,z=800,dy=3,type=cobblemon:npc] run particle cloud -2200 64 800 1 1 1 1 100
execute as @s[x=-2200,y=64,z=800,distance=..25,tag=!Dialogue131,scores={StarterPick=1}] unless entity @e[x=-2200,y=64,z=800,dy=3,type=cobblemon:npc] run npcspawnat -2200 64 800 mtmoon_silver1 1
execute as @s[x=-2200,y=64,z=800,distance=..25,tag=!Dialogue131,scores={StarterPick=2}] unless entity @e[x=-2200,y=64,z=800,dy=3,type=cobblemon:npc] run npcspawnat -2200 64 800 mtmoon_silver2 1
execute as @s[x=-2200,y=64,z=800,distance=..25,tag=!Dialogue131,scores={StarterPick=3}] unless entity @e[x=-2200,y=64,z=800,dy=3,type=cobblemon:npc] run npcspawnat -2200 64 800 mtmoon_silver3 1



#Dialogue 204 NPC spawn, Bill in Ecruteak
execute as @a[x=337,y=64,z=191,distance=..20,tag=!Dialogue204] unless entity @e[x=337,y=64,z=191,dy=3,type=cobblemon:npc] run npcspawnat 337 64 191 bill_dialogue204 1

#Dialogue 205 Bill in Goldenrod Spawn
execute as @p[x=549,y=64,z=-409,distance=..20,tag=!Dialogue204,tag=!Dialogue205] if entity @e[x=549,y=64,z=-409,dy=3,type=cobblemon:npc] run tp @e[x=549,y=64,z=-409,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @a[x=549,y=64,z=-409,distance=..20,tag=Dialogue204,tag=!Dialogue205] unless entity @e[x=549,y=64,z=-409,dy=3,type=cobblemon:npc] run npcspawnat 549 64 -409 bill_dialogue205 1





#