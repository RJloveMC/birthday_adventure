
# touch grass
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s grass_time 1
execute as @a at @s unless block ~ ~-1 ~ #birthday_adventure:grass_touchables run scoreboard players set @s grass_time 0
execute as @a[scores={grass_time=100..}] run effect give @s minecraft:nausea 5 1

# Give held totems Button sword stats: base 1 + 11 damage, base 4 - 2.4 speed.
execute as @a[nbt={SelectedItem:{id:"minecraft:totem_of_undying"}}] unless data entity @s SelectedItem.tag.birthday_button_sword run item modify entity @s weapon.mainhand birthday_adventure:button_sword

# Umbrella
execute as @a[nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] unless data entity @s SelectedItem.tag.birthday_umbrella run item modify entity @s weapon.mainhand birthday_adventure:umbrella
execute as @a[nbt={SelectedItem:{tag:{"birthday_umbrella":1b}}}] run effect give @s minecraft:fire_resistance 1 2
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{"birthday_umbrella":1b}}]}] run effect give @s minecraft:fire_resistance 1 2

# Give the tutorial once on first join, then after each death when alive again.
execute as @a[tag=!tutorial_received] unless entity @s[nbt={Health:0.0f}] run function birthday_adventure:give_tutorial
execute as @a[scores={tutorial_book_give=1..}] unless entity @s[nbt={Health:0.0f}] run function birthday_adventure:give_tutorial
execute as @a[scores={tutorial_book_give_set=1}] unless entity @s[nbt={Health:0.0f}] run function birthday_adventure:set_give_tutorial

# Nether heat: 1 fire damage every 20 ticks; Fire Resistance blocks the damage.
execute as @a at @s unless dimension minecraft:the_nether run scoreboard players set @s nether_heat 0
execute as @a at @s if dimension minecraft:the_nether run scoreboard players add @s nether_heat 1
execute as @a[scores={nether_heat=20..}] at @s if dimension minecraft:the_nether run function birthday_adventure:nether/heat
scoreboard players set @a[scores={nether_heat=20..}] nether_heat 0
execute as @e[type=#birthday_adventure:undead,tag=!umbrella_equipped] run function birthday_adventure:equip_undead

# Queue each totem monologue separately for the player who used it.
execute as @a[scores={totem_pops=1..}] run function birthday_adventure:totem/tick

# Follow loaded ravagers in each vanilla dimension.
execute in minecraft:overworld run function birthday_adventure:milk/dimension
execute in minecraft:the_nether run function birthday_adventure:milk/dimension
execute in minecraft:the_end run function birthday_adventure:milk/dimension

# Only marked Ravager Milk is usable, including after reloads and late updates.
execute as @a[nbt={Inventory:[{id:"minecraft:milk_bucket"}]}] run function birthday_adventure:milk/check_inventory

# Check furnace heat once per second for each player.
scoreboard players add @a furnace_heat 1
execute as @a[scores={furnace_heat=20..}] at @s run function birthday_adventure:furnace/check

# Grind dropped wheat into flour in all vanilla dimensions.
execute in minecraft:overworld run function birthday_adventure:flour/scan
execute in minecraft:the_nether run function birthday_adventure:flour/scan
execute in minecraft:the_end run function birthday_adventure:flour/scan

# Thrown eggs leave poison clouds when their projectiles disappear on impact.
execute in minecraft:overworld run function birthday_adventure:egg/scan
execute in minecraft:the_nether run function birthday_adventure:egg/scan
execute in minecraft:the_end run function birthday_adventure:egg/scan

# Freeze Ravager Milk into Ice Cream on any vanilla ice surface.
execute in minecraft:overworld run function birthday_adventure:ice_cream/scan
execute in minecraft:the_nether run function birthday_adventure:ice_cream/scan
execute in minecraft:the_end run function birthday_adventure:ice_cream/scan

# Private knocking with a fresh 15-30 minute delay after each sequence.
function birthday_adventure:knock/tick
