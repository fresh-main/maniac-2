scoreboard players remove radio_timer1 global_data 1
title @s actionbar {"text": "Вызов...","color": "yellow"}
execute if score radio_timer1 global_data matches 50 at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1 0.2
execute if score radio_timer1 global_data matches 30 at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1 0.2
execute if score radio_timer1 global_data matches 10 at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1 0.2
execute if score radio_timer1 global_data matches 0 run scoreboard players set radio_timer2 global_data 381