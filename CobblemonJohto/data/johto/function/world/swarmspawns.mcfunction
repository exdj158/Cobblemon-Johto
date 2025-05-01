#Runs every minute regardless of active or not. Will clean up any past swarms
#function johto:world/swarmspawns

#https://www.serebii.net/heartgoldsoulsilver/swarms.shtml

#Activated by first person to tune in to Oak and Mary's station in Goldenrod
#If reference armor stand has the tag SwarmActive, run this function
#This function then rolls for an RNG score if score=0 on reference armor stand
#rng value rolls for a Pokemon
#Renames the armor stand to according Pokemon and secondary armor stand to route it spawns on
#     Following this function in the Radio function, can then reference @e's in the Tellraw for specific Pokemon and locations
#Function then goes over each route and checks if existing spawners are present. If air, clone in the swarm spawners
#Upon midnight in the daily commands function, remove SwarmActive tag, reset rng value to 0





#Renames armor stands with specific Pokemon and locations
execute if entity @e[x=-864,y=69,z=-205,dy=3,scores={rng=1..3},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-205,dy=3] {CustomName:'{"text":"Chansey"}'}
execute if entity @e[x=-864,y=69,z=-205,dy=3,scores={rng=4..6},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-205,dy=3] {CustomName:'{"text":"Ditto"}'}
execute if entity @e[x=-864,y=69,z=-205,dy=3,scores={rng=7..9},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-205,dy=3] {CustomName:'{"text":"Marill"}'}
execute if entity @e[x=-864,y=69,z=-205,dy=3,scores={rng=10..12},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-205,dy=3] {CustomName:'{"text":"Yanma"}'}
execute if entity @e[x=-864,y=69,z=-205,dy=3,scores={rng=13..15},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-205,dy=3] {CustomName:'{"text":"Dunsparce"}'}
execute if entity @e[x=-864,y=69,z=-205,dy=3,scores={rng=16..17},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-205,dy=3] {CustomName:'{"text":"Snubbull"}'}
execute if entity @e[x=-864,y=69,z=-205,dy=3,scores={rng=18..20},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-205,dy=3] {CustomName:'{"text":"Qwilfish"}'}
execute if entity @e[x=-864,y=69,z=-205,dy=3,scores={rng=21..22},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-205,dy=3] {CustomName:'{"text":"Remoraid"}'}
execute if entity @e[x=-864,y=69,z=-205,dy=3,scores={rng=23..25},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-205,dy=3] {CustomName:'{"text":"Poochyena"}'}
execute if entity @e[x=-864,y=69,z=-205,dy=3,scores={rng=26..28},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-205,dy=3] {CustomName:'{"text":"Wingull"}'}
execute if entity @e[x=-864,y=69,z=-205,dy=3,scores={rng=29..31},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-205,dy=3] {CustomName:'{"text":"Ralts"}'}
execute if entity @e[x=-864,y=69,z=-205,dy=3,scores={rng=32..34},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-205,dy=3] {CustomName:'{"text":"Sableye"}'}
execute if entity @e[x=-864,y=69,z=-205,dy=3,scores={rng=35..37},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-205,dy=3] {CustomName:'{"text":"Mawile"}'}
execute if entity @e[x=-864,y=69,z=-205,dy=3,scores={rng=38..40},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-205,dy=3] {CustomName:'{"text":"Gulpin"}'}
execute if entity @e[x=-864,y=69,z=-205,dy=3,scores={rng=41..43},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-205,dy=3] {CustomName:'{"text":"Swablu"}'}
execute if entity @e[x=-864,y=69,z=-205,dy=3,scores={rng=44..46},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-205,dy=3] {CustomName:'{"text":"Whiscash"}'}
execute if entity @e[x=-864,y=69,z=-205,dy=3,scores={rng=47..49},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-205,dy=3] {CustomName:'{"text":"Baltoy"}'}
execute if entity @e[x=-864,y=69,z=-205,dy=3,scores={rng=50..52},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-205,dy=3] {CustomName:'{"text":"Clamperl"}'}
execute if entity @e[x=-864,y=69,z=-205,dy=3,scores={rng=53..55},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-205,dy=3] {CustomName:'{"text":"Relicanth"}'}
execute if entity @e[x=-864,y=69,z=-205,dy=3,scores={rng=56..58},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-205,dy=3] {CustomName:'{"text":"Luvdisc"}'}
execute if entity @e[x=-864,y=69,z=-205,dy=3,scores={rng=59..61},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-205,dy=3] {CustomName:'{"text":"Kricketot"}'}
execute if entity @e[x=-864,y=69,z=-205,dy=3,scores={rng=62..},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-205,dy=3] {CustomName:'{"text":"Buneary"}'}

