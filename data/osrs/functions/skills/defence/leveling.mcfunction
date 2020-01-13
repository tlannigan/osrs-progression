# Check for level up
execute as @a at @s if score @s defence_exp >= @s defence_req_exp run scoreboard players set @s skill_to_level 6

# Handle level up
execute as @a at @s if score @s skill_to_level matches 6 run scoreboard players add @s defence_lvl 1
execute as @a at @s if score @s skill_to_level matches 6 run scoreboard players operation @s skill_level = @s defence_lvl
execute as @a at @s if score @s skill_to_level matches 6 run function osrs:scoreboard/level_up
execute as @a at @s if score @s skill_to_level matches 6 run scoreboard players operation @s defence_req_exp = @s lvl_exp_required
execute as @a at @s if score @s skill_to_level matches 6 run scoreboard players set @s skill_to_level 0

# Defence Advancements (could be moved to only run during level up)
execute as @s if score @s defence_lvl matches 0.. run advancement grant @s only osrs:defence/defence
execute as @s if score @s defence_lvl matches 10.. run advancement grant @s only osrs:defence/lvl10
execute as @s if score @s defence_lvl matches 20.. run advancement grant @s only osrs:defence/lvl20
execute as @s if score @s defence_lvl matches 30.. run advancement grant @s only osrs:defence/lvl30
execute as @s if score @s defence_lvl matches 40.. run advancement grant @s only osrs:defence/lvl40
execute as @s if score @s defence_lvl matches 50.. run advancement grant @s only osrs:defence/lvl50
execute as @s if score @s defence_lvl matches 60.. run advancement grant @s only osrs:defence/lvl60
execute as @s if score @s defence_lvl matches 70.. run advancement grant @s only osrs:defence/lvl70
execute as @s if score @s defence_lvl matches 80.. run advancement grant @s only osrs:defence/lvl80
execute as @s if score @s defence_lvl matches 90.. run advancement grant @s only osrs:defence/lvl90
execute as @s if score @s defence_lvl matches 99.. run advancement grant @s only osrs:defence/lvl99
