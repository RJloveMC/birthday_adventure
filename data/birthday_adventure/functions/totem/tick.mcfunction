scoreboard players add @s totem_speech 0
scoreboard players add @s totem_voice 0
execute if score @s totem_voice matches 0 if score @s totem_speech < @s totem_pops run function birthday_adventure:totem/start
execute if score @s totem_voice matches 1 run function birthday_adventure:totem/line_1
execute if score @s totem_voice matches 61 run function birthday_adventure:totem/line_2
execute if score @s totem_voice matches 121 run function birthday_adventure:totem/line_3
execute if score @s totem_voice matches 181 run function birthday_adventure:totem/line_4
execute if score @s totem_voice matches 1.. run scoreboard players add @s totem_voice 1
execute if score @s totem_voice matches 241.. run scoreboard players set @s totem_voice 0
