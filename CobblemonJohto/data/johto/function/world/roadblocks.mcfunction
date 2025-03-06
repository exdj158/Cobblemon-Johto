#Controls functions that keep the player from going beyond story defined checks



#Prof Elm before player has a Pokemon
execute as @a[x=-659,y=63,z=-526,dx=10,dy=10,dz=12,scores={StarterPick=0}] run tellraw @s ["",{"text":"<Professor Elm> Where are you going, "},{"selector":"@s"},{"text":"? You don't have a Pokemon yet!"}]
execute at @a[x=-659,y=63,z=-526,dx=10,dy=10,dz=12,scores={StarterPick=0}] run tp @a[x=-659,y=63,z=-526,dx=10,dy=10,dz=12,scores={StarterPick=0}] ~-10 ~ ~1 25 ~

#Route 30 Cut Tree respawn for story blocking
execute if block -192 64 -188 minecraft:air if entity @a[x=-192,y=64,z=-188,distance=10..25] run clone -752 75 -242 -752 76 -242 -192 64 -188

#Mr. Pokemon TP
tellraw @a[x=-177,y=63,z=-311,dx=24,dy=5,dz=6,tag=!Dialogue5] ["",{"text":"Mr Pokemon's house is the other way!","color":"white","italic":true}]
execute at @a[x=-177,y=63,z=-311,dx=24,dy=5,dz=6,tag=!Dialogue5] run tp @a[x=-177,y=63,z=-311,dx=24,dy=5,dz=6,tag=!Dialogue5] ~ ~ ~-10

tellraw @a[x=-177,y=63,z=-311,dx=24,dy=5,dz=6,tag=Dialogue5,tag=!Dialogue8] ["",{"text":"You haven't reported your findings to Prof. Elm!","color":"white","italic":true}]
execute at @a[x=-177,y=63,z=-311,dx=24,dy=5,dz=6,tag=Dialogue5,tag=!Dialogue8] run tp @a[x=-177,y=63,z=-311,dx=24,dy=5,dz=6,tag=Dialogue5,tag=!Dialogue8] ~ ~ ~-10

#Route 32
tellraw @a[x=83,y=63,z=-222,dx=11,dy=10,dz=5,tag=!Falkner] ["",{"text":"You need to defeat Falkner!","color":"white","italic":true}]
execute at @a[x=83,y=63,z=-222,dx=11,dy=10,dz=5,tag=!Falkner] run tp @a[x=83,y=63,z=-222,dx=11,dy=10,dz=5,tag=!Falkner] ~ ~ ~10

#Azalea Town Slowpoke Well before visiting Kurt
tellraw @a[x=243,y=54,z=-715,dx=2,dy=5,dz=2,tag=!Dialogue14] ["",{"text":"<Team Rocket Grunt> Get out of here, kid! ","color":"white"}]
execute at @a[x=243,y=54,z=-715,dx=2,dy=5,dz=2,tag=!Dialogue14] run tp @a[x=243,y=54,z=-715,dx=2,dy=5,dz=2,tag=!Dialogue14] ~3 ~ ~

#Johto/Kanto/IP Connector Johto Gate Block
tellraw @a[x=-1225,y=63,z=52,dx=15,dy=5,dz=3,tag=!Dialogue222,scores={TalkTime=0}] {"text":"<Officer Jenny> This way leads to Mt. Silver. You'll see scary-strong Pokémon out there. You're not ready for it."}
tellraw @a[x=-1225,y=63,z=52,dx=15,dy=5,dz=3,tag=!Dialogue222,scores={TalkTime=0},tag=AllGyms] {"text":"<Officer Jenny> This way leads to Mt. Silver. You'll see scary-strong Pokémon out there. See Prof. Oak if you think you are tough enough!."}
execute at @a[x=-1225,y=63,z=52,dx=15,dy=5,dz=3,distance=..10,tag=!Dialogue222] run tp @a[x=-1225,y=63,z=52,dx=15,dy=5,dz=3,distance=..10,tag=!Dialogue222] ~-10 ~ ~

#Kanto Block
tellraw @a[x=-1301,y=63,z=52,dx=9,dy=5,dz=3,tag=!Dialogue222,scores={TalkTime=0}] {"text":"<Officer Jenny> Hold there! This way leads to Kanto... But this path's blocked for the time being, I'm afraid."}
execute at @a[x=-1301,y=63,z=52,dx=9,dy=5,dz=3,tag=!Dialogue222] run tp @a[x=-1301,y=63,z=52,dx=9,dy=5,dz=3,tag=!Dialogue222] ~10 ~ ~

