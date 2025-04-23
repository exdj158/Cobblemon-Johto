#Transforms Cut Trees from not cut and inaccessable to cut down

#Route 29
execute as @s[x=-489,y=63,z=-523,distance=..20] run fill -488 64 -523 -491 69 -523 air
execute as @s[x=-489,y=63,z=-523,distance=..20] at @e[x=-489,y=64,z=-523,distance=..10,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=-489,y=63,z=-523,distance=..20] as @e[x=-489,y=64,z=-523,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=-489,y=63,z=-523,distance=..20] run kill @e[x=-489,y=64,z=-523,distance=..10,tag=CutTree,type=interaction]

#Route 29 (Cherrygrove side)
execute as @s[x=-436,y=63,z=-536,distance=..20] run fill -436 64 -536 -436 69 -533 air
execute as @s[x=-436,y=63,z=-536,distance=..20] at @e[x=-436,y=64,z=-536,distance=..10,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=-436,y=63,z=-536,distance=..20] as @e[x=-436,y=64,z=-536,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=-436,y=63,z=-536,distance=..20] run kill @e[x=-436,y=64,z=-536,distance=..10,tag=CutTree,type=interaction]

#Viridian City (Lake)
execute as @s[x=-1632,y=63,z=19,distance=..20] run fill -1634 64 19 -1629 69 19 air replace barrier
execute as @s[x=-1632,y=63,z=19,distance=..20] at @e[x=-1632,y=64,z=19,distance=..10,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=-1632,y=63,z=19,distance=..20] as @e[x=-1632,y=64,z=19,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=-1632,y=63,z=19,distance=..20] run kill @e[x=-1632,y=64,z=19,distance=..10,tag=CutTree,type=interaction]

#Viridian City (Trees)
execute as @s[x=-1661,y=63,z=116,distance=..20] run fill -1661 64 116 -1661 69 113 air replace barrier
execute as @s[x=-1661,y=63,z=116,distance=..20] at @e[x=-1661,y=64,z=116,distance=..10,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=-1661,y=63,z=116,distance=..20] as @e[x=-1661,y=64,z=116,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=-1661,y=63,z=116,distance=..20] run kill @e[x=-1661,y=64,z=116,distance=..10,tag=CutTree,type=interaction]

#Route 2 (Viridian Side)
execute as @s[x=-1706,y=63,z=192,distance=..20] run fill -1706 64 189 -1706 69 195 air replace barrier
execute as @s[x=-1706,y=63,z=192,distance=..20] at @e[x=-1706,y=64,z=192,distance=..10,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=-1706,y=63,z=192,distance=..20] as @e[x=-1706,y=64,z=192,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=-1706,y=63,z=192,distance=..20] run kill @e[x=-1706,y=64,z=192,distance=..10,tag=CutTree,type=interaction]

#Route 2 (Forest Side)
execute as @s[x=-1706,y=63,z=226,distance=..20] run fill -1706 64 229 -1706 69 226 air replace barrier
execute as @s[x=-1706,y=63,z=226,distance=..20] at @e[x=-1706,y=64,z=226,distance=..10,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=-1706,y=63,z=226,distance=..20] as @e[x=-1706,y=64,z=226,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=-1706,y=63,z=226,distance=..20] run kill @e[x=-1706,y=64,z=226,distance=..10,tag=CutTree,type=interaction]

#Route 2 (North)
execute as @s[x=-1689,y=63,z=466,distance=..20] run fill -1685 64 466 -1692 69 466 air replace barrier
execute as @s[x=-1689,y=63,z=466,distance=..20] at @e[x=-1689,y=64,z=466,distance=..10,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=-1689,y=63,z=466,distance=..20] as @e[x=-1689,y=64,z=466,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=-1689,y=63,z=466,distance=..20] run kill @e[x=-1689,y=64,z=466,distance=..10,tag=CutTree,type=interaction]

#Cerulean City
execute as @s[x=-2764,y=63,z=667,distance=..20] run fill -2765 64 667 -2761 69 667 air replace barrier
execute as @s[x=-2764,y=63,z=667,distance=..20] at @e[x=-2764,y=64,z=667,distance=..10,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=-2764,y=63,z=667,distance=..20] as @e[x=-2764,y=64,z=667,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=-2764,y=63,z=667,distance=..20] run kill @e[x=-2764,y=64,z=667,distance=..10,tag=CutTree,type=interaction]

#Route 8 (Lavender Side)
execute as @s[x=-3103,y=63,z=322,distance=..20] run fill -3103 64 321 -3103 69 323 air replace barrier
execute as @s[x=-3103,y=63,z=322,distance=..20] at @e[x=-3103,y=64,z=322,distance=..10,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=-3103,y=63,z=322,distance=..20] as @e[x=-3103,y=64,z=322,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=-3103,y=63,z=322,distance=..20] run kill @e[x=-3103,y=64,z=322,distance=..10,tag=CutTree,type=interaction]

#Route 8 (Saffron Side)
execute as @s[x=-3034,y=63,z=310,distance=..20] run fill -3034 64 309 -3034 69 311 air replace barrier
execute as @s[x=-3034,y=63,z=310,distance=..20] at @e[x=-3034,y=64,z=310,distance=..10,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=-3034,y=63,z=310,distance=..20] as @e[x=-3034,y=64,z=310,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=-3034,y=63,z=310,distance=..20] run kill @e[x=-3034,y=64,z=310,distance=..10,tag=CutTree,type=interaction]

