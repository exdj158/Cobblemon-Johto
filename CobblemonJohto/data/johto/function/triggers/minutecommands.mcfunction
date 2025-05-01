#Commands that run once a minute, very low priority but also can happen whenever.


#Regenerates Cut Trees
function johto:hms/cutregen

#Regenerates Rock Smash rocks
execute as @a[tag=RockSmash] at @s as @e[tag=RockSmash,type=armor_stand,distance=40..150] run function johto:hms/rocksmashregen


#Runs Swarm Spawns (changes up biomes on routes as needed)
function johto:world/swarmspawns


#Spawns in the Weekday NPCs if player is nearby
#Mon
execute if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=1}] if entity @a[x=913,y=63,z=-54,distance=..75] unless entity @e[x=913,y=63,z=-54,distance=..3,type=cobblemon:npc] run npcspawnat 913 64 -54 weekday_monica 1
execute if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=1}] if entity @a[x=913,y=63,z=-54,distance=..75] unless entity @e[x=913,y=63,z=-54,distance=..3,type=interaction] positioned 913 63 -54 run function johto:spawn/npcboxes

execute unless entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=1}] run tp @e[x=913,y=63,z=-54,distance=..3,type=cobblemon:npc] 10000000 -50000 -10000000
execute unless entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=1}] run kill @e[x=913,y=63,z=-54,distance=..3,type=interaction]

#Tues
execute if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=2}] if entity @a[x=-482,y=64,z=-535,distance=..75] unless entity @e[x=-482,y=63,z=-535,distance=..3,type=cobblemon:npc] run npcspawnat -482 64 -535 weekday_tuscany 1
execute if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=2}] if entity @a[x=-482,y=64,z=-535,distance=..75] unless entity @e[x=-482,y=63,z=-535,distance=..3,type=interaction] positioned -482 64 -535 run function johto:spawn/npcboxes

execute unless entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=2}] run tp @e[x=-482,y=64,z=-535,distance=..3,type=cobblemon:npc] 10000000 -50000 -10000000
execute unless entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=2}] run kill @e[x=-482,y=64,z=-535,distance=..3,type=interaction]

#Wed
execute if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=3}] if entity @a[x=-56,y=64,z=722,distance=..75] unless entity @e[x=-56,y=63,z=722,distance=..3,type=cobblemon:npc] run npcspawnat -56 64 722 weekday_wesley 1
execute if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=3}] if entity @a[x=-56,y=64,z=722,distance=..75] unless entity @e[x=-56,y=63,z=722,distance=..3,type=interaction] positioned -56 64 722 run function johto:spawn/npcboxes

execute unless entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=3}] run tp @e[x=-56,y=64,z=722,distance=..3,type=cobblemon:npc] 10000000 -50000 -10000000
execute unless entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=3}] run kill @e[x=-56,y=64,z=722,distance=..3,type=interaction]

#Thurs
execute if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=4}] if entity @a[x=236,y=64,z=-6,distance=..75] unless entity @e[x=236,y=63,z=-6,distance=..3,type=cobblemon:npc] run npcspawnat 236 64 -6 weekday_arthur 1
execute if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=4}] if entity @a[x=236,y=64,z=-6,distance=..75] unless entity @e[x=236,y=63,z=-6,distance=..3,type=interaction] positioned 236 64 -6 run function johto:spawn/npcboxes

execute unless entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=4}] run tp @e[x=236,y=64,z=-6,distance=..3,type=cobblemon:npc] 10000000 -50000 -10000000
execute unless entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=4}] run kill @e[x=236,y=64,z=-6,distance=..3,type=interaction]

#Friday
execute if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=5}] if entity @a[x=127,y=64,z=-545,distance=..75] unless entity @e[x=127,y=63,z=-6,distance=..3,type=cobblemon:npc] run npcspawnat 127 64 -545 weekday_frieda 1
execute if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=5}] if entity @a[x=127,y=64,z=-545,distance=..75] unless entity @e[x=127,y=63,z=-6,distance=..3,type=interaction] positioned 127 64 -545 run function johto:spawn/npcboxes

execute unless entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=5}] run tp @e[x=127,y=64,z=-545,distance=..3,type=cobblemon:npc] 10000000 -50000 -10000000
execute unless entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=5}] run kill @e[x=127,y=64,z=-545,distance=..3,type=interaction]

