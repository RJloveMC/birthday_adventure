# Cycle separately from furnace dialogue, only after successful Nether heat damage.
scoreboard players add @s nether_line 1
execute if score @s nether_line matches 6.. run scoreboard players set @s nether_line 1
execute if score @s nether_line matches 1 run tellraw @s {"text": "Ouch this Nether is hot", "color": "gold"}
execute if score @s nether_line matches 2 run tellraw @s {"text": "Who turned the entire dimension into an oven?", "color": "gold"}
execute if score @s nether_line matches 3 run tellraw @s {"text": "How can you withstand this heat?!", "color": "gold"}
execute if score @s nether_line matches 4 run tellraw @s {"text": "My birthday wish is air conditioning.", "color": "gold"}
execute if score @s nether_line matches 5 run tellraw @s {"text": "It's almost like Vietnam.", "color": "gold"}
