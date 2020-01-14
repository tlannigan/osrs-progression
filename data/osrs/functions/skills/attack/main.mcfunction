# Attack EXP
execute as @a at @s run tellraw @s [{"text": "Attack Exp: "}, {"score":{"name":"@s","objective":"attack_exp"}, "color": "green", "bold": true}, {"text": "/"}, {"score":{"name":"@s","objective":"attack_req_exp"}, "color": "green", "bold": true}]

# Check if player is holding a sword
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] run tag @s add holdingSword
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:stone_sword"}}] run tag @s add holdingSword
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run tag @s add holdingSword
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:golden_sword"}}] run tag @s add holdingSword
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run tag @s add holdingSword
execute as @a at @s[tag=holdingSword, nbt=!{SelectedItem:{id:"minecraft:wooden_sword"}}, nbt=!{SelectedItem:{id:"minecraft:stone_sword"}}, nbt=!{SelectedItem:{id:"minecraft:iron_sword"}}, nbt=!{SelectedItem:{id:"minecraft:golden_sword"}}, nbt=!{SelectedItem:{id:"minecraft:diamond_sword"}}] run tag @s remove holdingSword

execute as @a at @s run function osrs:skills/attack/leveling
execute as @a at @s run function osrs:skills/attack/buffs