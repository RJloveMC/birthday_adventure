scoreboard players add @s swap_seen 0
execute store result score @s swap_count run data get entity @s Offers.Recipes
execute if score @s swap_count > @s swap_seen run function birthday_adventure:materials/rewrite_trades
