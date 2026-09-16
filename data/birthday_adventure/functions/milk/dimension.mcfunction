tag @e[type=minecraft:interaction,tag=ravager_milk_hitbox] add milk_stale
execute as @e[type=minecraft:ravager] at @s unless entity @s[nbt={Health:0.0f}] run function birthday_adventure:milk/follow
kill @e[type=minecraft:interaction,tag=ravager_milk_hitbox,tag=milk_stale]

# Covers full inventories, thrown milk, and milk already lying on the ground.
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:milk_bucket"}}] unless data entity @s Item.tag{ravager_milk:1b} run data modify entity @s Item.id set value "minecraft:bucket"
