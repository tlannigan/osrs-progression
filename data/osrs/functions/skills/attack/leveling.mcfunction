# Add sword damage to exp
execute as @a at @s[tag=holdingSword] run scoreboard players operation @s attack_earned *= osrs cfg_mod_atck
execute as @a at @s[tag=holdingSword] run scoreboard players operation @s attack_earned /= osrs cfg_mod_div

execute as @a at @s[tag=holdingSword] if score @s attack_earned matches 1.. run title @s actionbar [{"text": "+ "}, {"score":{"name":"@s","objective":"attack_earned"}, "color": "green", "bold": true}, {"text": " Attack EXP"}]
execute as @a at @s[tag=holdingSword] run scoreboard players operation @s attack_exp += @s attack_earned

# Add to Hitpoints EXP tracker
execute as @a at @s[tag=holdingSword] run scoreboard players operation @s hitpoint_earned += @s attack_earned
execute as @a at @s run scoreboard players set @s attack_earned 0

# Check for level up
execute as @a at @s if score @s attack_exp >= @s attack_req_exp run scoreboard players set @s skill_to_level 2

# Handle level up
execute as @a at @s if score @s skill_to_level matches 2 run scoreboard players add @s attack_lvl 1
execute as @a at @s if score @s skill_to_level matches 2 run scoreboard players operation @s skill_level = @s attack_lvl
execute as @a at @s if score @s skill_to_level matches 2 run function osrs:scoreboard/level_up
execute as @a at @s if score @s skill_to_level matches 2 run function osrs:skills/attack/advancements
execute as @a at @s if score @s skill_to_level matches 2 run scoreboard players operation @s attack_req_exp = @s lvl_exp_required
execute as @a at @s if score @s skill_to_level matches 2 run title @s title {"text": "Attack", "color": "green"}
execute as @a at @s if score @s skill_to_level matches 2 run scoreboard players set @s skill_to_level 0
