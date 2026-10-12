execute if data storage efm radio_heli {configured:1} run function maniac:radio/loc1/heli/unload with storage efm radio_heli

data modify storage efm switch.radio_heli_pending set value 0
data modify storage efm switch.radio_heli_spawned set value 0
data modify storage efm switch.radio_police_started set value 0

tag @a remove radio_escaped

kill @e[type=interaction,tag=radio_heli_interaction]
kill @e[type=interaction,tag=radio_loc1_interaction]

scoreboard players reset @e radio_charge
scoreboard players set radio_timer1 global_data 0
scoreboard players set radio_timer2 global_data 0
scoreboard players set radio_timer3 global_data 0
scoreboard players reset #radio_temp radio_charge
title @a actionbar ""
# Убиваем item_display рации (пассажир interaction умрёт автоматически)
kill @e[type=item_display,tag=radio_loc1_visual]