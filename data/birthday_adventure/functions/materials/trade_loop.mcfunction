# Previously processed offers are copied verbatim; only newly unlocked offers are swapped.
execute if score #index swap_count >= @s swap_seen run function birthday_adventure:materials/map_trade
data modify storage birthday_adventure:material_swap result append from storage birthday_adventure:material_swap pending[0]
data remove storage birthday_adventure:material_swap pending[0]
scoreboard players add #index swap_count 1
execute if data storage birthday_adventure:material_swap pending[0] run function birthday_adventure:materials/trade_loop
