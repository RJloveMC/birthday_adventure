# Play the full custom recording once at its original pitch.
execute if score @s knock_phase matches 1 run playsound birthday_adventure:door_knock master @s ~ ~ ~ 1 1
scoreboard players add @s knock_phase 1
execute if score @s knock_phase matches 89.. run function birthday_adventure:knock/init