#Route 9
execute as @s[x=-2890,y=63,z=736,distance=..20] run fill -2890 64 733 -2890 69 740 air replace barrier
execute as @s[x=-2890,y=63,z=736,distance=..20] at @e[x=-2890,y=64,z=736,distance=..10,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=-2890,y=63,z=736,distance=..20] as @e[x=-2890,y=64,z=736,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=-2890,y=63,z=736,distance=..20] run kill @e[x=-2890,y=64,z=736,distance=..10,tag=CutTree,type=interaction]

#Vermilion
execute as @s[x=-2728,y=63,z=-79,distance=..20] run fill -2732 64 -79 -2723 67 -79 air replace barrier
execute as @s[x=-2728,y=63,z=-79,distance=..20] at @e[x=-2728,y=64,z=-79,distance=..10,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=-2728,y=63,z=-79,distance=..20] as @e[x=-2728,y=64,z=-79,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=-2728,y=63,z=-79,distance=..20] run kill @e[x=-2728,y=64,z=-79,distance=..10,tag=CutTree,type=interaction]

#Route 10
execute as @s[x=-3274,y=63,z=677,distance=..20] run fill -3274 64 675 -3274 67 680 air replace barrier
execute as @s[x=-3274,y=63,z=677,distance=..20] at @e[x=-3274,y=64,z=677,distance=..10,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=-3274,y=63,z=677,distance=..20] as @e[x=-3274,y=64,z=677,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=-3274,y=63,z=677,distance=..20] run kill @e[x=-3274,y=64,z=677,distance=..10,tag=CutTree,type=interaction]

#Celadon
execute as @s[x=-2420,y=63,z=268,distance=..20] run fill -2423 64 268 -2418 67 268 air replace barrier
execute as @s[x=-2420,y=63,z=268,distance=..20] at @e[x=-2420,y=64,z=268,distance=..10,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=-2420,y=63,z=268,distance=..20] as @e[x=-2420,y=64,z=268,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=-2420,y=63,z=268,distance=..20] run kill @e[x=-2420,y=64,z=268,distance=..10,tag=CutTree,type=interaction]

#Route 13
execute as @s[x=-3208,y=63,z=-327,distance=..20] run fill -3208 64 -332 -3208 67 -325 air replace barrier
execute as @s[x=-3208,y=63,z=-327,distance=..20] at @e[x=-3208,y=64,z=-327,distance=..10,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=-3208,y=63,z=-327,distance=..20] as @e[x=-3208,y=64,z=-327,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=-3208,y=63,z=-327,distance=..20] run kill @e[x=-3208,y=64,z=-327,distance=..10,tag=CutTree,type=interaction]

#Route 14 (near grass)
execute as @s[x=-2905,y=63,z=-432,distance=..20] run fill -2903 64 -432 -2907 69 -432 air replace barrier
execute as @s[x=-2905,y=63,z=-432,distance=..20] at @e[x=-2905,y=64,z=-432,distance=..10,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=-2905,y=63,z=-432,distance=..20] as @e[x=-2905,y=64,z=-432,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=-2905,y=63,z=-432,distance=..20] run kill @e[x=-2905,y=64,z=-432,distance=..10,tag=CutTree,type=interaction]

#Route 14 (between trees)
execute as @s[x=-2931,y=63,z=-474,distance=..20] run fill -2931 64 -472 -2931 67 -477 air replace barrier
execute as @s[x=-2931,y=63,z=-474,distance=..20] at @e[x=-2931,y=64,z=-474,distance=..10,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=-2931,y=63,z=-474,distance=..20] as @e[x=-2931,y=64,z=-474,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=-2931,y=63,z=-474,distance=..20] run kill @e[x=-2931,y=64,z=-474,distance=..10,tag=CutTree,type=interaction]

#Route 14 (Near R15 Ledges)
execute as @s[x=-2878,y=63,z=-533,distance=..20] run fill -2878 64 -531 -2878 68 -536 air replace barrier
execute as @s[x=-2878,y=63,z=-533,distance=..20] at @e[x=-2878,y=64,z=-533,distance=..10,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=-2878,y=63,z=-533,distance=..20] as @e[x=-2878,y=64,z=-533,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=-2878,y=63,z=-533,distance=..20] run kill @e[x=-2878,y=64,z=-533,distance=..10,tag=CutTree,type=interaction]

#Route 16
execute as @s[x=-2191,y=63,z=329,distance=..20] run fill -2192 64 329 -2188 68 329 air replace barrier
execute as @s[x=-2191,y=63,z=329,distance=..20] at @e[x=-2191,y=64,z=329,distance=..10,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=-2191,y=63,z=329,distance=..20] as @e[x=-2191,y=64,z=329,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=-2191,y=63,z=329,distance=..20] run kill @e[x=-2191,y=64,z=329,distance=..10,tag=CutTree,type=interaction]

#Route 25
execute as @s[x=-2950,y=63,z=1001,distance=..7] run fill -2949 64 1001 -2953 67 1001 air replace barrier
execute as @s[x=-2950,y=63,z=1001,distance=..7] at @e[x=-2950,y=64,z=1001,distance=..10,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=-2950,y=63,z=1001,distance=..7] as @e[x=-2950,y=64,z=1001,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=-2950,y=63,z=1001,distance=..7] run kill @e[x=-2950,y=64,z=1001,distance=..10,tag=CutTree,type=interaction]

#Route 25 (cape side)
execute as @s[x=-2960,y=63,z=1004,distance=..7] run fill -2957 64 1004 -2963 67 1004 air replace barrier
execute as @s[x=-2960,y=63,z=1004,distance=..7] at @e[x=-2960,y=64,z=1004,distance=..5,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=-2960,y=63,z=1004,distance=..7] as @e[x=-2960,y=64,z=1004,distance=..5,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=-2960,y=63,z=1004,distance=..7] run kill @e[x=-2960,y=64,z=1004,distance=..5,tag=CutTree,type=interaction]














































#