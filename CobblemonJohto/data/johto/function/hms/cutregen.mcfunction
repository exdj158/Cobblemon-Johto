#When a player wanders away, regenerates the cut trees

#Viridian Lake
execute as @a[x=-489,y=64,z=-523,distance=30..150] run fill -488 64 -523 -491 69 -523 barrier
execute as @a[x=-489,y=64,z=-523,distance=30..150] as @e[x=-489,y=64,z=-523,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"nether_gold_ore",Count:1}]}
execute as @a[x=-489,y=64,z=-523,distance=30..150] as @e[x=-489,y=64,z=-523,distance=..10,type=minecraft:armor_stand,tag=CutTree] at @s run summon minecraft:interaction ~ ~ ~ {width:1.5,height:1.5,response:1,Tags:[CutTree]}
execute as @a[x=-489,y=64,z=-523,distance=30..150] as @e[x=-489,y=64,z=-523,distance=..10,type=minecraft:armor_stand,tag=CutTree] at @s run summon minecraft:interaction ~ ~1 ~ {width:1.5,height:1.5,response:1,Tags:[CutTree]}





































#