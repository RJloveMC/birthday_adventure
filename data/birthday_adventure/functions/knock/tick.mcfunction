execute as @a[tag=!knock_initialized] run function birthday_adventure:knock/init
scoreboard players add @a[scores={knock_phase=0}] knock_time 1
execute as @a[scores={knock_phase=0}] if score @s knock_time >= @s knock_wait unless entity @s[nbt={Health:0.0f}] run function birthday_adventure:knock/start
execute as @a[scores={knock_phase=1..}] at @s run function birthday_adventure:knock/play
