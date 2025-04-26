#Commands that run once a minute, very low priority but also can happen whenever.


#Regenerates Cut Trees
function johto:hms/cutregen

#Regenerates Rock Smash rocks
execute as @a[tag=RockSmash] at @s as @e[tag=RockSmash,type=armor_stand,distance=40..150] run function johto:hms/rocksmashregen


















#