#Routes
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=1..3},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-207,dy=3] {CustomName:'{"text":"Route 13"}'}
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=4..6},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-207,dy=3] {CustomName:'{"text":"Route 47"}'}
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=7..9},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-207,dy=3] {CustomName:'{"text":"Mt. Mortar"}'}
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=10..12},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-207,dy=3] {CustomName:'{"text":"Route 35"}'}
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=13..15},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-207,dy=3] {CustomName:'{"text":"Dark Cave"}'}
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=16..17},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-207,dy=3] {CustomName:'{"text":"Route 38"}'}
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=18..20},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-207,dy=3] {CustomName:'{"text":"Route 32"}'}
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=21..22},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-207,dy=3] {CustomName:'{"text":"Route 44"}'}
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=23..25},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-207,dy=3] {CustomName:'{"text":"Route 1"}'}
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=26..28},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-207,dy=3] {CustomName:'{"text":"Vermillion City"}'}
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=29..31},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-207,dy=3] {CustomName:'{"text":"Route 34"}'}
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=32..34},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-207,dy=3] {CustomName:'{"text":"Route 9"}'}
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=35..37},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-207,dy=3] {CustomName:'{"text":"Route 9"}'}
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=38..40},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-207,dy=3] {CustomName:'{"text":"Route 3"}'}
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-207,dy=3] {CustomName:'{"text":"Route 45"}'}
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=44..46},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-207,dy=3] {CustomName:'{"text":"Violet City"}'}
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=47..49},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-207,dy=3] {CustomName:'{"text":"Route 3"}'}
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=50..52},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-207,dy=3] {CustomName:'{"text":"Route 19"}'}
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=53..55},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-207,dy=3] {CustomName:'{"text":"Route 12"}'}
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=56..58},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-207,dy=3] {CustomName:'{"text":"Route 27"}'}
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=59..61},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-207,dy=3] {CustomName:'{"text":"Viridian Forest"}'}
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=62..},tag=SwarmActive] run data merge entity @e[limit=1,x=-864,y=69,z=-207,dy=3] {CustomName:'{"text":"Route 25"}'}

#Switches biomes to give a unique change for spawns to them flood when active

#R13
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=1..3},tag=SwarmActive] run fillbiome -3277 60 -341 -3229 70 -325 minecraft:bamboo_jungle
execute unless entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=1..3},tag=SwarmActive] run fillbiome -3277 60 -341 -3229 70 -325 minecraft:jungle

#R47
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=4..6},tag=SwarmActive] run fillbiome 1412 85 -369 1432 90 -356 minecraft:bamboo_jungle
execute unless entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=4..6},tag=SwarmActive] run fillbiome 1412 85 -369 1432 90 -356 minecraft:jungle

#Mt. Mortar
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=7..9},tag=SwarmActive] run fillbiome 148 51 245 175 59 294 minecraft:bamboo_jungle
execute unless entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=7..9},tag=SwarmActive] run fillbiome 148 51 245 175 59 294 minecraft:jungle

#R35
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=10..12},tag=SwarmActive] run fillbiome 430 62 -210 486 65 -108 minecraft:bamboo_jungle
execute unless entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=10..12},tag=SwarmActive] run fillbiome 430 62 -210 486 65 -108 minecraft:jungle

#Dark Cave
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=13..15},tag=SwarmActive] run fillbiome -295 62 -86 -216 66 -12 minecraft:bamboo_jungle
execute unless entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=13..15},tag=SwarmActive] run fillbiome -295 62 -86 -216 66 -12 minecraft:jungle

#R38
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=16..17},tag=SwarmActive] run fillbiome 528 65 205 667 67 265 minecraft:bamboo_jungle
execute unless entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=16..17},tag=SwarmActive] run fillbiome 528 65 205 667 67 265 minecraft:jungle

#R32
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=18..20},tag=SwarmActive] run fillbiome 107 60 -506 177 65 -387 minecraft:bamboo_jungle
execute unless entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=18..20},tag=SwarmActive] run fillbiome 107 60 -506 177 65 -387 minecraft:jungle

#R44
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=21..22},tag=SwarmActive] run fillbiome -439 58 145 -220 65 221 minecraft:bamboo_jungle
execute unless entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=21..22},tag=SwarmActive] run fillbiome -439 58 145 -220 65 221 minecraft:jungle

#R1
execute if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=23..25},tag=SwarmActive] run fillbiome -1748 62 -240 -1636 67 -162 minecraft:bamboo_jungle
execute unless entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=23..25},tag=SwarmActive] run fillbiome -1748 62 -240 -1636 67 -162 minecraft:jungle


