#Function that manages with specific NPCs say when you click on boxes surroung them.
#Used to have the same NPC say different lines depending on the player's own tags.

#Copycat
#Needs to have fixed the Power Plant before starting the doll quest
execute as @s[x=-2722,y=69,z=372,distance=..6,tag=!Dialogue133] run opendialogue copycat_generic_pre @s
execute as @s[x=-2722,y=69,z=372,distance=..6,tag=Dialogue221,tag=!Dialogue134] run opendialogue copycat_dialogue133 @s
execute as @s[x=-2722,y=69,z=372,distance=..6,tag=Dialogue134] run opendialogue copycat_dialogue135 @s
execute as @s[x=-2722,y=69,z=372,distance=..6,tag=Dialogue135] run opendialogue copycat_generic_post @s

#Vermilion Clefairy Guy
execute as @s[x=-2696,y=64,z=-37,distance=..6,tag=!Dialogue133,tag=!Dialogue134] run opendialogue vermilion_artist_interaction @s
execute as @s[x=-2696,y=64,z=-37,distance=..6,tag=Dialogue133,tag=!Dialogue134] run opendialogue vermilion_clefairyguy_dialogue134 @s
execute as @s[x=-2696,y=64,z=-37,distance=..6,tag=Dialogue133,tag=Dialogue134] run opendialogue vermilion_clefairyguy_post @s


































advancement revoke @s only johto:click/npcs

#