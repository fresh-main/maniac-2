bossbar set minecraft:timer visible false
data modify storage efm switch.bossbar set value ""
data modify storage efm switch.police set value 1
title @a actionbar {"text": "Полиция прибыла, двери на крышу были открыты","color": "yellow"}
function maniac:in_game/event/police/start
kill @e[type=interaction,tag=roof]
scoreboard players set police_status global_data 1
execute if data storage efm switch{radio_heli_pending:1} run function maniac:radio/loc1/heli/spawn