
# touch grass
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s grass_time 1
execute as @a at @s unless block ~ ~-1 ~ #birthday_adventure:grass_touchables run scoreboard players set @s grass_time 0
execute as @a[scores={grass_time=100..}] run effect give @s minecraft:nausea 5 1

# Give held totems Button sword stats: base 1 + 11 damage, base 4 - 2.4 speed.
execute as @a[nbt={SelectedItem:{id:"minecraft:totem_of_undying"}}] unless data entity @s SelectedItem.tag.birthday_button_sword run item modify entity @s weapon.mainhand birthday_adventure:button_sword

execute as @a[nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] unless data entity @s SelectedItem.tag.birthday_umbrella run item modify entity @s weapon.mainhand birthday_adventure:umbrella

# Give the tutorial once on first join, then after each death when alive again.
execute as @a[tag=!tutorial_received] unless entity @s[nbt={Health:0.0f}] run function birthday_adventure:give_tutorial
execute as @a[scores={tutorial_book_give=1..}] unless entity @s[nbt={Health:0.0f}] run function birthday_adventure:give_tutorial
execute as @a[scores={tutorial_book_give_set=1}] unless entity @s[nbt={Health:0.0f}] run function birthday_adventure:set_give_tutorial