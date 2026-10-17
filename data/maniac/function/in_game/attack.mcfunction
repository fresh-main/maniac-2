# Tag nearest non-maniac player as last_attacker and resolve attack
execute at @s run tag @p[distance=..3,team=!maniac,limit=1] add last_attacker
execute as @p[tag=last_attacker,limit=1] run function maniac:in_game/attack_resolve
data remove entity @s attack
