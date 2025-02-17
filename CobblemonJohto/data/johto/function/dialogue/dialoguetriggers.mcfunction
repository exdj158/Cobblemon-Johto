#Runs specific conditions for player to open a dialogue screen
#Auto does not run function when player is in a text box, tag removed when player leaves text boxes

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#To prevent this command from running and resetting dialogues each refresh, add these lines at the start of an npc json
#    "initializationAction": ["q.run_command('tag @p add InDialogue');"],

#and remove with quitting the the dialogue box
#   "q.run_command('tag @p remove InDialogue');",


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


#Mom first walking downstairs
execute as @s[x=-736,y=64,z=-491,dx=10,dy=3,dz=6,tag=!Dialogue2] run opendialogue mom_dialogue2 @s

#Elm's Lab
execute as @s[x=-683,y=63,z=-478,distance=..10,tag=!Dialogue3] run opendialogue professorelm_dialogue3 @s


#Chuck's Wife Fly HM
execute as @s[x=1261,y=64,z=-488,distance=..10,tag=Chuck,tag=!Dialogue43] run opendialogue chuckswife_dialogue43 @s
















#