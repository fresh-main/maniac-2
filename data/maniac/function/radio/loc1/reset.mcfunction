execute if data storage efm radio_heli {configured:1} run function maniac:radio/loc1/heli/unload with storage efm radio_heli

data modify storage efm switch.radio_heli_pending set value 0
data modify storage efm switch.radio_heli_spawned set value 0
data modify storage efm switch.radio_police_started set value 0

tag @a remove radio_escaped

kill @e[type=interaction,tag=radio_heli_interaction]
kill @e[type=interaction,tag=radio_loc1_interaction]

scoreboard players reset @e radio_charge