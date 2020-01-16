# Calculate EXP for damage blocked and taken
execute as @a at @s run scoreboard players operation @s defence_earn_1 *= osrs cfg_mod_defc
execute as @a at @s run scoreboard players operation @s defence_earn_1 /= osrs cfg_mod_100
execute as @a at @s run scoreboard players operation @s defence_earned += @s defence_earn_1
execute as @a at @s run scoreboard players set @s defence_earn_1 0

execute as @a at @s run scoreboard players operation @s defence_earn_2 *= osrs cfg_mod_defc
execute as @a at @s run scoreboard players operation @s defence_earn_2 /= osrs cfg_mod_100
execute as @a at @s run scoreboard players operation @s defence_earned += @s defence_earn_2
execute as @a at @s run scoreboard players set @s defence_earn_2 0

execute as @a at @s if score @s defence_earned matches 1.. run title @s actionbar [{"text": "+ "}, {"score":{"name":"@s","objective":"defence_earned"}, "color": "green", "bold": true}, {"text": " Defence EXP"}]
execute as @a at @s run scoreboard players operation @s defence_exp += @s defence_earned

# Add to Hitpoints EXP tracker
execute as @a at @s run scoreboard players operation @s hitpoint_earned += @s defence_earned
execute as @a at @s run scoreboard players set @s defence_earned 0

# Check for level up
execute as @a at @s if score @s defence_exp >= @s defence_req_exp run scoreboard players set @s skill_to_level 6

# Handle level up
execute as @a at @s if score @s skill_to_level matches 6 run scoreboard players add @s defence_lvl 1
execute as @a at @s if score @s skill_to_level matches 6 run scoreboard players operation @s skill_level = @s defence_lvl
execute as @a at @s if score @s skill_to_level matches 6 run function osrs:scoreboard/level_up
execute as @a at @s if score @s skill_to_level matches 6 run function osrs:skills/defence/advancements
execute as @a at @s if score @s skill_to_level matches 6 run scoreboard players operation @s defence_req_exp = @s lvl_exp_required
execute as @a at @s if score @s skill_to_level matches 6 run title @s title {"text": "Defence", "color": "green"}
execute as @a at @s if score @s skill_to_level matches 6 run scoreboard players set @s skill_to_level 0
