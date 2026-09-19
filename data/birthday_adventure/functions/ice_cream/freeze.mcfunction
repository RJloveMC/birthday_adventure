# Milk buckets are unstackable: one bucket makes one Ice Cream and returns one bucket.
summon minecraft:item ~ ~0.15 ~ {Item:{id:"minecraft:cocoa_beans",Count:1b},PickupDelay:10s}
# Replace the full stack data to remove the Ravager Milk name and marker from the empty bucket.
data modify entity @s Item set value {id:"minecraft:bucket",Count:1b}