#Kanto-side block
tellraw @a[x=-1358,y=64,z=49,dx=20,dy=5,dz=8,tag=!Dialogue222] {"text":"<Officer Jenny> Hold there! This way leads to Victory Road... But this path's blocked for the time being, I'm afraid."}
execute at @a[x=-1358,y=64,z=49,dx=20,dy=5,dz=8,tag=!Dialogue222] run tp @a[x=-1358,y=64,z=49,dx=20,dy=5,dz=8,tag=!Dialogue222] ~-10 ~ ~

#------------------------------------------------------------------------------------------------
#Surf Checks

#New Bark Town without Surf
tellraw @a[x=-787,y=59,z=-525,dx=33,dy=10,dz=22,tag=!Dialogue33] {"text":"This area requires Surf to access!","italic":true,"color":"gray"}
execute at @a[x=-787,y=59,z=-525,dx=33,dy=10,dz=22,tag=!Dialogue33] run tp @a[x=-787,y=59,z=-525,dx=33,dy=10,dz=22,tag=!Dialogue33] ~10 64 ~0

#Cherrygrove without Surf
tellraw @a[x=-187,y=60,z=-575,dx=93,dy=3,dz=81,tag=!Dialogue33] {"text":"This area requires Surf to access!","italic":true,"color":"gray"}
execute at @a[x=-187,y=60,z=-575,dx=93,dy=3,dz=81,tag=!Dialogue33] run tp @a[x=-187,y=60,z=-575,dx=93,dy=3,dz=81,tag=!Dialogue33] -155 64 -518

#Violet City Right without Surf
tellraw @a[x=23,y=60,z=-43,dx=26,dy=3,dz=23,tag=!Dialogue33] {"text":"This area requires Surf to access!","italic":true,"color":"gray"}
execute at @a[x=23,y=60,z=-43,dx=26,dy=3,dz=23,tag=!Dialogue33] run tp @a[x=23,y=60,z=-43,dx=26,dy=3,dz=23,tag=!Dialogue33] 51 64 -29

#Violet City Left without Surf
tellraw @a[x=95,y=60,z=-54,dx=20,dy=3,dz=27,tag=!Dialogue33] {"text":"This area requires Surf to access!","italic":true,"color":"gray"}
execute at @a[x=95,y=60,z=-54,dx=20,dy=3,dz=27,tag=!Dialogue33] run tp @a[x=95,y=60,z=-54,dx=20,dy=3,dz=27,tag=!Dialogue33] 109 64 -57

#Ruins of Alph without Surf
tellraw @a[x=183,y=60,z=-231,dx=22,dy=3,dz=19,tag=!Dialogue33] {"text":"This area requires Surf to access!","italic":true,"color":"gray"}
execute at @a[x=183,y=60,z=-231,dx=22,dy=3,dz=19,tag=!Dialogue33] run tp @a[x=183,y=60,z=-231,dx=22,dy=3,dz=19,tag=!Dialogue33] 198 64 -207

#Union Cave 1F without Surf
tellraw @a[x=196,y=40,z=-732,dx=16,dy=3,dz=16,tag=!Dialogue33] {"text":"This area requires Surf to access!","italic":true,"color":"gray"}
execute at @a[x=196,y=40,z=-732,dx=16,dy=3,dz=16,tag=!Dialogue33] run tp @a[x=196,y=40,z=-732,dx=16,dy=3,dz=16,tag=!Dialogue33] 199 44 -710

#Union Cave B1F without Surf
tellraw @a[x=170,y=24,z=-679,dx=25,dy=3,dz=34,tag=!Dialogue33] {"text":"This area requires Surf to access!","italic":true,"color":"gray"}
execute at @a[x=170,y=24,z=-679,dx=25,dy=3,dz=34,tag=!Dialogue33] run tp @a[x=170,y=24,z=-679,dx=25,dy=3,dz=34,tag=!Dialogue33] 173 28 -684

#Slow Poke Well without Surf
tellraw @a[x=281,y=36,z=-717,dx=24,dy=2,dz=15,tag=!Dialogue33] {"text":"This area requires Surf to access!","italic":true,"color":"gray"}
execute at @a[x=281,y=36,z=-717,dx=24,dy=2,dz=15,tag=!Dialogue33] run tp @a[x=281,y=36,z=-717,dx=24,dy=2,dz=15,tag=!Dialogue33] 303 39 -699

#Route 35 without Surf
tellraw @a[x=488,y=60,z=-244,dx=21,dy=3,dz=46,tag=!Dialogue33] {"text":"This area requires Surf to access!","italic":true,"color":"gray"}
execute at @a[x=488,y=60,z=-244,dx=21,dy=3,dz=46,tag=!Dialogue33] run tp @a[x=488,y=60,z=-244,dx=21,dy=3,dz=46,tag=!Dialogue33] 485 64 -223

