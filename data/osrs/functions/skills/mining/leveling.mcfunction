# Handle level up
execute as @s run scoreboard players add @s mining_lvl 1
execute as @s run scoreboard players operation @s skill_level = @s mining_lvl
execute as @s run scoreboard players operation @s mining_bar_min = @s mining_req_exp
execute as @s run function osrs:scoreboard/level_up
execute as @s run function osrs:skills/mining/advancements
execute as @s run scoreboard players operation @s mining_req_exp = @s lvl_exp_required
execute as @s run title @s title {"text": "Mining", "color": "green"}
