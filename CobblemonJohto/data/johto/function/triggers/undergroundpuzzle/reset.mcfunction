


#tps any player in the maze
tp @a[x=477,y=47,z=-344,dx=50,dy=6,dz=22] 481 47 -310
tellraw @a[x=477,y=47,z=-344,dx=50,dy=6,dz=47,scores={Cooldown=0}] {"text":"The tiles reset!","italic":true,"color":"gray"}
scoreboard players add @a[x=477,y=47,z=-344,dx=50,dy=6,dz=47,scores={Cooldown=0}] Cooldown 5

#Clones switches to off-state
clone 506 54 -316 502 58 -318 521 47 -295
clone 506 54 -316 502 58 -318 507 47 -295
clone 506 54 -316 502 58 -318 495 47 -295

#Clears any items left in the chest
data merge block 499 55 -317 {Items:[]}

#Buttons
setblock 495 48 -297 minecraft:stone_button[powered=false]
setblock 507 48 -297 minecraft:stone_button[powered=false]
setblock 521 48 -297 minecraft:stone_button[powered=false]
setblock 477 48 -307 minecraft:stone_button[powered=false,face=wall,facing=east]

#Emergency Switch
#data merge block 499 55 -317 {Items:[{Slot:0b,id:"minecraft:magenta_wool",Count:1b},{Slot:1b,id:"minecraft:orange_wool",Count:1b},{Slot:2b,id:"minecraft:white_wool",Count:1b}]}
