# Only landed, valid Ravager Milk is used; the ordinary-milk restriction remains active.
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:milk_bucket",tag:{ravager_milk:1b}}}] at @s if block ~ ~-0.1 ~ #birthday_adventure:ice_cream_surfaces run function birthday_adventure:ice_cream/freeze
