execute as @s[tag=radio_interact,tag=radio_loc1_locked] if items entity @s weapon.mainhand minecraft:potion[custom_name='{"text":"Топливо (1л.)","color":"yellow","italic":false}'] at @s run function maniac:radio/loc1/charge
execute as @s[tag=radio_interact,tag=radio_loc1_ready] at @s run function maniac:radio/loc1/take
execute as @s[tag=radio_loc1_interaction] on target run function maniac:radio/loc1/interact
execute as @s[tag=radio_heli_interaction] on target run function maniac:radio/loc1/heli/enter

execute unless function maniac:in_game/interaction/interactioner_test run return run data remove entity @s interaction
execute as @s[tag=Item_interact] if function maniac:in_game/item_pickup/item_test run function maniac:in_game/item_pickup/select_function
execute as @s[tag=backdoor_trigger] on target run title @s actionbar [{"text":"С ","color":"yellow"},{"text":"этой","color":"gold","bold":true},{"text":" стороны нет замка"}]
execute as @s[tag=roof] on target run title @s actionbar [{"text":"Дверь ","color":"yellow"},{"text":"пока","color":"gold","bold":true},{"text":" закрыта"}]
execute as @s[tag=roof] at @s run playsound block.chest.locked block @a
execute as @s[tag=key_need] run function maniac:in_game/interaction/door
execute as @s[tag=num] at @s run function maniac:objects/computer/input_number
execute as @s[tag=button] on target run function maniac:in_game/interaction/turniket
execute as @s[tag=zamok] if data storage efm switch{mainEntranceOpen:0} on target run function maniac:in_game/interaction/zamok
execute as @s[tag=resistor_interaction] if data storage efm switch{electricity:0} on target run function maniac:in_game/interaction/resistor
execute as @s[tag=blocked_door] at @s on target run function maniac:objects/door/blocked_door
execute as @s[tag=phone_wire_interaction] if data storage efm switch{phoneHasConnection:0} on target run function maniac:objects/phone/connection_wire
execute as @s[tag=wire_interaction] if data storage efm switch{wireFix:0} on target run function maniac:in_game/interaction/wire
execute as @s[tag=corpse] run function maniac:objects/corpse/pickup_item_from_corpse
execute as @s[tag=phone_num] run function maniac:objects/phone/num
execute as @s[tag=phone_Enter] run function maniac:objects/phone/enter
execute as @s[tag=phone_tube_interaction] at @s on target as @s[distance=..2] run function maniac:objects/phone/tube
execute as @s[tag=camera_interaction] run function maniac:objects/camera/macros with entity @s Passengers[0].data
execute as @s[tag=camera_pc_interaction] run function maniac:objects/camera_pc/buttons
data remove entity @s interaction