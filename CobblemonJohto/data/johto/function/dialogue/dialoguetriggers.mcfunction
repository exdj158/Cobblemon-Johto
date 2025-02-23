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


#Red Gyarados Spawn
scoreboard players set @a[x=-169,y=65,z=645,distance=..15,tag=!Dialogue49] DialogueTrigger 49

#Elm granting Master Ball
execute as @s[x=-683,y=63,z=-478,distance=..10,tag=Clair,tag=!Dialogue81] run opendialogue professorelm_dialogue81 @s

#Elm granting SS Ticket
execute as @s[x=-683,y=63,z=-478,distance=..10,tag=Dialogue81,tag=!Dialogue101,scores={IP=1..}] run opendialogue professorelm_dialogue101 @s

#SS Aqua Voyages
execute as @s[x=744,y=73,z=-193,distance=..15,tag=Dialogue101,scores={TalkTime=0}] run tag @s remove Dialogue214
execute as @s[x=-2749,y=72,z=-159,distance=..15,tag=Dialogue101,scores={TalkTime=0}] run tag @s remove Dialogue214

execute as @s[x=744,y=73,z=-193,distance=..15,tag=Dialogue101,scores={TalkTime=0}] run scoreboard players set @s DialogueTrigger 214
execute as @s[x=-2749,y=72,z=-159,distance=..15,tag=Dialogue101,scores={TalkTime=0}] run scoreboard players set @s DialogueTrigger 214


#Friday Lapras Spawn
execute if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=5}] run scoreboard players set @a[x=120,y=13,z=-852,distance=..15,tag=!Dialogue105] DialogueTrigger 105









#