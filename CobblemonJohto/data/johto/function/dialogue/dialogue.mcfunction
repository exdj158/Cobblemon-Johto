#Triggered by DialogueTrigger X score and !DialogueX tag

#Reference Dialogue:
#https://gamefaqs.gamespot.com/gbc/375087-Pokémon-crystal-version/faqs/49457


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Ends dialogues and scans for duplicate dialogues, will stop dialogue if tag is present while also having equal dialogue number.

execute as @s run function johto:dialogue/enddialogue

#Adds timings
scoreboard players add @s[scores={DialogueTrigger=1..}] TalkTime 1

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Most dialogues no longer present here, converting to Cobblemon's own dialogue system.
#Legacy unported dialogues can be found in dialogue.pixelmon


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Odd Egg Rolls
#scoreboard players set @a[score_TalkTime=0] DialogueTrigger 200 {Inventory:[{id:"minecraft:egg"}]}

#Rolls a Random Number for player
execute as @s[scores={DialogueTrigger=200,TalkTime=1}] run scoreboard players set @e[x=-867,y=69,z=-207,dy=4,dz=2] rng 0
execute as @s[scores={DialogueTrigger=200,TalkTime=1}] run scoreboard players add @e[x=-867,y=69,z=-207,dy=4,dz=2,sort=random,limit=1] rng 1
execute as @s[scores={DialogueTrigger=200,TalkTime=1}] run scoreboard players add @e[x=-867,y=69,z=-207,dy=4,dz=2,sort=random,limit=1] rng 2
execute as @s[scores={DialogueTrigger=200,TalkTime=1}] run scoreboard players add @e[x=-867,y=69,z=-207,dy=4,dz=2,sort=random,limit=1] rng 4
execute as @s[scores={DialogueTrigger=200,TalkTime=1}] run scoreboard players add @e[x=-867,y=69,z=-207,dy=4,dz=2,sort=random,limit=1] rng 8
execute as @s[scores={DialogueTrigger=200,TalkTime=1}] run scoreboard players add @e[x=-867,y=69,z=-207,dy=4,dz=2,sort=random,limit=1] rng 16
execute as @s[scores={DialogueTrigger=200,TalkTime=1}] run scoreboard players add @e[x=-867,y=69,z=-207,dy=4,dz=2,sort=random,limit=1] rng 32
execute as @s[scores={DialogueTrigger=200,TalkTime=1}] run scoreboard players add @e[x=-867,y=69,z=-207,dy=4,dz=2,sort=random,limit=1] rng 64

execute as @s[scores={DialogueTrigger=200,TalkTime=1}] run scoreboard players operation @s rng = @e[x=-867,y=69,z=-205,dy=3,type=armor_stand] rng

execute as @s[nbt={Inventory:[{id:"minecraft:egg"}]},scores={DialogueTrigger=200,TalkTime=2,rng=0..9}] run pokegive @s Elekid lvl:5 s egg
execute as @s[nbt={Inventory:[{id:"minecraft:egg"}]},scores={DialogueTrigger=200,TalkTime=2,rng=10..18}] run pokegive @s Elekid lvl:5 !s egg
execute as @s[nbt={Inventory:[{id:"minecraft:egg"}]},scores={DialogueTrigger=200,TalkTime=2,rng=19..27}] run pokegive @s Smoochum lvl:5 s egg
execute as @s[nbt={Inventory:[{id:"minecraft:egg"}]},scores={DialogueTrigger=200,TalkTime=2,rng=28..36}] run pokegive @s Smoochum lvl:5 !s egg
execute as @s[nbt={Inventory:[{id:"minecraft:egg"}]},scores={DialogueTrigger=200,TalkTime=2,rng=37..45}] run pokegive @s Igglybuff lvl:5 s egg
execute as @s[nbt={Inventory:[{id:"minecraft:egg"}]},scores={DialogueTrigger=200,TalkTime=2,rng=46..54}] run pokegive @s Igglybuff lvl:5 !s egg
execute as @s[nbt={Inventory:[{id:"minecraft:egg"}]},scores={DialogueTrigger=200,TalkTime=2,rng=55..63}] run pokegive @s Cleffa lvl:5 s egg
execute as @s[nbt={Inventory:[{id:"minecraft:egg"}]},scores={DialogueTrigger=200,TalkTime=2,rng=64..72}] run pokegive @s Cleffa lvl:5 !s egg
execute as @s[nbt={Inventory:[{id:"minecraft:egg"}]},scores={DialogueTrigger=200,TalkTime=2,rng=73..81}] run pokegive @s Tyrogue lvl:5 s egg
execute as @s[nbt={Inventory:[{id:"minecraft:egg"}]},scores={DialogueTrigger=200,TalkTime=2,rng=82..90}] run pokegive @s Tyrogue lvl:5 !s egg
execute as @s[nbt={Inventory:[{id:"minecraft:egg"}]},scores={DialogueTrigger=200,TalkTime=2,rng=91..99}] run pokegive @s Magby lvl:5 s egg
execute as @s[nbt={Inventory:[{id:"minecraft:egg"}]},scores={DialogueTrigger=200,TalkTime=2,rng=100..108}] run pokegive @s Magby lvl:5 !s egg
execute as @s[nbt={Inventory:[{id:"minecraft:egg"}]},scores={DialogueTrigger=200,TalkTime=2,rng=109..117}] run pokegive @s Pichu lvl:5 s egg
execute as @s[nbt={Inventory:[{id:"minecraft:egg"}]},scores={DialogueTrigger=200,TalkTime=2,rng=118..127}] run pokegive @s Pichu lvl:5 !s egg

