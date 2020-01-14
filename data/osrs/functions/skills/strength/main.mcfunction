# Strength EXP
execute as @a at @s run tellraw @s [{"text": "Strength Exp: "}, {"score":{"name":"@s","objective":"strength_exp"}, "color": "green", "bold": true}, {"text": "/"}, {"score":{"name":"@s","objective":"strength_req_exp"}, "color": "green", "bold": true}]
# execute as @a at @s run tellraw @s [{"text": "Strength Level: "},{"score":{"name":"@s","objective":"strength_lvl"}, "color": "green", "bold": true}]

# Check if player is holding a axe
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:wooden_axe"}}] run tag @s add holdingAxe
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:stone_axe"}}] run tag @s add holdingAxe
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:iron_axe"}}] run tag @s add holdingAxe
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:golden_axe"}}] run tag @s add holdingAxe
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] run tag @s add holdingAxe
execute as @a at @s[tag=holdingAxe, nbt=!{SelectedItem:{id:"minecraft:wooden_axe"}}, nbt=!{SelectedItem:{id:"minecraft:stone_axe"}}, nbt=!{SelectedItem:{id:"minecraft:iron_axe"}}, nbt=!{SelectedItem:{id:"minecraft:golden_axe"}}, nbt=!{SelectedItem:{id:"minecraft:diamond_axe"}}] run tag @s remove holdingAxe

execute as @a at @s run function osrs:skills/strength/leveling
execute as @a at @s run function osrs:skills/strength/buffs