#Vermillion City
#execute unless block -2674 61 -6 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=26..28},tag=SwarmActive] run clone -825 65 -151 -825 65 -151 -2674 61 -6
#execute unless block -2675 61 -40 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=26..28},tag=SwarmActive] run clone -825 65 -151 -825 65 -151 -2675 61 -40
#execute unless block -2677 61 -78 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=26..28},tag=SwarmActive] run clone -825 65 -151 -825 65 -151 -2677 61 -78
#execute unless block -2691 61 -98 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=26..28},tag=SwarmActive] run clone -825 65 -151 -825 65 -151 -2691 61 -98
#execute unless block -2731 61 -99 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=26..28},tag=SwarmActive] run clone -825 65 -151 -825 65 -151 -2731 61 -99
#execute unless block -2753 61 -82 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=26..28},tag=SwarmActive] run clone -825 65 -151 -825 65 -151 -2753 61 -82
#execute unless block -2801 61 -79 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=26..28},tag=SwarmActive] run clone -825 65 -151 -825 65 -151 -2801 61 -79

#execute if block -2674 61 -6 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2674 61 -6 minecraft:air
#execute if block -2675 61 -40 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2675 61 -40 minecraft:air
#execute if block -2677 61 -78 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2677 61 -78 minecraft:air
#execute if block -2691 61 -98 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2691 61 -98 minecraft:air
#execute if block -2731 61 -99 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2731 61 -99 minecraft:air
#execute if block -2753 61 -82 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2753 61 -82 minecraft:air
#execute if block -2801 61 -79 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2801 61 -79 minecraft:air


#R34 29..31
#execute unless block 494 62 -564 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=29..31},tag=SwarmActive] run clone -826 65 -151 -826 65 -151 494 62 -564
#execute unless block 493 62 -508 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=29..31},tag=SwarmActive] run clone -826 65 -151 -826 65 -151 493 62 -508
#execute unless block 482 62 -593 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=29..31},tag=SwarmActive] run clone -826 65 -151 -826 65 -151 482 62 -593
#execute unless block 471 62 -665 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=29..31},tag=SwarmActive] run clone -826 65 -151 -826 65 -151 471 62 -665
#execute unless block 470 62 -651 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=29..31},tag=SwarmActive] run clone -826 65 -151 -826 65 -151 470 62 -651
#execute unless block 465 62 -638 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=29..31},tag=SwarmActive] run clone -826 65 -151 -826 65 -151 465 62 -638
#execute unless block 461 62 -521 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=29..31},tag=SwarmActive] run clone -826 65 -151 -826 65 -151 461 62 -521
#execute unless block 452 62 -630 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=29..31},tag=SwarmActive] run clone -826 65 -151 -826 65 -151 452 62 -630
#execute unless block 449 62 -645 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=29..31},tag=SwarmActive] run clone -826 65 -151 -826 65 -151 449 62 -645
#execute unless block 449 62 -610 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=29..31},tag=SwarmActive] run clone -826 65 -151 -826 65 -151 449 62 -610
#execute unless block 446 62 -610 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=29..31},tag=SwarmActive] run clone -826 65 -151 -826 65 -151 446 62 -610
#execute unless block 446 62 -521 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=29..31},tag=SwarmActive] run clone -826 65 -151 -826 65 -151 446 62 -521
#execute unless block 446 62 -505 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=29..31},tag=SwarmActive] run clone -826 65 -151 -826 65 -151 446 62 -505
#execute unless block 436 62 -632 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=29..31},tag=SwarmActive] run clone -826 65 -151 -826 65 -151 436 62 -632
#execute unless block 436 62 -618 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=29..31},tag=SwarmActive] run clone -826 65 -151 -826 65 -151 436 62 -618
#execute unless block 425 62 -652 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=29..31},tag=SwarmActive] run clone -826 65 -151 -826 65 -151 425 62 -652
#execute unless block 425 62 -598 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=29..31},tag=SwarmActive] run clone -826 65 -151 -826 65 -151 425 62 -598
#execute unless block 424 62 -669 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=29..31},tag=SwarmActive] run clone -826 65 -151 -826 65 -151 424 62 -669

#execute if block 493 62 -508 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock 494 62 -564 minecraft:air
#execute if block 482 62 -593 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock 493 62 -508 minecraft:air
#execute if block 471 62 -665 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock 482 62 -593 minecraft:air
#execute if block 470 62 -651 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock 471 62 -665 minecraft:air
#execute if block 465 62 -638 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock 470 62 -651 minecraft:air
#execute if block 461 62 -521 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock 465 62 -638 minecraft:air
#execute if block 452 62 -630 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock 461 62 -521 minecraft:air
#execute if block 449 62 -645 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock 452 62 -630 minecraft:air
#execute if block 449 62 -610 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock 449 62 -645 minecraft:air
#execute if block 446 62 -610 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock 449 62 -610 minecraft:air
#execute if block 446 62 -521 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock 446 62 -610 minecraft:air
#execute if block 446 62 -505 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock 446 62 -521 minecraft:air
#execute if block 436 62 -632 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock 446 62 -505 minecraft:air
#execute if block 436 62 -618 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock 436 62 -632 minecraft:air
#execute if block 425 62 -652 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock 436 62 -618 minecraft:air
#execute if block 425 62 -598 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock 425 62 -652 minecraft:air
#execute if block 424 62 -669 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock 425 62 -598 minecraft:air
#execute if block 494 62 -564 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock 424 62 -669 minecraft:air

