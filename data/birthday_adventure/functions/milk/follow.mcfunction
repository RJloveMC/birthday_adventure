execute unless score @s milk_link matches 1.. run function birthday_adventure:milk/new_ravager
scoreboard players operation #current milk_link = @s milk_link
scoreboard players set #found milk_tmp 0
execute as @e[type=minecraft:interaction,tag=ravager_milk_hitbox] if score @s milk_link = #current milk_link run function birthday_adventure:milk/move_hitbox
execute if score #found milk_tmp matches 0 summon minecraft:interaction run function birthday_adventure:milk/new_hitbox