#Saturday
execute if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=6}] if entity @a[x=-663,y=64,z=225,distance=..75] unless entity @e[x=-663,y=63,z=225,distance=..3,type=cobblemon:npc] run npcspawnat -663 64 225 weekday_santos 1
execute if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=6}] if entity @a[x=-663,y=64,z=225,distance=..75] unless entity @e[x=-663,y=63,z=225,distance=..3,type=interaction] positioned -663 64 225 run function johto:spawn/npcboxes

execute unless entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=6}] run tp @e[x=-663,y=64,z=225,distance=..3,type=cobblemon:npc] 10000000 -50000 -10000000
execute unless entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=6}] run kill @e[x=-663,y=64,z=225,distance=..3,type=interaction]

#Sunday
execute if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=7}] if entity @a[x=335,y=64,z=113,distance=..75] unless entity @e[x=335,y=63,z=113,distance=..3,type=cobblemon:npc] run npcspawnat 335 64 113 weekday_sunny 1
execute if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=7}] if entity @a[x=335,y=64,z=113,distance=..75] unless entity @e[x=335,y=63,z=113,distance=..3,type=interaction] positioned 335 64 113 run function johto:spawn/npcboxes

execute unless entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=7}] run tp @e[x=335,y=64,z=113,distance=..3,type=cobblemon:npc] 10000000 -50000 -10000000
execute unless entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=7}] run kill @e[x=335,y=64,z=113,distance=..3,type=interaction]

#All Week Siblings achievement
advancement grant @a[tag=Dialogue187,tag=Dialogue188,tag=Dialogue189,tag=Dialogue190,tag=Dialogue191,tag=Dialogue192,tag=Dialogue193] only johto:sidequests/weeksiblings




#Night Only Trainers

#tps in Trainers

#Route 34 Policeman
execute at @a[x=477,y=64,z=-536,distance=..100] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={DayTime=13000..}] unless entity @e[x=477,y=64,z=-536,dy=3,type=cobblemon:npc] run particle cloud 477 64 -536 1 1 1 1 100
execute at @a[x=477,y=64,z=-536,distance=..100] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={DayTime=13000..}] unless entity @e[x=477,y=64,z=-536,dy=3,type=cobblemon:npc] run npcspawnat 477 64 -536 policemankeith 1

#Route 35 Policeman
execute at @a[x=504,y=64,z=-100,distance=..100] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={DayTime=13000..}] unless entity @e[x=504,y=64,z=-100,dy=3,type=cobblemon:npc] run particle cloud 504 64 -100 1 1 1 1 100
execute at @a[x=504,y=64,z=-100,distance=..100] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={DayTime=13000..}] unless entity @e[x=504,y=64,z=-100,dy=3,type=cobblemon:npc] run npcspawnat 504 64 -100 policemandirk 1

#Route 39 Poke Fan
execute at @a[x=787,y=64,z=157,distance=..100] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={DayTime=13000..}] unless entity @e[x=787,y=64,z=157,dy=3,type=cobblemon:npc] run particle cloud 787 64 157 1 1 1 1 100
execute at @a[x=787,y=64,z=157,distance=..100] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={DayTime=13000..}] unless entity @e[x=787,y=64,z=157,dy=3,type=cobblemon:npc] run npcspawnat 787 64 157 pokefanjamie 1



#tps trainers out

#Route 34 Policeman
execute if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={DayTime=0..12999}] if entity @e[x=477,y=64,z=-536,dy=3,type=cobblemon:npc] run particle cloud 477 64 -536 1 1 1 1 100
execute if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={DayTime=0..12999}] if entity @e[x=477,y=64,z=-536,dy=3,type=cobblemon:npc] run tp @e[x=477,y=64,z=-536,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000


#Route 35 Policeman
execute if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={DayTime=0..12999}] if entity @e[x=504,y=64,z=-100,dy=3,type=cobblemon:npc] run particle cloud 504 64 -100 1 1 1 1 100
execute if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={DayTime=0..12999}] if entity @e[x=504,y=64,z=-100,dy=3,type=cobblemon:npc] run tp @e[x=504,y=64,z=-100,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000


#Route 39 Poke Fan
execute if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={DayTime=0..12999}] if entity @e[x=787,y=64,z=157,dy=3,type=cobblemon:npc] run particle cloud 787 64 157 1 1 1 1 100
execute if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={DayTime=0..12999}] if entity @e[x=787,y=64,z=157,dy=3,type=cobblemon:npc] run tp @e[x=787,y=64,z=157,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000











#