# Wait for wheat to land; handles the different grindstone mounting shapes.
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:wheat"},OnGround:1b}] at @s run function birthday_adventure:flour/check
