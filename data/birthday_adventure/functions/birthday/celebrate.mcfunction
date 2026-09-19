# Keep the visible achievement, but re-arm the crafting celebration.
advancement revoke @s only birthday_adventure:cake_crafted
advancement grant @s only birthday_adventure:happy_birthday
execute at @s run summon minecraft:firework_rocket ~-1 ~3 ~0 {LifeTime:18,Motion:[0.0d,0.6d,0.0d],FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:1b,Colors:[I;16733525,16755200],FadeColors:[I;16777215],Trail:1b,Flicker:1b}]}}}}
execute at @s run summon minecraft:firework_rocket ~1 ~3 ~0 {LifeTime:24,Motion:[0.0d,0.6d,0.0d],FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:2b,Colors:[I;5635925,5636095],FadeColors:[I;16777215],Trail:1b,Flicker:1b}]}}}}
execute at @s run summon minecraft:firework_rocket ~0 ~3 ~1 {LifeTime:30,Motion:[0.0d,0.6d,0.0d],FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I;16733695,16777045],FadeColors:[I;16777215],Trail:1b,Flicker:1b}]}}}}
