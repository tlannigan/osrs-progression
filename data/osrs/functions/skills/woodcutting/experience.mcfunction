# Add woodcutting EXP
execute as @s run scoreboard players operation @s woodcut_earned += @s woodcut_earn_1
execute as @s run scoreboard players set @s woodcut_earn_1 0

execute as @s run scoreboard players operation @s woodcut_earned += @s woodcut_earn_2
execute as @s run scoreboard players set @s woodcut_earn_2 0

execute as @s run scoreboard players operation @s woodcut_earned += @s woodcut_earn_3
execute as @s run scoreboard players set @s woodcut_earn_3 0

execute as @s run scoreboard players operation @s woodcut_earned += @s woodcut_earn_4
execute as @s run scoreboard players set @s woodcut_earn_4 0

execute as @s run scoreboard players operation @s woodcut_earned += @s woodcut_earn_5
execute as @s run scoreboard players set @s woodcut_earn_5 0

execute as @s run scoreboard players operation @s woodcut_earned += @s woodcut_earn_6
execute as @s run scoreboard players set @s woodcut_earn_6 0

execute as @s run scoreboard players operation @s woocut_earned *= osrs woodcut_mod_logs
execute as @s run scoreboard players operation @s woodcut_earned *= osrs cfg_mod_wood
execute as @s run scoreboard players operation @s woodcut_earned /= osrs cfg_mod_100

execute as @s if score @s woodcut_earned matches 1.. run title @s actionbar [{"text": "+ "}, {"score":{"name":"@s","objective":"woodcut_earned"}, "color": "green", "bold": true}, {"text": " Woodcutting EXP"}]
execute as @s run scoreboard players operation @s woodcut_exp += @s woodcut_earned
execute as @s run scoreboard players set @s woodcut_earned 0

# execute as @s run scoreboard players operation @s m
# execute as @a at @s if score @s woodcut_exp matches 1.. store result bossbar minecraft:1 value run scoreboard players get @s attack_exp
# execute as @a at @s if score @s woodcut_exp matches 1.. store result bossbar minecraft:1 max run scoreboard players get @s attack_req_exp

# Check for level up
execute as @s if score @s woodcut_exp >= @s woodcut_req_exp run function osrs:skills/woodcutting/leveling
