# Забираем 1 канистру топлива
clear @s minecraft:potion[custom_name='{"text":"Топливо (1л.)","color":"yellow","italic":false}'] 1
playsound minecraft:block.lever.click block @s ~ ~ ~ 1 1

# Увеличиваем счетчик на самой сущности рации
scoreboard players add @e[type=interaction,tag=radio_loc1_locked,limit=1,sort=nearest] radio_charge 1

# Обновляем статус
execute as @e[type=interaction,tag=radio_loc1_locked,limit=1,sort=nearest] if score @s radio_charge matches 1 run title @s actionbar {"text":"Рация: 1/3 топлива","color":"yellow"}
execute as @e[type=interaction,tag=radio_loc1_locked,limit=1,sort=nearest] if score @s radio_charge matches 2 run title @s actionbar {"text":"Рация: 2/3 топлива","color":"yellow"}
execute as @e[type=interaction,tag=radio_loc1_locked,limit=1,sort=nearest] if score @s radio_charge matches 3 run function maniac:radio/loc1/ready