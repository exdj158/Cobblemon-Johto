
#--------------------------------------------------------------------------------------------------GENERAL WORLD-----------------------------------------------------------------------------------------------------------------------------------

#Runs the Portals when a player steps on a carpet plate block
execute at @a run execute if block ~ ~ ~ minecraft:magenta_carpet run function johto:world/portals

#Runs the Game Corner slots if the player is within the building
execute if entity @e[x=485,y=59,z=-370,dx=22,dy=4,scores={SlotRolled=1..}] run execute as @a[x=489,y=64,z=-389,dx=31,dy=10,dz=19,tag=CoinCase] run function johto:triggers/gamecorner


#Ilex Forest Farfetch'd running function
execute if entity @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,scores={Farfetchd=1..}] run function johto:triggers/farfetchdrun


#Sudowoodo Blocks
execute as @a[x=327,y=63,z=-19,dx=10,dy=5,dz=5,tag=!Dialogue29] run opendialogue sudowoodo_nobottle @s 
execute as @a[x=327,y=63,z=-19,dx=10,dy=5,dz=5,tag=!Dialogue29] at @s run tp @a[x=327,y=63,z=-19,dx=10,dy=5,dz=5,tag=!Dialogue29] ~-10 ~ ~

execute as @a[x=331,y=63,z=-23,dx=4,dy=5,dz=9,tag=!Dialogue29] run opendialogue sudowoodo_nobottle @s 
execute as @a[x=331,y=63,z=-23,dx=4,dy=5,dz=9,tag=!Dialogue29] at @s run tp @a[x=331,y=63,z=-23,dx=4,dy=5,dz=9,tag=!Dialogue29] ~ ~ ~-10

