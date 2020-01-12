# Strength EXP
execute as @a at @s run tellraw @s [{"text": "Strength Exp: "}, {"score":{"name":"@s","objective":"strength_exp"}, "color": "green", "bold": true}]
# execute as @a at @s run tellraw @s [{"text": "Attack: "},{"score":{"name":"@s","objective":"skill_level"}, "color": "green", "bold": true}]
# execute as @a at @s run tellraw @s [{"text": "Divisor: "},{"score":{"name":"osrs","objective":"cfg_mod_div"}, "color": "green", "bold": true}]

# Check for level up
execute as @a at @s if score @s strength_exp >= @s strength_req_exp run scoreboard players set @s skill_to_level 2

# Handle level up
execute as @a at @s if score @s skill_to_level matches 2 run scoreboard players add @s strength_lvl 1
execute as @a at @s if score @s skill_to_level matches 2 run scoreboard players operation @s skill_level = @s strength_lvl
execute as @a at @s if score @s skill_to_level matches 2 run function osrs:scoreboard/level_up
execute as @a at @s if score @s skill_to_level matches 2 run scoreboard players operation @s strength_req_exp = @s lvl_exp_required
execute as @a at @s if score @s skill_to_level matches 2 run say Leveled!
execute as @a at @s if score @s skill_to_level matches 2 run scoreboard players set @s skill_to_level 0

# Check if player is holding a sword
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:wooden_axe"}}] run tag @s add holdingAxe
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:stone_axe"}}] run tag @s add holdingAxe
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:iron_axe"}}] run tag @s add holdingAxe
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:golden_axe"}}] run tag @s add holdingAxe
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] run tag @s add holdingAxe

execute as @a at @s[tag=holdingSword, nbt=!{SelectedItem:{id:"minecraft:wooden_axe"}}, nbt=!{SelectedItem:{id:"minecraft:stone_axe"}}, nbt=!{SelectedItem:{id:"minecraft:iron_axe"}}, nbt=!{SelectedItem:{id:"minecraft:golden_axe"}}, nbt=!{SelectedItem:{id:"minecraft:diamond_axe"}}] run tag @s remove holdingAxe

# Add sword damage to exp then reset
execute as @a at @s[tag=holdingAxe] run scoreboard players operation @s strength_earned *= osrs cfg_mod_atck
execute as @a at @s[tag=holdingAxe] run scoreboard players operation @s strength_earned /= osrs cfg_mod_div
execute as @a at @s[tag=holdingAxe] run scoreboard players operation @s strength_exp += @s strength_earned
execute as @a at @s run scoreboard players set @s strength_earned 0