# Divide Prayer by two
execute as @s run scoreboard players operation @s base_combat_lvl = @s prayer_lvl
execute as @s run scoreboard players operation @s base_combat_lvl /= osrs base_combat_2

# Add Hitpoints and Defence, multiply by 100 to keep precision
execute as @s run scoreboard players operation @s base_combat_lvl += @s hitpoint_lvl
execute as @s run scoreboard players operation @s base_combat_lvl += @s defence_lvl
execute as @s run scoreboard players operation @s base_combat_lvl *= osrs base_combat_100

# Divide by four to get your base combat level
execute as @s run scoreboard players operation @s base_combat_lvl /= osrs base_combat_4

# Calculate melee level
execute as @s run scoreboard players operation @s melee_combat_lvl = @s attack_lvl
execute as @s run scoreboard players operation @s melee_combat_lvl += @s strength_lvl
execute as @s run scoreboard players operation @s melee_combat_lvl *= osrs base_combat_325
execute as @s run scoreboard players operation @s melee_combat_lvl *= osrs base_combat_100
execute as @s run scoreboard players operation @s melee_combat_lvl /= osrs base_combat_1000

# Calculate ranged combat level
###############################

# Calculate magic combat level
##############################

# Calulate which combat level is the highest
############################################

# Set combat level
execute as @s run scoreboard players operation @s real_combat_lvl = @s base_combat_lvl
execute as @s run scoreboard players operation @s real_combat_lvl += @s melee_combat_lvl
execute as @s run scoreboard players operation @s real_combat_lvl /= osrs base_combat_100
