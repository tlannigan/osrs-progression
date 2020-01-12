# Attack EXP
execute as @a at @s run tellraw @s [{"text": "Attack Exp: "}, {"score":{"name":"@s","objective":"attack_exp"}, "color": "green", "bold": true}]
# execute as @a at @s run tellraw @s [{"text": "Attack: "},{"score":{"name":"@s","objective":"skill_level"}, "color": "green", "bold": true}]
# execute as @a at @s run tellraw @s [{"text": "Divisor: "},{"score":{"name":"osrs","objective":"cfg_mod_div"}, "color": "green", "bold": true}]

# Check for level up
execute as @a at @s if score @s attack_exp >= @s attack_req_exp run scoreboard players set @s skill_to_level 2

# Handle level up
execute as @a at @s if score @s skill_to_level matches 2 run scoreboard players add @s attack_lvl 1
execute as @a at @s if score @s skill_to_level matches 2 run scoreboard players operation @s skill_level = @s attack_lvl
execute as @a at @s if score @s skill_to_level matches 2 run function osrs:scoreboard/level_up
execute as @a at @s if score @s skill_to_level matches 2 run scoreboard players operation @s attack_req_exp = @s lvl_exp_required
execute as @a at @s if score @s skill_to_level matches 2 run say Leveled!
execute as @a at @s if score @s skill_to_level matches 2 run scoreboard players set @s skill_to_level 0

# Check if player is holding a sword
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] run tag @s add holdingSword
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:stone_sword"}}] run tag @s add holdingSword
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run tag @s add holdingSword
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:golden_sword"}}] run tag @s add holdingSword
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run tag @s add holdingSword

execute as @a at @s[tag=holdingSword, nbt=!{SelectedItem:{id:"minecraft:wooden_sword"}}, nbt=!{SelectedItem:{id:"minecraft:stone_sword"}}, nbt=!{SelectedItem:{id:"minecraft:iron_sword"}}, nbt=!{SelectedItem:{id:"minecraft:golden_sword"}}, nbt=!{SelectedItem:{id:"minecraft:diamond_sword"}}] run tag @s remove holdingSword

# Add sword damage to exp then reset
execute as @a at @s[tag=holdingSword] run scoreboard players operation @s attack_earned *= osrs cfg_mod_atck
execute as @a at @s[tag=holdingSword] run scoreboard players operation @s attack_earned /= osrs cfg_mod_div
execute as @a at @s[tag=holdingSword] run scoreboard players operation @s attack_exp += @s attack_earned
execute as @a at @s[tag=holdingSword] run scoreboard players set @s attack_earned 0