advancement revoke @s only maniac:radio_use

execute if data storage efm switch{radio_heli_spawned:1} run return run title @s actionbar {"text":"Вертолёт уже прибыл","color":"yellow"}
execute if score radio_timer1 global_data matches 1.. run return run title @s actionbar {"text":"Связь уже активна","color":"yellow"}
execute if score radio_timer2 global_data matches 1.. run return run title @s actionbar {"text":"Связь уже активна","color":"yellow"}

scoreboard players set radio_timer1 global_data 60