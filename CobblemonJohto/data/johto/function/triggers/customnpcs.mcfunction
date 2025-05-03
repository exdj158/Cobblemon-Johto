#Function that manages what specific NPCs say when you click on boxes surroung them.
#Used to have the same NPC say different lines depending on the player's own tags.

#Rock Smash guy before and after clearing Sudowoodo
execute as @s[x=247,y=64,z=-20,distance=..6,tag=!Dialogue30] run opendialogue route36_blackbelt_interaction @s
execute as @s[x=247,y=64,z=-20,distance=..6,tag=Dialogue30,tag=!RockSmash] run opendialogue route36_blackbelt_interaction2 @s
execute as @s[x=247,y=64,z=-20,distance=..6,tag=Dialogue30,tag=RockSmash] run opendialogue route36_blackbelt_interaction @s


#Radio Tower Quiz Lady
execute as @s[x=514,y=31,z=-272,distance=..4,tag=!RadioCard] run opendialogue radiotower_quiz_interaction @s
execute as @s[x=514,y=31,z=-272,distance=..4,tag=RadioCard] run opendialogue radiotower_quiz_completed @s


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


#Weekday Siblings
execute as @s[x=913,y=64,z=-54,distance=..6,tag=!Dialogue187] run opendialogue monica_first @s
execute as @s[x=913,y=64,z=-54,distance=..6,tag=Dialogue187] run opendialogue monica_first_end @s

execute as @s[x=-482,y=64,z=-535,distance=..6,tag=!Dialogue188] run opendialogue tuscany_first @s
execute as @s[x=-482,y=64,z=-535,distance=..6,tag=Dialogue188] run opendialogue tuscany_first_end @s

execute as @s[x=-56,y=64,z=722,distance=..6,tag=!Dialogue189] run opendialogue wesley_first @s
execute as @s[x=-56,y=64,z=722,distance=..6,tag=Dialogue189] run opendialogue wesley_first_end @s

execute as @s[x=236,y=64,z=-6,distance=..6,tag=!Dialogue190] run opendialogue arthur_first @s
execute as @s[x=236,y=64,z=-6,distance=..6,tag=Dialogue190] run opendialogue arthur_first_end @s

execute as @s[x=127,y=64,z=-545,distance=..6,tag=!Dialogue191] run opendialogue frieda_first @s
execute as @s[x=127,y=64,z=-545,distance=..6,tag=Dialogue191] run opendialogue frieda_first_end @s

execute as @s[x=-663,y=64,z=225,distance=..6,tag=!Dialogue192] run opendialogue santos_first @s
execute as @s[x=-663,y=64,z=225,distance=..6,tag=Dialogue192] run opendialogue santos_first_end @s

execute as @s[x=335,y=64,z=113,distance=..6,tag=!Dialogue193] run opendialogue sunny_first @s
execute as @s[x=335,y=64,z=113,distance=..6,tag=Dialogue193] run opendialogue sunny_first_end @s


#Power Plant Manager
execute as @s[x=-3117,y=48,z=589,distance=..6,tag=!Dialogue221] run opendialogue powerplant_manager_dialogue215 @s
execute as @s[x=-3117,y=48,z=589,distance=..6,tag=Dialogue220,tag=!Dialogue221] run opendialogue powerplant_manager_dialogue221 @s
execute as @s[x=-3117,y=48,z=589,distance=..6,tag=Dialogue221] run opendialogue powerplant_manager_end @s


#Lavender Town EXPN Card gift after working on the power plant
execute as @s[x=-3312,y=64,z=381,distance=..6,tag=!Dialogue221,tag=!EXPNCard] run opendialogue lavender_gentleman_interaction @s
execute as @s[x=-3312,y=64,z=381,distance=..6,tag=Dialogue221,tag=!EXPNCard] run opendialogue lavender_gentleman_expncard @s
execute as @s[x=-3312,y=64,z=381,distance=..6,tag=Dialogue221,tag=EXPNCard] run opendialogue lavender_gentleman_end @s


#Misty's date changing dialogues
execute as @s[x=-3063,y=64,z=956,distance=..6,tag=!Dialogue221] run opendialogue route25_youngcouplem_before @s
execute as @s[x=-3063,y=64,z=956,distance=..6,tag=Dialogue221] run opendialogue route25_youngcouplem_end @s


#Goldenrod Beauty Salon
execute as @s[x=513,y=55,z=-335,distance=..6,tag=!BeautyCD] run opendialogue underground_salon_interaction @s
execute as @s[x=513,y=55,z=-335,distance=..6,tag=BeautyCD] run opendialogue underground_salon_end @s



advancement revoke @s only johto:click/npcs

#