#Route 42 Check 1 without surf
tellraw @a[x=10,y=60,z=156,dx=33,dy=3,dz=47,tag=!Dialogue33] {"text":"This area requires Surf to access!","italic":true,"color":"gray"}
execute at @a[x=10,y=60,z=156,dx=33,dy=3,dz=47,tag=!Dialogue33] run tp @a[x=10,y=60,z=156,dx=33,dy=3,dz=47,tag=!Dialogue33] 11 64 180

#Route 42 Check 2 without surf
tellraw @a[x=44,y=60,z=160,dx=29,dy=3,dz=47,tag=!Dialogue33] {"text":"This area requires Surf to access!","italic":true,"color":"gray"}
execute at @a[x=44,y=60,z=160,dx=29,dy=3,dz=47,tag=!Dialogue33] run tp @a[x=44,y=60,z=160,dx=29,dy=3,dz=47,tag=!Dialogue33] 66 64 183

#Route 42 Check 3 without surf
tellraw @a[x=125,y=60,z=145,dx=24,dy=3,dz=72,tag=!Dialogue33] {"text":"This area requires Surf to access!","italic":true,"color":"gray"}
execute at @a[x=125,y=60,z=145,dx=24,dy=3,dz=72,tag=!Dialogue33] run tp @a[x=125,y=60,z=145,dx=24,dy=3,dz=72,tag=!Dialogue33] 124 64 176

#Route 42 Check 4 without surf
tellraw @a[x=149,y=60,z=145,dx=34,dy=3,dz=71,tag=!Dialogue33] {"text":"This area requires Surf to access!","italic":true,"color":"gray"}
execute at @a[x=149,y=60,z=145,dx=34,dy=3,dz=71,tag=!Dialogue33] run tp @a[x=149,y=60,z=145,dx=34,dy=3,dz=71,tag=!Dialogue33] 179 64 195


#Lake of Rage without Surf
execute as @a[x=-239,y=52,z=587,dx=141,dy=10,dz=120,tag=!Dialogue33] run tellraw @s[tag=!Morty] {"text":"This area requires Surf to access & the Fog Badge to use outside of battle!","italic":true,"color":"gray"}
execute as @a[x=-239,y=52,z=587,dx=141,dy=10,dz=120,tag=!Dialogue33] run tp @s[tag=!Morty] -164 64 590

#Whirl Islands without Surf and Morty
tellraw @a[x=877,y=40,z=-108,dx=85,dy=25,dz=15,tag=!Morty] {"text":"This area requires Surf to access & the Fog Badge to use outside of battle!","italic":true,"color":"gray"}
execute at @a[x=877,y=40,z=-108,dx=85,dy=25,dz=15,tag=!Morty] run tp @a[x=877,y=40,z=-108,dx=85,dy=25,dz=15,tag=!Morty] ~ 64 ~10

#Route 34 Surf required
tellraw @a[x=488,y=60,z=-630,dx=21,dy=3,dz=117,tag=!Dialogue33] {"text":"This area requires Surf to access!","italic":true,"color":"gray"}
execute at @a[x=488,y=60,z=-630,dx=21,dy=3,dz=117,tag=!Dialogue33] run tp @a[x=488,y=60,z=-630,dx=21,dy=3,dz=117,tag=!Dialogue33] ~-10 64 ~





#------------------------------------------------------------------------------------------------

#Elite Four Gates
#Will
execute if block -1288 67 446 quartz_pillar as @a[x=-1288,y=67,z=446,distance=..15,tag=Will] run playsound minecraft:entity.iron_golem.death ambient @s ~ ~ ~ 1 1 1
execute if block -1288 67 446 quartz_pillar as @a[x=-1288,y=67,z=446,distance=..15,tag=Will] run fill -1287 67 446 -1289 70 446 air
execute unless entity @a[x=-1287,y=67,z=446,distance=..15,tag=Will] run clone -730 64 -328 -728 67 -328 -1289 67 446

#Koga
execute if block -1288 67 523 quartz_pillar as @a[x=-1288,y=67,z=523,distance=..15,tag=Koga] run playsound minecraft:entity.iron_golem.death ambient @s ~ ~ ~ 1 1 1
execute if block -1288 67 523 quartz_pillar as @a[x=-1288,y=67,z=523,distance=..15,tag=Koga] run fill -1287 67 523 -1289 70 523 air
execute unless entity @a[x=-1288,y=67,z=523,distance=..15,tag=Koga] run clone -730 64 -328 -728 67 -328 -1289 67 523

