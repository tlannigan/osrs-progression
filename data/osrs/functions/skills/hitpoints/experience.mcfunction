# Calculate total Hitpoints EXP ((Attack + Strength + Defence) / 3)
execute as @a at @s if score @s hitpoint_earned matches 1.. run scoreboard players operation @s hitpoint_earned /= osrs hitpnt_exp_ratio
execute as @a at @s if score @s hitpoint_earned matches 1.. run scoreboard players operation @s hitpoint_earned *= osrs cfg_mod_hitp
execute as @a at @s if score @s hitpoint_earned matches 1.. run scoreboard players operation @s hitpoint_earned /= osrs cfg_mod_100
execute as @a at @s if score @s hitpoint_earned matches 1.. run scoreboard players operation @s hitpoint_exp += @s hitpoint_earned
execute as @a at @s run scoreboard players set @s hitpoint_earned 0

# Check for level up
execute as @a at @s if score @s hitpoint_exp >= @s hitpoint_req_exp run function osrs:skills/hitpoints/leveling
