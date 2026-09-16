# An invisible passenger tracks each egg independently, including simultaneous throws.
execute as @e[type=minecraft:egg,tag=!poison_egg_tracked] at @s run function birthday_adventure:egg/track
execute as @e[type=minecraft:marker,tag=poison_egg_tracker] at @s run function birthday_adventure:egg/check
