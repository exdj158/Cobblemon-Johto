#Transforms Cut Trees from not cut and inaccessable to cut down

#Route 29
execute as @s[x=-489,y=63,z=-523,distance=..20] run fill -488 64 -523 -491 69 -523 air
execute as @s[x=-489,y=63,z=-523,distance=..20] at @e[x=-489,y=64,z=-523,distance=..10,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=-489,y=63,z=-523,distance=..20] as @e[x=-489,y=64,z=-523,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=-489,y=63,z=-523,distance=..20] run kill @e[x=-489,y=64,z=-523,distance=..10,tag=CutTree,type=interaction]










































#