#R9 Sableye
#execute unless block -2955 62 771 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=32..34},tag=SwarmActive] run clone -827 65 -151 -827 65 -151 -2955 62 771
#execute unless block -2955 62 755 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=32..34},tag=SwarmActive] run clone -827 65 -151 -827 65 -151 -2955 62 755
#execute unless block -2939 62 771 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=32..34},tag=SwarmActive] run clone -827 65 -151 -827 65 -151 -2939 62 771
#execute unless block -2939 62 755 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=32..34},tag=SwarmActive] run clone -827 65 -151 -827 65 -151 -2939 62 755
#execute unless block -2923 62 771 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=32..34},tag=SwarmActive] run clone -827 65 -151 -827 65 -151 -2923 62 771
#execute unless block -2923 62 755 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=32..34},tag=SwarmActive] run clone -827 65 -151 -827 65 -151 -2923 62 755
#execute unless block -2907 62 771 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=32..34},tag=SwarmActive] run clone -827 65 -151 -827 65 -151 -2907 62 771
#execute unless block -2907 62 755 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=32..34},tag=SwarmActive] run clone -827 65 -151 -827 65 -151 -2907 62 755

#R9 Mawile
#execute unless block -2955 62 771 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=35..37},tag=SwarmActive] run clone -828 65 -151 -828 65 -151 -2955 62 771
#execute unless block -2955 62 755 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=35..37},tag=SwarmActive] run clone -828 65 -151 -828 65 -151 -2955 62 755
#execute unless block -2939 62 771 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=35..37},tag=SwarmActive] run clone -828 65 -151 -828 65 -151 -2939 62 771
#execute unless block -2939 62 755 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=35..37},tag=SwarmActive] run clone -828 65 -151 -828 65 -151 -2939 62 755
#execute unless block -2923 62 771 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=35..37},tag=SwarmActive] run clone -828 65 -151 -828 65 -151 -2923 62 771
#execute unless block -2923 62 755 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=35..37},tag=SwarmActive] run clone -828 65 -151 -828 65 -151 -2923 62 755
#execute unless block -2907 62 771 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=35..37},tag=SwarmActive] run clone -828 65 -151 -828 65 -151 -2907 62 771
#execute unless block -2907 62 755 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=35..37},tag=SwarmActive] run clone -828 65 -151 -828 65 -151 -2907 62 755

#Both Mawile and Sableye Resets
#execute if block -2955 62 771 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2955 62 771 minecraft:air
#execute if block -2955 62 755 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2955 62 755 minecraft:air
#execute if block -2939 62 771 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2939 62 771 minecraft:air
#execute if block -2939 62 755 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2939 62 755 minecraft:air
#execute if block -2923 62 771 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2923 62 771 minecraft:air
#execute if block -2923 62 755 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2923 62 755 minecraft:air
#execute if block -2907 62 771 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2907 62 771 minecraft:air
#execute if block -2907 62 755 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2907 62 755 minecraft:air


#R3 Gulpin
#execute unless block -2193 62 631 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=38..40},tag=SwarmActive] run clone -829 65 -151 -829 65 -151 -2193 62 631
#execute unless block -2193 62 616 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=38..40},tag=SwarmActive] run clone -829 65 -151 -829 65 -151 -2193 62 616
#execute unless block -2193 62 601 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=38..40},tag=SwarmActive] run clone -829 65 -151 -829 65 -151 -2193 62 601
#execute unless block -2177 62 631 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=38..40},tag=SwarmActive] run clone -829 65 -151 -829 65 -151 -2177 62 631
#execute unless block -2177 62 616 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=38..40},tag=SwarmActive] run clone -829 65 -151 -829 65 -151 -2177 62 616
#execute unless block -2177 62 601 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=38..40},tag=SwarmActive] run clone -829 65 -151 -829 65 -151 -2177 62 601
#execute unless block -2161 62 616 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=38..40},tag=SwarmActive] run clone -829 65 -151 -829 65 -151 -2161 62 616
#execute unless block -2161 62 601 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=38..40},tag=SwarmActive] run clone -829 65 -151 -829 65 -151 -2161 62 601
#execute unless block -2041 62 618 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=38..40},tag=SwarmActive] run clone -829 65 -151 -829 65 -151 -2041 62 618
#execute unless block -2041 62 603 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=38..40},tag=SwarmActive] run clone -829 65 -151 -829 65 -151 -2041 62 603
#execute unless block -2021 62 618 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=38..40},tag=SwarmActive] run clone -829 65 -151 -829 65 -151 -2021 62 618
#execute unless block -2021 62 603 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=38..40},tag=SwarmActive] run clone -829 65 -151 -829 65 -151 -2021 62 603
#execute unless block -2001 62 618 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=38..40},tag=SwarmActive] run clone -829 65 -151 -829 65 -151 -2001 62 618
#execute unless block -2001 62 603 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=38..40},tag=SwarmActive] run clone -829 65 -151 -829 65 -151 -2001 62 603
#execute unless block -1981 62 618 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=38..40},tag=SwarmActive] run clone -829 65 -151 -829 65 -151 -1981 62 618
#execute unless block -1981 62 603 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=38..40},tag=SwarmActive] run clone -829 65 -151 -829 65 -151 -1981 62 603

