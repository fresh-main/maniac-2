# Спавним item_display (визуальная модель) с interaction (пассажир для кликов)
summon item_display ~ ~ ~ {Tags:["radio_loc1_visual","radio_loc1_item"],Passengers:[{id:"minecraft:interaction",Tags:["radio_loc1_interaction","radio_loc1_locked"],interaction:{height:1.0f,width:1.0f}}],item_display:"ground",item:{id:"minecraft:redstone",count:1,components:{"minecraft:item_name":'{"color":"aqua","text":"Рация"}',"minecraft:item_model":"radio"}}}

scoreboard players set @e[type=interaction,tag=radio_loc1_locked,limit=1,sort=nearest] radio_charge 0
