# Changing only the item ID preserves the dropped stack count (1 wheat = 1 flour).
data modify entity @s Item.id set value "minecraft:sugar"
playsound minecraft:block.grindstone.use block @a[distance=..16] ~ ~ ~ 1 1
