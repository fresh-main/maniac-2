# Если рация уже заряжена, забираем её
execute if score @s radio_charge matches 3 run function maniac:radio/loc1/take

# Если не заряжена, проверяем батарейку в руке
execute unless items entity @s weapon.mainhand minecraft:redstone[custom_data={item:"батарейка"}] run return run title @s actionbar {"text":"Нужна батарейка","color":"red"}

# Забираем 1 батарейку
clear @s minecraft:redstone[custom_data={item:"батарейка"}] 1
playsound minecraft:block.lever.click block @s ~ ~ ~ 1 1

scoreboard players add @s radio_charge 1

execute if score @s radio_charge matches 1 run title @s actionbar {"text":"Рация: 1/3","color":"yellow"}
execute if score @s radio_charge matches 2 run title @s actionbar {"text":"Рация: 2/3","color":"yellow"}
execute if score @s radio_charge matches 3 run function maniac:radio/loc1/ready