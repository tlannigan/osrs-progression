# Attack EXP
execute as @a at @s run tellraw @s [{"text": "Attack Exp: "}, {"score":{"name":"@s","objective":"attack_exp"}, "color": "green", "bold": true}]
# execute as @a at @s run tellraw @s [{"text": "Attack Level: "},{"score":{"name":"@s","objective":"strength_lvl"}, "color": "green", "bold": true}]

# Check if player is holding a sword
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] run tag @s add holdingSword
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:stone_sword"}}] run tag @s add holdingSword
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run tag @s add holdingSword
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:golden_sword"}}] run tag @s add holdingSword
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run tag @s add holdingSword
execute as @a at @s[tag=holdingSword, nbt=!{SelectedItem:{id:"minecraft:wooden_sword"}}, nbt=!{SelectedItem:{id:"minecraft:stone_sword"}}, nbt=!{SelectedItem:{id:"minecraft:iron_sword"}}, nbt=!{SelectedItem:{id:"minecraft:golden_sword"}}, nbt=!{SelectedItem:{id:"minecraft:diamond_sword"}}] run tag @s remove holdingSword

# Add sword damage to exp then reset
execute as @a at @s[tag=holdingSword] run scoreboard players operation @s attack_earn_1 *= osrs cfg_mod_atck
execute as @a at @s[tag=holdingSword] run scoreboard players operation @s attack_earn_1 /= osrs cfg_mod_div
execute as @a at @s[tag=holdingSword] if score @s attack_earn_1 matches 1.. run title @s actionbar [{"text": "+ "}, {"score":{"name":"@s","objective":"attack_earn_1"}, "color": "green", "bold": true}, {"text": " Attack EXP"}]
execute as @a at @s[tag=holdingSword] run scoreboard players operation @s attack_exp += @s attack_earn_1
execute as @a at @s run scoreboard players set @s attack_earn_1 0

execute as @a at @s run function osrs:skills/attack/leveling
execute as @a at @s run function osrs:skills/attack/buffs