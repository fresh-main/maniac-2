# Если рация уже заряжена, забираем её
execute if entity @e[type=interaction,tag=radio_loc1_ready,limit=1,sort=nearest,distance=..6] run function maniac:radio/loc1/take
execute if entity @e[type=interaction,tag=radio_loc1_ready,limit=1,sort=nearest,distance=..6] run return

# Если не заряжена, проверяем батарейку в руке
execute unless items entity @s weapon.mainhand minecraft:redstone[custom_data={item:"батарейка"}] run title @s actionbar {"text":"Нужна батарейка","color":"red"}
execute unless items entity @s weapon.mainhand minecraft:redstone[custom_data={item:"батарейка"}] run return

# Забираем 1 батарейку
clear @s minecraft:redstone[custom_data={item:"батарейка"}] 1
playsound minecraft:block.lever.click block @s ~ ~ ~ 1 1

# Добавляем заряд РАЦИИ (а не игроку)
scoreboard players add @e[type=interaction,tag=radio_loc1_locked,limit=1,sort=nearest,distance=..6] radio_charge 1

# Показываем прогресс
execute as @e[type=interaction,tag=radio_loc1_locked,limit=1,sort=nearest,distance=..6] if score @s radio_charge matches 1 run title @a actionbar {"text":"Рация: 1/3","color":"yellow"}
execute as @e[type=interaction,tag=radio_loc1_locked,limit=1,sort=nearest,distance=..6] if score @s radio_charge matches 2 run title @a actionbar {"text":"Рация: 2/3","color":"yellow"}
execute as @e[type=interaction,tag=radio_loc1_locked,limit=1,sort=nearest,distance=..6] if score @s radio_charge matches 3 run function maniac:radio/loc1/ready
