# Strength EXP
execute as @a at @s run tellraw @s [{"text": "Strength Exp: "}, {"score":{"name":"@s","objective":"strength_exp"}, "color": "green", "bold": true}]
# execute as @a at @s run tellraw @s [{"text": "Strength Level: "},{"score":{"name":"@s","objective":"strength_lvl"}, "color": "green", "bold": true}]

# Check if player is holding a axe
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:wooden_axe"}}] run tag @s add holdingAxe
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:stone_axe"}}] run tag @s add holdingAxe
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:iron_axe"}}] run tag @s add holdingAxe
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:golden_axe"}}] run tag @s add holdingAxe
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] run tag @s add holdingAxe
execute as @a at @s[tag=holdingAxe, nbt=!{SelectedItem:{id:"minecraft:wooden_axe"}}, nbt=!{SelectedItem:{id:"minecraft:stone_axe"}}, nbt=!{SelectedItem:{id:"minecraft:iron_axe"}}, nbt=!{SelectedItem:{id:"minecraft:golden_axe"}}, nbt=!{SelectedItem:{id:"minecraft:diamond_axe"}}] run tag @s remove holdingAxe

# Add axe damage to exp then reset
execute as @a at @s[tag=holdingAxe] run scoreboard players operation @s strength_earn_1 *= osrs cfg_mod_stre
execute as @a at @s[tag=holdingAxe] run scoreboard players operation @s strength_earn_1 /= osrs cfg_mod_div
execute as @a at @s[tag=holdingAxe] if score @s strength_earn_1 matches 1.. run title @s actionbar [{"text": "+ "}, {"score":{"name":"@s","objective":"strength_earn_1"}, "color": "green", "bold": true}, {"text": " Strength EXP"}]
execute as @a at @s[tag=holdingAxe] run scoreboard players operation @s strength_exp += @s strength_earn_1
execute as @a at @s run scoreboard players set @s strength_earn_1 0

execute as @a at @s run function osrs:skills/attack/leveling
execute as @a at @s run function osrs:skills/attack/buffs