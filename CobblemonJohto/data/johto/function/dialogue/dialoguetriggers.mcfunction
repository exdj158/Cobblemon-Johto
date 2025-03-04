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
execute as @s[x=-279,y=64,z=-509,distance=0..10,tag=!Dialogue7,scores={StarterPick=1}] unless entity @e[x=-300,y=64,z=-509,dy=3,type=cobblemon:npc] run particle cloud -300 64 -509 1 1 1 1 50
execute as @s[x=-279,y=64,z=-509,distance=0..10,tag=!Dialogue7,scores={StarterPick=1}] unless entity @e[x=-300,y=64,z=-509,dy=3,type=cobblemon:npc] run npcspawnat -300 64 -509 cherrygrove_silver1 1
execute as @s[x=-279,y=64,z=-509,distance=0..10,tag=!Dialogue7,scores={StarterPick=2}] unless entity @e[x=-300,y=64,z=-509,dy=3,type=cobblemon:npc] run npcspawnat -300 64 -509 cherrygrove_silver1 2
execute as @s[x=-279,y=64,z=-509,distance=0..10,tag=!Dialogue7,scores={StarterPick=3}] unless entity @e[x=-300,y=64,z=-509,dy=3,type=cobblemon:npc] run npcspawnat -300 64 -509 cherrygrove_silver1 3

#Dialogue 8 - Elm's Lab stolen Pokemon
execute as @s[x=-681,y=64,z=-493,distance=..10,tag=!Dialogue8] unless entity @e[x=-682,y=64,z=-481,dy=3,type=cobblemon:npc] run npcspawnat -682 64 -481 newbark_policeman 1
execute as @s[x=-683,y=63,z=-478,distance=..10,tag=Dialogue5,tag=!Dialogue8] run opendialogue elmslab_dialogue8 @s

#Dialogue 9 - Sprout Tower Silver
execute as @s[x=57,y=104,z=13,distance=..10,tag=!Dialogue9] unless entity @e[x=57,y=103,z=29,dy=3,type=cobblemon:npc] run npcspawnat 57 104 29 sprouttower_silver 1
execute as @s[x=54,y=103,z=22,dx=12,dy=5,dz=10,tag=!Dialogue9] run opendialogue sprouttower_silver_dialogue9 @s 











#Chuck's Wife Fly HM
execute as @s[x=1261,y=64,z=-488,distance=..10,tag=Chuck,tag=!Dialogue43] run opendialogue chuckswife_dialogue43 @s


#Red Gyarados Spawn
scoreboard players set @a[x=-169,y=65,z=645,distance=..15,tag=!Dialogue49] DialogueTrigger 49

#Elm granting Master Ball
execute as @s[x=-683,y=63,z=-478,distance=..10,tag=Clair,tag=!Dialogue81] run opendialogue professorelm_dialogue81 @s

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


#NPC Spawns
#Dialogue 204 NPC spawn, Bill in Ecruteak
execute as @a[x=337,y=64,z=191,distance=..20,tag=!Dialogue204] unless entity @e[x=337,y=64,z=191,dy=3,type=cobblemon:npc] run npcspawnat 337 64 191 bill_dialogue204 1

#Dialogue 205 Bill in Goldenrod Spawn
execute as @p[x=549,y=64,z=-409,distance=..20,tag=!Dialogue204,tag=!Dialogue205] if entity @e[x=549,y=64,z=-409,dy=3,type=cobblemon:npc] run tp @e[x=549,y=64,z=-409,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @a[x=549,y=64,z=-409,distance=..20,tag=Dialogue204,tag=!Dialogue205] unless entity @e[x=549,y=64,z=-409,dy=3,type=cobblemon:npc] run npcspawnat 549 64 -409 bill_dialogue205 1





#