#R3 Gulpin and Baltoy resets
#execute if block -2193 62 631 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2193 62 631 minecraft:air
#execute if block -2193 62 616 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2193 62 616 minecraft:air
#execute if block -2193 62 601 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2193 62 601 minecraft:air
#execute if block -2177 62 631 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2177 62 631 minecraft:air
#execute if block -2177 62 616 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2177 62 616 minecraft:air
#execute if block -2177 62 601 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2177 62 601 minecraft:air
#execute if block -2161 62 616 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2161 62 616 minecraft:air
#execute if block -2161 62 601 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2161 62 601 minecraft:air
#execute if block -2041 62 618 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2041 62 618 minecraft:air
#execute if block -2041 62 603 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2041 62 603 minecraft:air
#execute if block -2021 62 618 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2021 62 618 minecraft:air
#execute if block -2021 62 603 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2021 62 603 minecraft:air
#execute if block -2001 62 618 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2001 62 618 minecraft:air
#execute if block -2001 62 603 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2001 62 603 minecraft:air
#execute if block -1981 62 618 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -1981 62 618 minecraft:air
#execute if block -1981 62 603 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -1981 62 603 minecraft:air

#R45
#execute unless block -633 62 77 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run clone -830 65 -151 -830 65 -151 -633 62 77
#execute unless block -633 62 -251 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run clone -830 65 -151 -830 65 -151 -633 62 -251
#execute unless block -633 62 -182 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run clone -830 65 -151 -830 65 -151 -633 62 -182
#execute unless block -621 62 -171 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run clone -830 65 -151 -830 65 -151 -621 62 -171
#execute unless block -615 62 -183 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run clone -830 65 -151 -830 65 -151 -615 62 -183
#execute unless block -613 62 77 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run clone -830 65 -151 -830 65 -151 -613 62 77
#execute unless block -613 62 -35 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run clone -830 65 -151 -830 65 -151 -613 62 -35
#execute unless block -611 62 -248 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run clone -830 65 -151 -830 65 -151 -611 62 -248
#execute unless block -610 62 10 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run clone -830 65 -151 -830 65 -151 -610 62 10
#execute unless block -610 62 -278 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run clone -830 65 -151 -830 65 -151 -610 62 -278
#execute unless block -605 62 -171 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run clone -830 65 -151 -830 65 -151 -605 62 -171
#execute unless block -604 62 -48 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run clone -830 65 -151 -830 65 -151 -604 62 -48
#execute unless block -599 62 32 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run clone -830 65 -151 -830 65 -151 -599 62 32
#execute unless block -598 62 -34 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run clone -830 65 -151 -830 65 -151 -598 62 -34
#execute unless block -598 62 -183 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run clone -830 65 -151 -830 65 -151 -598 62 -183
#execute unless block -595 62 10 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run clone -830 65 -151 -830 65 -151 -595 62 10
#execute unless block -592 62 20 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run clone -830 65 -151 -830 65 -151 -592 62 20
#execute unless block -589 62 -47 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run clone -830 65 -151 -830 65 -151 -589 62 -47
#execute unless block -567 62 52 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run clone -830 65 -151 -830 65 -151 -567 62 52
#execute unless block -566 62 67 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run clone -830 65 -151 -830 65 -151 -566 62 67
#execute unless block -566 62 31 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run clone -830 65 -151 -830 65 -151 -566 62 31
#execute unless block -565 62 -137 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run clone -830 65 -151 -830 65 -151 -565 62 -137
#execute unless block -565 62 -119 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run clone -830 65 -151 -830 65 -151 -565 62 -119
#execute unless block -565 62 -100 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run clone -830 65 -151 -830 65 -151 -565 62 -100
#execute unless block -559 62 -227 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run clone -830 65 -151 -830 65 -151 -559 62 -227
#execute unless block -554 62 45 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run clone -830 65 -151 -830 65 -151 -554 62 45
#execute unless block -554 62 -204 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run clone -830 65 -151 -830 65 -151 -554 62 -204
#execute unless block -554 62 -185 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run clone -830 65 -151 -830 65 -151 -554 62 -185
#execute unless block -553 62 -149 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run clone -830 65 -151 -830 65 -151 -553 62 -149
#execute unless block -553 62 -128 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=41..43},tag=SwarmActive] run clone -830 65 -151 -830 65 -151 -553 62 -128


