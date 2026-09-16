# Ten-second, two-block-radius cloud; Poison I for five seconds per application.
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["poison_egg_cloud"],Radius:2.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:200,DurationOnUse:0,WaitTime:0,ReapplicationDelay:40,Particle:"entity_effect",Color:5149489,Effects:[{Id:19b,Amplifier:0b,Duration:100,ShowParticles:1b}]}
playsound minecraft:entity.splash_potion.break neutral @a[distance=..16] ~ ~ ~ 0.7 1
kill @s
