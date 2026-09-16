# A projectile disappears when it hits; its passenger remains at the impact area.
tag @s remove poison_egg_flying
execute on vehicle if entity @s[type=minecraft:egg] on passengers if entity @s[type=minecraft:marker,tag=poison_egg_tracker] run tag @s add poison_egg_flying
execute unless entity @s[tag=poison_egg_flying] run function birthday_adventure:egg/impact
