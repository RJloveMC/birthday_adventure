data modify storage birthday_adventure:material_swap pending set from entity @s Offers.Recipes
data modify storage birthday_adventure:material_swap result set value []
scoreboard players set #index swap_count 0
function birthday_adventure:materials/trade_loop
data modify entity @s Offers.Recipes set from storage birthday_adventure:material_swap result
scoreboard players operation @s swap_seen = @s swap_count
data remove storage birthday_adventure:material_swap pending
data remove storage birthday_adventure:material_swap result
data remove storage birthday_adventure:material_swap original
