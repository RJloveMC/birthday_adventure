advancement revoke @s only birthday_adventure:milk_ravager
scoreboard players set @s milk_tmp 0
execute if entity @s[gamemode=creative] run scoreboard players set @s milk_tmp 1
execute unless entity @s[gamemode=creative] store success score @s milk_tmp run clear @s minecraft:bucket 1
execute if score @s milk_tmp matches 1 run give @s minecraft:milk_bucket{ravager_milk:1b,display:{Name:'{"text":"Ravager \\"Milk\\"","italic":false}'}} 1
execute if score @s milk_tmp matches 1 at @s run playsound minecraft:entity.cow.milk player @s ~ ~ ~ 1 0.7