execute as @s[nbt={Inventory:[{id:"minecraft:egg"}]},scores={DialogueTrigger=200,TalkTime=2}] run clear @s minecraft:egg 1
execute as @s[nbt={Inventory:[{id:"minecraft:egg"}]},scores={DialogueTrigger=200,TalkTime=2}] run playsound egghatch ambient @s ~ ~ ~ 10 1 1

tellraw @s[scores={DialogueTrigger=200,TalkTime=2}] ["",{"text":"You recieved an ","italic":true},{"text":"Odd Egg","italic":true,"color":"aqua","hoverEvent":{"action":"show_text","value":"A gift Egg. The Pokémon it hatches into has a higher-than-usual chance of being Shiny."}},{"text":"!","italic":true}]

tag @s[scores={DialogueTrigger=200,TalkTime=4..}] add Dialogue200

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Safari Zone clone in commands
#Dialogue201

#Deducts balance of player
#execute as @s[scores={DialogueTrigger=201,TalkTime=1}] run data merge entity @e[limit=1,x=-801,y=64,z=-284,dy=3,type=armor_stand] {CustomName:'{"text":"Safari Clerk"}'}
#execute as @s[scores={DialogueTrigger=201,TalkTime=1}] run execute as @e[x=-801,y=64,z=-284,dy=3,type=armor_stand] run givemoney @a[scores={DialogueTrigger=201,TalkTime=1}] -500
#execute as @s[scores={DialogueTrigger=201,TalkTime=1}] run data merge entity @e[limit=1,x=-801,y=64,z=-284,dy=3,type=armor_stand] {CustomName:'{"text":"Pixelmon Johto"}'}
execute as @s[scores={DialogueTrigger=201,TalkTime=1}] run setblock 1595 81 -129 minecraft:redstone_block


#Generating messages and timings
tellraw @s[scores={DialogueTrigger=201,TalkTime=3}] {"text":"Now generating biome #1...","italic":true,"color":"gray"}
tellraw @s[scores={DialogueTrigger=201,TalkTime=20}] {"text":"Now generating biome #2...","italic":true,"color":"gray"}
tellraw @s[scores={DialogueTrigger=201,TalkTime=40}] {"text":"Now generating biome #3...","italic":true,"color":"gray"}
tellraw @s[scores={DialogueTrigger=201,TalkTime=60}] {"text":"Now generating biome #4...","italic":true,"color":"gray"}
tellraw @s[scores={DialogueTrigger=201,TalkTime=80}] {"text":"Now generating biome #5...","italic":true,"color":"gray"}
tellraw @s[scores={DialogueTrigger=201,TalkTime=100}] {"text":"Now generating biome #6...","italic":true,"color":"gray"}

#tps Player Around
execute as @s[scores={DialogueTrigger=201,TalkTime=1}] run tp @s 1715 74 55 180 -90
execute as @s[scores={DialogueTrigger=201,TalkTime=18}] run tp @s 1716 74 -41 180 -90
execute as @s[scores={DialogueTrigger=201,TalkTime=38}] run tp @s 1591 74 -42 180 -90
execute as @s[scores={DialogueTrigger=201,TalkTime=58}] run tp @s 1591 74 54 180 -90
execute as @s[scores={DialogueTrigger=201,TalkTime=78}] run tp @s 1468 74 54 180 -90
execute as @s[scores={DialogueTrigger=201,TalkTime=98}] run tp @s 1468 74 -41 180 -90

#Starts the Safari
execute as @s[scores={DialogueTrigger=201,TalkTime=121}] run spawnpoint @s 1591 84 -87
execute as @s[scores={DialogueTrigger=201,TalkTime=121}] run tp @s 1591 84 -87 -180 1
execute as @s[scores={DialogueTrigger=201,TalkTime=121}] run scoreboard players set @s SafariState 1
execute as @s[scores={DialogueTrigger=201,TalkTime=121}] run give @s cobblemon:safari_ball 64
execute as @s[scores={DialogueTrigger=201,TalkTime=121}] run setblock 1595 81 -129 minecraft:redstone_block
execute as @s[scores={DialogueTrigger=201,TalkTime=121}] run scoreboard players set @e[x=-879,y=64,z=-180,dy=5,dz=10,type=armor_stand] BiomeID 0
tellraw @s[scores={DialogueTrigger=201,TalkTime=121}] ["",{"text":"Enjoy your stay in the Safari Zone! Come back to the start when you are ready to leave."}]


