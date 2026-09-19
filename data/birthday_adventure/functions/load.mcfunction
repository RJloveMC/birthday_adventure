scoreboard objectives add grass_time dummy "Grass Time"
gamerule keepInventory false
scoreboard objectives add tutorial_deaths deathCount
scoreboard objectives add tutorial_book_give_set deathCount
scoreboard objectives add tutorial_book_give dummy
scoreboard objectives add tutorial_book_id dummy
scoreboard objectives add nether_heat dummy

# Totem monologues: total uses, delivered speeches, and per-player line timer.
scoreboard objectives add totem_pops dummy
scoreboard objectives add totem_speech dummy
scoreboard objectives add totem_voice dummy

# Unique ravager/hitbox pairs and temporary milking results.
scoreboard objectives add milk_link dummy
scoreboard objectives add milk_tmp dummy
scoreboard objectives add furnace_heat dummy
scoreboard objectives add furnace_hurt dummy
scoreboard objectives add furnace_line dummy
scoreboard objectives add nether_hurt dummy
scoreboard objectives add nether_line dummy

# Repeating door-knocking scare; all timers persist through reloads.
scoreboard objectives add knock_wait dummy
scoreboard objectives add knock_time dummy
scoreboard objectives add knock_phase dummy
scoreboard players set #range knock_wait 18001

# Track which villager offers have already had their material IDs swapped.
scoreboard objectives add swap_seen dummy
scoreboard objectives add swap_count dummy
