# Handle level up
execute as @s run scoreboard players add @s hitpoint_lvl 1
execute as @s run scoreboard players operation @s skill_level = @s hitpoint_lvl
execute as @s run scoreboard players operation @s hitpoint_bar_min = @s hitpoint_req_exp
execute as @s run function osrs:scoreboard/level_up
execute as @s run function osrs:skills/hitpoints/advancements
execute as @s run scoreboard players operation @s hitpoint_req_exp = @s lvl_exp_required
execute as @s run title @s title {"text": "Hitpoints", "color": "green"}