#Generates biomes from the SafariSelect function
execute as @s[scores={DialogueTrigger=201,TalkTime=1..120}] run function johto:world/safariselect


#Clears biome maps from inventory if present
#execute as @s[scores={DialogueTrigger=201,TalkTime=119}] run clear @s minecraft:filled_map 242 64
#execute as @s[scores={DialogueTrigger=201,TalkTime=119}] run clear @s minecraft:filled_map 243 64
#execute as @s[scores={DialogueTrigger=201,TalkTime=119}] run clear @s minecraft:filled_map 244 64
#execute as @s[scores={DialogueTrigger=201,TalkTime=119}] run clear @s minecraft:filled_map 241 64
#execute as @s[scores={DialogueTrigger=201,TalkTime=119}] run clear @s minecraft:filled_map 239 64
#execute as @s[scores={DialogueTrigger=201,TalkTime=119}] run clear @s minecraft:filled_map 246 64
#execute as @s[scores={DialogueTrigger=201,TalkTime=119}] run clear @s minecraft:filled_map 248 64
#execute as @s[scores={DialogueTrigger=201,TalkTime=119}] run clear @s minecraft:filled_map 238 64
#execute as @s[scores={DialogueTrigger=201,TalkTime=119}] run clear @s minecraft:filled_map 240 64
#execute as @s[scores={DialogueTrigger=201,TalkTime=119}] run clear @s minecraft:filled_map 247 64
#execute as @s[scores={DialogueTrigger=201,TalkTime=119}] run clear @s minecraft:filled_map 245 64
#execute as @s[scores={DialogueTrigger=201,TalkTime=119}] run clear @s minecraft:filled_map 249 64

tag @s[scores={DialogueTrigger=201,TalkTime=121..}] add Dialogue201

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Safari Zone tear down commands
#Dialogue202

tellraw @s[scores={DialogueTrigger=202,TalkTime=2}] {"text":"Now removing biome #1...","italic":true,"color":"gray"}
tellraw @s[scores={DialogueTrigger=202,TalkTime=13}] {"text":"Now removing biome #2...","italic":true,"color":"gray"}
tellraw @s[scores={DialogueTrigger=202,TalkTime=23}] {"text":"Now removing biome #3...","italic":true,"color":"gray"}
tellraw @s[scores={DialogueTrigger=202,TalkTime=33}] {"text":"Now removing biome #4...","italic":true,"color":"gray"}
tellraw @s[scores={DialogueTrigger=202,TalkTime=43}] {"text":"Now removing biome #5...","italic":true,"color":"gray"}
tellraw @s[scores={DialogueTrigger=202,TalkTime=53}] {"text":"Now removing biome #6...","italic":true,"color":"gray"}

execute as @s[scores={DialogueTrigger=202,TalkTime=2}] run tp @s 1715 74 55 180 -90
execute as @s[scores={DialogueTrigger=202,TalkTime=13}] run tp @s 1716 74 -41 180 -90
execute as @s[scores={DialogueTrigger=202,TalkTime=23}] run tp @s 1591 74 54 180 -90
execute as @s[scores={DialogueTrigger=202,TalkTime=33}] run tp @s 1591 74 -42 180 -90
execute as @s[scores={DialogueTrigger=202,TalkTime=43}] run tp @s 1468 74 54 180 -90
execute as @s[scores={DialogueTrigger=202,TalkTime=53}] run tp @s 1468 74 -41 180 -90

#Removes Safari Select
execute as @s[scores={DialogueTrigger=202,TalkTime=1..65}] run function johto:world/safariselect


#Final cleanup
execute as @s[scores={DialogueTrigger=202,TalkTime=65}] run clear @s cobblemon:safari_ball
execute as @s[scores={DialogueTrigger=202,TalkTime=65}] run scoreboard players set @e[x=-879,y=64,z=-180,dy=5,dz=10,type=armor_stand] BiomeID 0
execute as @s[scores={DialogueTrigger=202,TalkTime=65}] run tag @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] remove SafariActive
execute as @s[scores={DialogueTrigger=202,TalkTime=65}] run scoreboard players set @s SafariState 0
execute as @s[scores={DialogueTrigger=202,TalkTime=65}] run tp @s 1591 88 -111 180 4
execute as @s[scores={DialogueTrigger=202,TalkTime=65}] run spawnpoint @s 1591 88 -111

tellraw @s[scores={DialogueTrigger=202,TalkTime=65}] ["",{"text":"Thank you for visiting! Come again soon!"}]
execute as @s[scores={DialogueTrigger=202,TalkTime=65}] run advancement grant @s only johto:event2

tag @s[scores={DialogueTrigger=202,TalkTime=65..}] add Dialogue202




#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#EndDialogue tag, ends a dialogue without finishing. Trigger may take over again as tag is not given

scoreboard players set @s[scores={DialogueTrigger=1..},tag=EndDialogue] DialogueTrigger 0
scoreboard players set @s[scores={TalkTime=1..},tag=EndDialogue] TalkTime 0
tag @s[tag=EndDialogue] remove EndDialogue
