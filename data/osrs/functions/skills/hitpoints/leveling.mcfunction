# Calculate total Hitpoints EXP ((Attack + Strength + Defence) / 3)
execute as @a at @s if score @s hitpoint_earned matches 1.. run scoreboard players operation @s hitpoint_earned /= osrs hitpnt_exp_ratio
execute as @a at @s if score @s hitpoint_earned matches 1.. run scoreboard players operation @s hitpoint_earned *= osrs cfg_mod_hitp
execute as @a at @s if score @s hitpoint_earned matches 1.. run scoreboard players operation @s hitpoint_earned /= osrs cfg_mod_100
execute as @a at @s if score @s hitpoint_earned matches 1.. run scoreboard players operation @s hitpoint_exp += @s hitpoint_earned
execute as @a at @s run scoreboard players set @s hitpoint_earned 0

# Check for level up
execute as @a at @s if score @s hitpoint_exp >= @s hitpoint_req_exp run scoreboard players set @s skill_to_level 12

# Handle level up
execute as @a at @s if score @s skill_to_level matches 12 run scoreboard players add @s hitpoint_lvl 1
execute as @a at @s if score @s skill_to_level matches 12 run scoreboard players operation @s skill_level = @s hitpoint_lvl
execute as @a at @s if score @s skill_to_level matches 12 run function osrs:scoreboard/level_up
execute as @a at @s if score @s skill_to_level matches 12 run function osrs:skills/hitpoints/advancements
execute as @a at @s if score @s skill_to_level matches 12 run scoreboard players operation @s hitpoint_req_exp = @s lvl_exp_required
execute as @a at @s if score @s skill_to_level matches 12 run title @s title {"text": "Hitpoints", "color": "green"}
execute as @a at @s if score @s skill_to_level matches 12 run scoreboard players set @s skill_to_level 0
