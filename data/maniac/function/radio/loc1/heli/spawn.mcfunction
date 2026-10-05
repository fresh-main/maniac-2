execute unless data storage efm switch{radio_heli_pending:1} run return

execute if data storage efm switch{radio_heli_spawned:1} run return run data modify storage efm switch.radio_heli_pending set value 0

execute if data storage efm radio_heli {configured:0} run data modify storage efm switch.radio_heli_pending set value 0

execute if data storage efm radio_heli {configured:0} run return run tellraw @a [{"text":"[Рация] ","color":"aqua"},{"text":"Не заданы координаты вертолёта. Отредактируйте maniac:radio/loc1/config","color":"red"}]

data modify storage efm switch.radio_heli_pending set value 0
data modify storage efm switch.radio_heli_spawned set value 1

function maniac:radio/loc1/heli/place with storage efm radio_heli

execute unless data storage efm switch{radio_police_started:1} run function maniac:in_game/event/police/start_hunt

data modify storage efm switch.radio_police_started set value 1

title @a actionbar {"text":"Вертолёт прибыл! Заберитесь в него.","color":"green"}

execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1