give @s goat_horn[item_name='{"color":"aqua","text":"Рация"}',custom_data={item:"рация"},item_model="radio"] 1
playsound minecraft:entity.item.pickup block @s ~ ~ ~ 1 1
title @s actionbar {"text":"Вы забрали рацию","color":"aqua"}

# Убиваем item_display (пассажир interaction умрёт автоматически)
kill @e[type=item_display,tag=radio_loc1_visual,limit=1,sort=nearest,distance=..6]