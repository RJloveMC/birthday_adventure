# Advance only when furnace damage succeeds.
scoreboard players add @s furnace_line 1
execute if score @s furnace_line matches 6.. run scoreboard players set @s furnace_line 1
execute if score @s furnace_line matches 1 run tellraw @s {"text": "Ouch this furnace is hot", "color": "gold"}
execute if score @s furnace_line matches 2 run tellraw @s {"text": "Ow! Too close!", "color": "gold"}
execute if score @s furnace_line matches 3 run tellraw @s {"text": "Too close! I can smell my eyebrows cooking.", "color": "gold"}
execute if score @s furnace_line matches 4 run tellraw @s {"text": "That furnace needs a warning sign.", "color": "gold"}
execute if score @s furnace_line matches 5 run tellraw @s {"text": "Note to self: stand back from the angry hot box.", "color": "gold"}
