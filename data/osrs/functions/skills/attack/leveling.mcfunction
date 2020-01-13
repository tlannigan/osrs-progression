# Check for level up
execute as @a at @s if score @s attack_exp >= @s attack_req_exp run scoreboard players set @s skill_to_level 2

# Handle level up
execute as @a at @s if score @s skill_to_level matches 2 run scoreboard players add @s attack_lvl 1
execute as @a at @s if score @s skill_to_level matches 2 run scoreboard players operation @s skill_level = @s attack_lvl
execute as @a at @s if score @s skill_to_level matches 2 run function osrs:scoreboard/level_up
execute as @a at @s if score @s skill_to_level matches 2 run scoreboard players operation @s attack_req_exp = @s lvl_exp_required
execute as @a at @s if score @s skill_to_level matches 2 run scoreboard players set @s skill_to_level 0

# Attack Advancements (could be moved to only run during level up)
execute as @s if score @s attack_lvl matches 0.. run advancement grant @s only osrs:attack/attack
execute as @s if score @s attack_lvl matches 10.. run advancement grant @s only osrs:attack/lvl10
execute as @s if score @s attack_lvl matches 20.. run advancement grant @s only osrs:attack/lvl20
execute as @s if score @s attack_lvl matches 30.. run advancement grant @s only osrs:attack/lvl30
execute as @s if score @s attack_lvl matches 40.. run advancement grant @s only osrs:attack/lvl40
execute as @s if score @s attack_lvl matches 50.. run advancement grant @s only osrs:attack/lvl50
execute as @s if score @s attack_lvl matches 60.. run advancement grant @s only osrs:attack/lvl60
execute as @s if score @s attack_lvl matches 70.. run advancement grant @s only osrs:attack/lvl70
execute as @s if score @s attack_lvl matches 80.. run advancement grant @s only osrs:attack/lvl80
execute as @s if score @s attack_lvl matches 90.. run advancement grant @s only osrs:attack/lvl90
execute as @s if score @s attack_lvl matches 99.. run advancement grant @s only osrs:attack/lvl99