#execute if block -633 62 77 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -633 62 77 minecraft:air
#execute if block -633 62 -251 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -633 62 -251 minecraft:air
#execute if block -633 62 -182 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -633 62 -182 minecraft:air
#execute if block -621 62 -171 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -621 62 -171 minecraft:air
#execute if block -615 62 -183 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -615 62 -183 minecraft:air
#execute if block -613 62 77 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -613 62 77 minecraft:air
#execute if block -613 62 -35 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -613 62 -35 minecraft:air
#execute if block -611 62 -248 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -611 62 -248 minecraft:air
#execute if block -610 62 10 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -610 62 10 minecraft:air
#execute if block -610 62 -278 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -610 62 -278 minecraft:air
#execute if block -605 62 -171 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -605 62 -171 minecraft:air
#execute if block -604 62 -48 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -604 62 -48 minecraft:air
#execute if block -599 62 32 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -599 62 32 minecraft:air
#execute if block -598 62 -34 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -598 62 -34 minecraft:air
#execute if block -598 62 -183 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -598 62 -183 minecraft:air
#execute if block -595 62 10 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -595 62 10 minecraft:air
#execute if block -592 62 20 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -592 62 20 minecraft:air
#execute if block -589 62 -47 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -589 62 -47 minecraft:air
#execute if block -567 62 52 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -567 62 52 minecraft:air
#execute if block -566 62 67 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -566 62 67 minecraft:air
#execute if block -566 62 31 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -566 62 31 minecraft:air
#execute if block -565 62 -137 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -565 62 -137 minecraft:air
#execute if block -565 62 -119 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -565 62 -119 minecraft:air
#execute if block -565 62 -100 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -565 62 -100 minecraft:air
#execute if block -559 62 -227 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -559 62 -227 minecraft:air
#execute if block -554 62 45 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -554 62 45 minecraft:air
#execute if block -554 62 -204 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -554 62 -204 minecraft:air
#execute if block -554 62 -185 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -554 62 -185 minecraft:air
#execute if block -553 62 -149 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -553 62 -149 minecraft:air
#execute if block -553 62 -128 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -553 62 -128 minecraft:air

#Violet City
#execute unless block 41 59 -32 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=44..46},tag=SwarmActive] run clone -831 65 -151 -831 65 -151 41 59 -32
#execute unless block 12 59 -33 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=44..46},tag=SwarmActive] run clone -831 65 -151 -831 65 -151 12 59 -33
#execute unless block 14 59 12 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=44..46},tag=SwarmActive] run clone -831 65 -151 -831 65 -151 14 59 12
#execute unless block 105 59 -34 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=44..46},tag=SwarmActive] run clone -831 65 -151 -831 65 -151 105 59 -34
#execute unless block 104 59 25 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=44..46},tag=SwarmActive] run clone -831 65 -151 -831 65 -151 104 59 25
#execute unless block 131 59 26 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=44..46},tag=SwarmActive] run clone -831 65 -151 -831 65 -151 131 59 26

#execute if block 41 59 -32 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock 41 59 -32 minecraft:air
#execute if block 12 59 -33 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock 12 59 -33 minecraft:air
#execute if block 14 59 12 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock 14 59 12 minecraft:air
#execute if block 105 59 -34 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock 105 59 -34 minecraft:air
#execute if block 104 59 25 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock 104 59 25 minecraft:air
#execute if block 131 59 26 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock 131 59 26 minecraft:air