#Bruno
execute if block -1288 70 599 quartz_pillar as @a[x=-1288,y=70,z=599,distance=..15,tag=Bruno] run playsound minecraft:entity.iron_golem.death ambient @s ~ ~ ~ 1 1 1
execute if block -1288 70 599 quartz_pillar as @a[x=-1288,y=70,z=599,distance=..15,tag=Bruno] run fill -1287 70 599 -1289 73 599 air
execute unless entity @a[x=-1288,y=70,z=599,distance=..15,tag=Bruno] run clone -730 64 -328 -728 67 -328 -1289 70 599

#Karen
execute if block -1288 73 675 quartz_pillar as @a[x=-1288,y=73,z=675,distance=..15,tag=Karen] run playsound minecraft:entity.iron_golem.death ambient @s ~ ~ ~ 1 1 1
execute if block -1288 73 675 quartz_pillar as @a[x=-1288,y=73,z=675,distance=..15,tag=Karen] run fill -1287 73 675 -1289 76 675 air
execute unless entity @a[x=-1288,y=73,z=675,distance=..15,tag=Karen] run clone -730 64 -328 -728 67 -328 -1289 73 675

#Lance
execute if block -1288 78 750 quartz_pillar as @a[x=-1291,y=77,z=745,dx=6,dy=10,dz=5,tag=Lance] run playsound minecraft:entity.iron_golem.death ambient @s ~ ~ ~ 1 1 1
execute if block -1288 78 750 quartz_pillar as @a[x=-1291,y=77,z=745,dx=6,dy=10,dz=5,tag=Lance] run fill -1286 82 750 -1290 78 750 air
execute unless entity @a[x=-1291,y=77,z=745,dx=6,dy=10,dz=5,tag=Lance] run clone -730 64 -328 -726 68 -328 -1290 78 750



#REMATCH GATES

#Will
execute if block -1341 67 446 quartz_pillar as @a[x=-1341,y=67,z=446,distance=..15,tag=Will] run playsound minecraft:entity.iron_golem.death ambient @s ~ ~ ~ 1 1 1
execute if block -1341 67 446 quartz_pillar as @a[x=-1341,y=67,z=446,distance=..15,tag=Will] run fill -1342 67 446 -1340 70 446 air
execute unless entity @a[x=-1341,y=67,z=446,distance=..15,tag=Will] run clone -730 64 -328 -728 67 -328 -1342 67 446

#Koga
execute if block -1341 67 523 quartz_pillar as @a[x=-1341,y=67,z=523,distance=..15,tag=Koga] run playsound minecraft:entity.iron_golem.death ambient @s ~ ~ ~ 1 1 1
execute if block -1341 67 523 quartz_pillar as @a[x=-1341,y=67,z=523,distance=..15,tag=Koga] run fill -1342 70 523 -1340 67 523 air
execute unless entity @a[x=-1341,y=67,z=523,distance=..15,tag=Koga] run clone -730 64 -328 -728 67 -328 -1342 67 523

#Bruno
execute if block -1341 70 599 quartz_pillar as @a[x=-1341,y=70,z=599,distance=..15,tag=Bruno] run playsound minecraft:entity.iron_golem.death ambient @s ~ ~ ~ 1 1 1
execute if block -1341 70 599 quartz_pillar as @a[x=-1341,y=70,z=599,distance=..15,tag=Bruno] run fill -1340 70 599 -1342 73 599 air
execute unless entity @a[x=-1341,y=70,z=599,distance=..15,tag=Bruno] run clone -730 64 -328 -728 67 -328 -1342 70 599

#Karen
execute if block -1341 73 675 quartz_pillar as @a[x=-1341,y=67,z=675,distance=..15,tag=Karen] run playsound minecraft:entity.iron_golem.death ambient @s ~ ~ ~ 1 1 1
execute if block -1341 73 675 quartz_pillar as @a[x=-1341,y=67,z=675,distance=..15,tag=Karen] run fill -1340 73 675 -1342 76 675 air
execute unless entity @a[x=-1341,y=67,z=675,distance=..15,tag=Karen] run clone -730 64 -328 -728 67 -328 -1342 73 675

#Lance
execute if block -1341 78 750 quartz_pillar as @a[x=-1344,y=77,z=746,dx=6,dy=10,dz=5,tag=Lance] run playsound minecraft:entity.iron_golem.death ambient @s ~ ~ ~ 1 1 1
execute if block -1341 78 750 quartz_pillar as @a[x=-1344,y=77,z=746,dx=6,dy=10,dz=5,tag=Lance] run fill -1343 82 750 -1339 78 750 air
execute unless entity @a[x=-1344,y=77,z=746,dx=6,dy=10,dz=5,tag=Lance] run clone -730 64 -328 -726 68 -328 -1343 78 750















































#