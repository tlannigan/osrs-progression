# Check for level up
execute as @a at @s if score @s strength_exp >= @s strength_req_exp run scoreboard players set @s skill_to_level 21

# Handle level up
execute as @a at @s if score @s skill_to_level matches 21 run scoreboard players add @s strength_lvl 1
execute as @a at @s if score @s skill_to_level matches 21 run scoreboard players operation @s skill_level = @s strength_lvl
execute as @a at @s if score @s skill_to_level matches 21 run function osrs:scoreboard/level_up
execute as @a at @s if score @s skill_to_level matches 21 run scoreboard players operation @s strength_req_exp = @s lvl_exp_required
execute as @a at @s if score @s skill_to_level matches 21 run scoreboard players set @s skill_to_level 0

# Strength Advancements (could be moved to only run during level up)
execute as @s if score @s strength_lvl matches 0.. run advancement grant @s only osrs:strength/strength
execute as @s if score @s strength_lvl matches 10.. run advancement grant @s only osrs:strength/lvl10
execute as @s if score @s strength_lvl matches 20.. run advancement grant @s only osrs:strength/lvl20
execute as @s if score @s strength_lvl matches 30.. run advancement grant @s only osrs:strength/lvl30
execute as @s if score @s strength_lvl matches 40.. run advancement grant @s only osrs:strength/lvl40
execute as @s if score @s strength_lvl matches 50.. run advancement grant @s only osrs:strength/lvl50
execute as @s if score @s strength_lvl matches 60.. run advancement grant @s only osrs:strength/lvl60
execute as @s if score @s strength_lvl matches 70.. run advancement grant @s only osrs:strength/lvl70
execute as @s if score @s strength_lvl matches 80.. run advancement grant @s only osrs:strength/lvl80
execute as @s if score @s strength_lvl matches 90.. run advancement grant @s only osrs:strength/lvl90
execute as @s if score @s strength_lvl matches 99.. run advancement grant @s only osrs:strength/lvl99