#R3 Baltoy
#execute unless block -2193 62 631 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=47..49},tag=SwarmActive] run clone -832 65 -151 -832 65 -151 -2193 62 631
#execute unless block -2193 62 616 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=47..49},tag=SwarmActive] run clone -832 65 -151 -832 65 -151 -2193 62 616
#execute unless block -2193 62 601 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=47..49},tag=SwarmActive] run clone -832 65 -151 -832 65 -151 -2193 62 601
#execute unless block -2177 62 631 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=47..49},tag=SwarmActive] run clone -832 65 -151 -832 65 -151 -2177 62 631
#execute unless block -2177 62 616 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=47..49},tag=SwarmActive] run clone -832 65 -151 -832 65 -151 -2177 62 616
#execute unless block -2177 62 601 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=47..49},tag=SwarmActive] run clone -832 65 -151 -832 65 -151 -2177 62 601
#execute unless block -2161 62 616 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=47..49},tag=SwarmActive] run clone -832 65 -151 -832 65 -151 -2161 62 616
#execute unless block -2161 62 601 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=47..49},tag=SwarmActive] run clone -832 65 -151 -832 65 -151 -2161 62 601
#execute unless block -2041 62 618 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=47..49},tag=SwarmActive] run clone -832 65 -151 -832 65 -151 -2041 62 618
#execute unless block -2041 62 603 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=47..49},tag=SwarmActive] run clone -832 65 -151 -832 65 -151 -2041 62 603
#execute unless block -2021 62 618 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=47..49},tag=SwarmActive] run clone -832 65 -151 -832 65 -151 -2021 62 618
#execute unless block -2021 62 603 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=47..49},tag=SwarmActive] run clone -832 65 -151 -832 65 -151 -2021 62 603
#execute unless block -2001 62 618 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=47..49},tag=SwarmActive] run clone -832 65 -151 -832 65 -151 -2001 62 618
#execute unless block -2001 62 603 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=47..49},tag=SwarmActive] run clone -832 65 -151 -832 65 -151 -2001 62 603
#execute unless block -1981 62 618 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=47..49},tag=SwarmActive] run clone -832 65 -151 -832 65 -151 -1981 62 618
#execute unless block -1981 62 603 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=47..49},tag=SwarmActive] run clone -832 65 -151 -832 65 -151 -1981 62 603

#R19
#execute unless block -2392 58 -824 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=50..52},tag=SwarmActive] run clone -833 65 -151 -833 65 -151 -2392 58 -824
#execute unless block -2392 58 -779 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=50..52},tag=SwarmActive] run clone -833 65 -151 -833 65 -151 -2392 58 -779
#execute unless block -2392 58 -734 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=50..52},tag=SwarmActive] run clone -833 65 -151 -833 65 -151 -2392 58 -734
#execute unless block -2392 58 -689 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=50..52},tag=SwarmActive] run clone -833 65 -151 -833 65 -151 -2392 58 -689

#execute if block -2392 58 -824 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2392 58 -824 minecraft:air
#execute if block -2392 58 -779 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2392 58 -779 minecraft:air
#execute if block -2392 58 -734 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2392 58 -734 minecraft:air
#execute if block -2392 58 -689 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2392 58 -689 minecraft:air

#R12
#execute unless block -3306 58 68 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=53..55},tag=SwarmActive] run clone -834 65 -151 -834 65 -151 -3306 58 68
#execute unless block -3306 58 260 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=53..55},tag=SwarmActive] run clone -834 65 -151 -834 65 -151 -3306 58 260
#execute unless block -3306 58 212 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=53..55},tag=SwarmActive] run clone -834 65 -151 -834 65 -151 -3306 58 212
#execute unless block -3306 58 20 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=53..55},tag=SwarmActive] run clone -834 65 -151 -834 65 -151 -3306 58 20
#execute unless block -3306 58 164 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=53..55},tag=SwarmActive] run clone -834 65 -151 -834 65 -151 -3306 58 164
#execute unless block -3306 58 116 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=53..55},tag=SwarmActive] run clone -834 65 -151 -834 65 -151 -3306 58 116
#execute unless block -3306 58 -76 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=53..55},tag=SwarmActive] run clone -834 65 -151 -834 65 -151 -3306 58 -76
#execute unless block -3306 58 -364 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=53..55},tag=SwarmActive] run clone -834 65 -151 -834 65 -151 -3306 58 -364
#execute unless block -3306 58 -316 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=53..55},tag=SwarmActive] run clone -834 65 -151 -834 65 -151 -3306 58 -316
#execute unless block -3306 58 -28 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=53..55},tag=SwarmActive] run clone -834 65 -151 -834 65 -151 -3306 58 -28
#execute unless block -3306 58 -268 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=53..55},tag=SwarmActive] run clone -834 65 -151 -834 65 -151 -3306 58 -268
#execute unless block -3306 58 -220 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=53..55},tag=SwarmActive] run clone -834 65 -151 -834 65 -151 -3306 58 -220
#execute unless block -3306 58 -172 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=53..55},tag=SwarmActive] run clone -834 65 -151 -834 65 -151 -3306 58 -172
#execute unless block -3306 58 -124 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=53..55},tag=SwarmActive] run clone -834 65 -151 -834 65 -151 -3306 58 -124

