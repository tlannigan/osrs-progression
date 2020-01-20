# Hitpoints EXP
# execute as @a at @s run tellraw @s [{"text": "Hitpoints Exp: "},{"score":{"name":"@s","objective":"hitpoint_exp"}, "color": "green", "bold": true}, {"text": "/"},{"score":{"name":"@s","objective":"hitpoint_req_exp"}, "color": "green", "bold": true}]

execute as @a at @s run function osrs:skills/hitpoints/experience
execute as @a at @s run function osrs:skills/hitpoints/buffs