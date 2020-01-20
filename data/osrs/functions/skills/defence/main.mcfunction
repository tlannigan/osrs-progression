# Defence EXP
# execute as @a at @s run tellraw @s [{"text": "Defence Exp: "}, {"score":{"name":"@s","objective":"defence_exp"}, "color": "green", "bold": true}, {"text": "/"}, {"score":{"name":"@s","objective":"defence_req_exp"}, "color": "green", "bold": true}]
# execute as @a at @s run tellraw @s [{"text": "Defence Level: "},{"score":{"name":"@s","objective":"strength_lvl"}, "color": "green", "bold": true}]

# Check if player is holding a shield
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:shield"}}] run tag @s add holdingShield
execute as @a at @s[tag=holdingShield, nbt=!{SelectedItem:{id:"minecraft:shield"}}] run tag @s remove holdingShield

execute as @a at @s run function osrs:skills/defence/leveling
execute as @a at @s run function osrs:skills/defence/buffs