#execute if block -3306 58 68 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -3306 58 68 minecraft:air
#execute if block -3306 58 260 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -3306 58 260 minecraft:air
#execute if block -3306 58 212 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -3306 58 212 minecraft:air
#execute if block -3306 58 20 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -3306 58 20 minecraft:air
#execute if block -3306 58 164 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -3306 58 164 minecraft:air
#execute if block -3306 58 116 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -3306 58 116 minecraft:air
#execute if block -3306 58 -76 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -3306 58 -76 minecraft:air
#execute if block -3306 58 -364 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -3306 58 -364 minecraft:air
#execute if block -3306 58 -316 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -3306 58 -316 minecraft:air
#execute if block -3306 58 -28 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -3306 58 -28 minecraft:air
#execute if block -3306 58 -268 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -3306 58 -268 minecraft:air
#execute if block -3306 58 -220 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -3306 58 -220 minecraft:air
#execute if block -3306 58 -172 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -3306 58 -172 minecraft:air
#execute if block -3306 58 -124 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -3306 58 -124 minecraft:air

#R27
#execute unless block -1072 62 -507 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=56..58},tag=SwarmActive] run clone -835 65 -151 -835 65 -151 -1072 62 -507
#execute unless block -1055 62 -509 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=56..58},tag=SwarmActive] run clone -835 65 -151 -835 65 -151 -1055 62 -509
#execute unless block -1045 62 -498 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=56..58},tag=SwarmActive] run clone -835 65 -151 -835 65 -151 -1045 62 -498
#execute unless block -1028 62 -498 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=56..58},tag=SwarmActive] run clone -835 65 -151 -835 65 -151 -1028 62 -498

#execute if block -1072 62 -507 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -1072 62 -507 minecraft:air
#execute if block -1055 62 -509 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -1055 62 -509 minecraft:air
#execute if block -1045 62 -498 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -1045 62 -498 minecraft:air
#execute if block -1028 62 -498 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -1028 62 -498 minecraft:air


#Viridian Forest
#Blocks pulled from ancient Kanto spawners, test more
#execute unless block -1697 62 438 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=59..61},tag=SwarmActive] run clone -836 65 -151 -836 65 -151 -1697 62 438
#execute unless block -1683 62 438 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=59..61},tag=SwarmActive] run clone -836 65 -151 -836 65 -151 -1683 62 438
#execute unless block -1669 62 438 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=59..61},tag=SwarmActive] run clone -836 65 -151 -836 65 -151 -1669 62 438
#execute unless block -1653 62 438 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=59..61},tag=SwarmActive] run clone -836 65 -151 -836 65 -151 -1653 62 438
#execute unless block -1639 62 438 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=59..61},tag=SwarmActive] run clone -836 65 -151 -836 65 -151 -1639 62 438
#execute unless block -1625 62 438 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=59..61},tag=SwarmActive] run clone -836 65 -151 -836 65 -151 -1625 62 438
#execute unless block -1609 62 438 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=59..61},tag=SwarmActive] run clone -836 65 -151 -836 65 -151 -1609 62 438
#execute unless block -1595 62 438 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=59..61},tag=SwarmActive] run clone -836 65 -151 -836 65 -151 -1595 62 438
#execute unless block -1581 62 438 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=59..61},tag=SwarmActive] run clone -836 65 -151 -836 65 -151 -1581 62 438

#execute if block -1697 62 438 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -1697 62 438 minecraft:air
#execute if block -1683 62 438 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -1683 62 438 minecraft:air
#execute if block -1669 62 438 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -1669 62 438 minecraft:air
#execute if block -1653 62 438 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -1653 62 438 minecraft:air
#execute if block -1639 62 438 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -1639 62 438 minecraft:air
#execute if block -1625 62 438 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -1625 62 438 minecraft:air
#execute if block -1609 62 438 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -1609 62 438 minecraft:air
#execute if block -1595 62 438 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -1595 62 438 minecraft:air
#execute if block -1581 62 438 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -1581 62 438 minecraft:air



#R25
#execute unless block -2849 62 1005 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=62..},tag=SwarmActive] run clone -837 65 -151 -837 65 -151 -2849 62 1005
#execute unless block -2835 62 1005 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=62..},tag=SwarmActive] run clone -837 65 -151 -837 65 -151 -2835 62 1005
#execute unless block -2821 62 1005 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=62..},tag=SwarmActive] run clone -837 65 -151 -837 65 -151 -2821 62 1005

#execute if block -2849 62 1005 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2849 62 1005
#execute if block -2835 62 1005 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2835 62 1005
#execute if block -2821 62 1005 pixelmon:pixelmon_spawner if entity @e[x=-864,y=69,z=-207,dy=3,scores={rng=0},tag=!SwarmActive] run setblock -2821 62 1005








#
