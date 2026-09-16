# Fire Resistance and other damage immunity also suppress the dialogue.
scoreboard players set @s nether_hurt 0
execute store success score @s nether_hurt run damage @s 1 minecraft:on_fire
execute if score @s nether_hurt matches 1 run function birthday_adventure:nether/dialogue
