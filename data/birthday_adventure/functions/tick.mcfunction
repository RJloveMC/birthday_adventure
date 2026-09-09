
# touch grass
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s grass_time 1
execute as @a at @s unless block ~ ~-1 ~ #birthday_adventure:grass_touchables run scoreboard players set @s grass_time 0
execute as @a[scores={grass_time=100..}] run effect give @s minecraft:nausea 5 1