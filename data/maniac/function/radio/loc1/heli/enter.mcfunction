execute if entity @s[tag=radio_escaped] run return run title @s actionbar {"text":"Вы уже спаслись","color":"yellow"}

tag @s add radio_escaped

title @s title {"text":"Вы спаслись","color":"green"}
title @s subtitle {"text":"Вертолёт уносит вас прочь","color":"gray"}

playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1

execute unless data storage efm switch{radio_police_started:1} run function maniac:in_game/event/police/start_hunt

data modify storage efm switch.radio_police_started set value 1

function maniac:in_game/escape