# Add mining EXP
execute as @s run scoreboard players operation @s mining_earn_1 *= osrs mining_mod_stone
execute as @s run scoreboard players operation @s mining_earned += @s mining_earn_1
execute as @s run scoreboard players set @s mining_earn_1 0

execute as @s run scoreboard players operation @s mining_earn_2 *= osrs mining_mod_stone
execute as @s run scoreboard players operation @s mining_earned += @s mining_earn_2
execute as @s run scoreboard players set @s mining_earn_2 0

execute as @s run scoreboard players operation @s mining_earn_3 *= osrs mining_mod_stone
execute as @s run scoreboard players operation @s mining_earned += @s mining_earn_3
execute as @s run scoreboard players set @s mining_earn_3 0

execute as @s run scoreboard players operation @s mining_earn_4 *= osrs mining_mod_stone
execute as @s run scoreboard players operation @s mining_earned += @s mining_earn_4
execute as @s run scoreboard players set @s mining_earn_4 0

execute as @s run scoreboard players operation @s mining_earn_5 *= osrs mining_mod_coal
execute as @s run scoreboard players operation @s mining_earned += @s mining_earn_5
execute as @s run scoreboard players set @s mining_earn_5 0

execute as @s run scoreboard players operation @s mining_earn_6 *= osrs mining_mod_nquar
execute as @s run scoreboard players operation @s mining_earned += @s mining_earn_6
execute as @s run scoreboard players set @s mining_earn_6 0

execute as @s run scoreboard players operation @s mining_earn_7 *= osrs mining_mod_redst
execute as @s run scoreboard players operation @s mining_earned += @s mining_earn_7
execute as @s run scoreboard players set @s mining_earn_7 0

execute as @s run scoreboard players operation @s mining_earn_8 *= osrs mining_mod_iron
execute as @s run scoreboard players operation @s mining_earned += @s mining_earn_8
execute as @s run scoreboard players set @s mining_earn_8 0

execute as @s run scoreboard players operation @s mining_earn_9 *= osrs mining_mod_glow
execute as @s run scoreboard players operation @s mining_earned += @s mining_earn_9
execute as @s run scoreboard players set @s mining_earn_9 0

execute as @s run scoreboard players operation @s mining_earn_10 *= osrs mining_mod_gold
execute as @s run scoreboard players operation @s mining_earned += @s mining_earn_10
execute as @s run scoreboard players set @s mining_earn_10 0

execute as @s run scoreboard players operation @s mining_earn_11 *= osrs mining_mod_lapis
execute as @s run scoreboard players operation @s mining_earned += @s mining_earn_11
execute as @s run scoreboard players set @s mining_earn_11 0

execute as @s run scoreboard players operation @s mining_earn_12 *= osrs mining_mod_diamd
execute as @s run scoreboard players operation @s mining_earned += @s mining_earn_12
execute as @s run scoreboard players set @s mining_earn_12 0

execute as @s run scoreboard players operation @s mining_earn_13 *= osrs mining_mod_emrld
execute as @s run scoreboard players operation @s mining_earned += @s mining_earn_13
execute as @s run scoreboard players set @s mining_earn_13 0

execute as @s run scoreboard players operation @s mining_earned *= osrs cfg_mod_mine
execute as @s run scoreboard players operation @s mining_earned /= osrs cfg_mod_100

execute as @s if score @s mining_earned matches 1.. run title @s actionbar [{"text": "+ "}, {"score":{"name":"@s","objective":"mining_earned"}, "color": "green", "bold": true}, {"text": " Mining EXP"}]
execute as @s run scoreboard players operation @s mining_exp += @s mining_earned
execute as @s run scoreboard players set @s mining_earned 0

# execute as @s run scoreboard players operation @s m
# execute as @a at @s if score @s mining_exp matches 1.. store result bossbar minecraft:1 value run scoreboard players get @s attack_exp
# execute as @a at @s if score @s mining_exp matches 1.. store result bossbar minecraft:1 max run scoreboard players get @s attack_req_exp

# Check for level up
execute as @s if score @s mining_exp >= @s mining_req_exp run function osrs:skills/mining/leveling
