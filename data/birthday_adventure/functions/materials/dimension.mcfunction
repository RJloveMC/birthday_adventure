execute as @e[type=minecraft:villager] if data entity @s Offers.Recipes[0] run function birthday_adventure:materials/trades
execute as @e[type=minecraft:wandering_trader] if data entity @s Offers.Recipes[0] run function birthday_adventure:materials/trades
execute as @e[type=!minecraft:player,tag=!material_equipment_checked] if data entity @s ArmorItems[0] run function birthday_adventure:materials/equipment
