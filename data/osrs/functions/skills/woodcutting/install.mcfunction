# Leveling objectives
scoreboard objectives add woodcut_lvl dummy
scoreboard objectives add woodcut_exp dummy
scoreboard objectives add woodcut_req_exp dummy

# Bossbar objective
scoreboard objectives add woodcut_bar_min dummy

# Unlocks objective
scoreboard objectives add woodcut_req_1 dummy

# EXP counters
# Pickaxe
scoreboard objectives add woodcut_earn_1 minecraft.mined:minecraft.oak_log
scoreboard objectives add woodcut_earn_2 minecraft.mined:minecraft.spruce_log
scoreboard objectives add woodcut_earn_3 minecraft.mined:minecraft.birch_log
scoreboard objectives add woodcut_earn_4 minecraft.mined:minecraft.jungle_log
scoreboard objectives add woodcut_earn_5 minecraft.mined:minecraft.acacia_log
scoreboard objectives add woodcut_earn_6 minecraft.mined:minecraft.dark_oak_log

scoreboard objectives add mining_earned dummy

# Exp multipliers for each block
scoreboard objectives add woodcut_mod_logs dummy
scoreboard players set osrs woodcut_mod_logs 10
