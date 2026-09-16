# Approximate two-block radius around the block containing the player feet.
# Multiple lit furnaces cause only one damage attempt per check.
scoreboard players set @s furnace_heat 0
tag @s remove near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~-2 ~ ~ minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~-1 ~-1 ~-1 minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~-1 ~-1 ~ minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~-1 ~-1 ~1 minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~-1 ~ ~-1 minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~-1 ~ ~ minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~-1 ~ ~1 minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~-1 ~1 ~-1 minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~-1 ~1 ~ minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~-1 ~1 ~1 minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~ ~-2 ~ minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~ ~-1 ~-1 minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~ ~-1 ~ minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~ ~-1 ~1 minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~ ~ ~-2 minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~ ~ ~-1 minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~ ~ ~ minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~ ~ ~1 minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~ ~ ~2 minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~ ~1 ~-1 minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~ ~1 ~ minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~ ~1 ~1 minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~ ~2 ~ minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~1 ~-1 ~-1 minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~1 ~-1 ~ minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~1 ~-1 ~1 minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~1 ~ ~-1 minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~1 ~ ~ minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~1 ~ ~1 minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~1 ~1 ~-1 minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~1 ~1 ~ minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~1 ~1 ~1 minecraft:furnace[lit=true] run tag @s add near_lit_furnace
execute unless entity @s[tag=near_lit_furnace] if block ~2 ~ ~ minecraft:furnace[lit=true] run tag @s add near_lit_furnace
scoreboard players set @s furnace_hurt 0
execute if entity @s[tag=near_lit_furnace] store success score @s furnace_hurt run damage @s 1 minecraft:on_fire
execute if score @s furnace_hurt matches 1 run function birthday_adventure:furnace/dialogue
tag @s remove near_lit_furnace
