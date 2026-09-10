# Assign a new global ID to every tutorial book, preserved across reloads.
scoreboard players add #next tutorial_book_id 1
execute store result storage birthday_adventure:tutorial unstack_id int 1 run scoreboard players get #next tutorial_book_id
loot give @s loot birthday_adventure:tutorial_book
tag @s add tutorial_received
scoreboard players remove @s tutorial_book_give 1
