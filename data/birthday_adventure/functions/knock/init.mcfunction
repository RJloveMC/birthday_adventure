# Pick a fresh per-player delay between 18000 and 36000 ticks (15-30 minutes).
scoreboard players set @s knock_wait 0
execute if predicate birthday_adventure:coin_flip run scoreboard players add @s knock_wait 1
execute if predicate birthday_adventure:coin_flip run scoreboard players add @s knock_wait 2
execute if predicate birthday_adventure:coin_flip run scoreboard players add @s knock_wait 4
execute if predicate birthday_adventure:coin_flip run scoreboard players add @s knock_wait 8
execute if predicate birthday_adventure:coin_flip run scoreboard players add @s knock_wait 16
execute if predicate birthday_adventure:coin_flip run scoreboard players add @s knock_wait 32
execute if predicate birthday_adventure:coin_flip run scoreboard players add @s knock_wait 64
execute if predicate birthday_adventure:coin_flip run scoreboard players add @s knock_wait 128
execute if predicate birthday_adventure:coin_flip run scoreboard players add @s knock_wait 256
execute if predicate birthday_adventure:coin_flip run scoreboard players add @s knock_wait 512
execute if predicate birthday_adventure:coin_flip run scoreboard players add @s knock_wait 1024
execute if predicate birthday_adventure:coin_flip run scoreboard players add @s knock_wait 2048
execute if predicate birthday_adventure:coin_flip run scoreboard players add @s knock_wait 4096
execute if predicate birthday_adventure:coin_flip run scoreboard players add @s knock_wait 8192
execute if predicate birthday_adventure:coin_flip run scoreboard players add @s knock_wait 16384
scoreboard players operation @s knock_wait %= #range knock_wait
scoreboard players add @s knock_wait 18000
scoreboard players set @s knock_time 0
scoreboard players set @s knock_phase 0
tag @s add knock_initialized
