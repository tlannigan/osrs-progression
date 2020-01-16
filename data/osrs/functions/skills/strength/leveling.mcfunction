# Add axe damage to exp then reset
execute as @a at @s[tag=holdingAxe] run scoreboard players operation @s strength_earned *= osrs cfg_mod_stre
execute as @a at @s[tag=holdingAxe] run scoreboard players operation @s strength_earned /= osrs cfg_mod_100

execute as @a at @s[tag=holdingAxe] if score @s strength_earned matches 1.. run title @s actionbar [{"text": "+ "}, {"score":{"name":"@s","objective":"strength_earned"}, "color": "green", "bold": true}, {"text": " Strength EXP"}]
execute as @a at @s[tag=holdingAxe] run scoreboard players operation @s strength_exp += @s strength_earned

# Add to Hitpoints EXP tracker
execute as @a at @s[tag=holdingAxe] run scoreboard players operation @s hitpoint_earned += @s strength_earned
execute as @a at @s run scoreboard players set @s strength_earned 0

# Check for level up
execute as @a at @s if score @s strength_exp >= @s strength_req_exp run scoreboard players set @s skill_to_level 21

# Handle level up
execute as @a at @s if score @s skill_to_level matches 21 run scoreboard players add @s strength_lvl 1
execute as @a at @s if score @s skill_to_level matches 21 run scoreboard players operation @s skill_level = @s strength_lvl
execute as @a at @s if score @s skill_to_level matches 21 run function osrs:scoreboard/level_up
execute as @a at @s if score @s skill_to_level matches 21 run function osrs:skills/strength/advancements
execute as @a at @s if score @s skill_to_level matches 21 run scoreboard players operation @s strength_req_exp = @s lvl_exp_required
execute as @a at @s if score @s skill_to_level matches 21 run title @s title {"text": "Strength", "color": "green"}
execute as @a at @s if score @s skill_to_level matches 21 run scoreboard players set @s skill_to_level 0
