# Leveling objectives
scoreboard objectives add mining_lvl dummy
scoreboard objectives add mining_exp dummy
scoreboard objectives add mining_req_exp dummy

# Bossbar objective
scoreboard objectives add mining_bar_min dummy

# Unlocks objective
scoreboard objectives add mining_req_1 dummy

# EXP counters
# Pickaxe
scoreboard objectives add mining_earn_1 minecraft.mined:minecraft.stone
scoreboard objectives add mining_earn_2 minecraft.mined:minecraft.andesite
scoreboard objectives add mining_earn_3 minecraft.mined:minecraft.diorite
scoreboard objectives add mining_earn_4 minecraft.mined:minecraft.granite
scoreboard objectives add mining_earn_5 minecraft.mined:minecraft.coal_ore
scoreboard objectives add mining_earn_6 minecraft.mined:minecraft.nether_quartz_ore
scoreboard objectives add mining_earn_7 minecraft.mined:minecraft.redstone_ore
scoreboard objectives add mining_earn_8 minecraft.mined:minecraft.iron_ore
scoreboard objectives add mining_earn_9 minecraft.mined:minecraft.glowstone
scoreboard objectives add mining_earn_10 minecraft.mined:minecraft.gold_ore
scoreboard objectives add mining_earn_11 minecraft.mined:minecraft.lapis_ore
scoreboard objectives add mining_earn_12 minecraft.mined:minecraft.diamond_ore
scoreboard objectives add mining_earn_13 minecraft.mined:minecraft.emerald_ore

# Shovels
scoreboard objectives add mining_earn_14 minecraft.mined:minecraft.dirt
scoreboard objectives add mining_earn_15 minecraft.mined:minecraft.sand
scoreboard objectives add mining_earn_16 minecraft.mined:minecraft.gravel
scoreboard objectives add mining_earn_17 minecraft.mined:minecraft.clay
scoreboard objectives add mining_earn_18 minecraft.mined:minecraft.soul_sand

scoreboard objectives add mining_earned dummy

# Exp multipliers for each block
scoreboard objectives add mining_mod_stone dummy
scoreboard players set osrs mining_mod_stone 5

scoreboard objectives add mining_mod_coal dummy
scoreboard players set osrs mining_mod_coal 50

scoreboard objectives add mining_mod_nquar dummy
scoreboard players set osrs mining_mod_nquar 50

scoreboard objectives add mining_mod_redst dummy
scoreboard players set osrs mining_mod_redst 70

scoreboard objectives add mining_mod_iron dummy
scoreboard players set osrs mining_mod_iron 100

scoreboard objectives add mining_mod_glow dummy
scoreboard players set osrs mining_mod_glow 100

scoreboard objectives add mining_mod_gold dummy
scoreboard players set osrs mining_mod_gold 480

scoreboard objectives add mining_mod_lapis dummy
scoreboard players set osrs mining_mod_lapis 625

scoreboard objectives add mining_mod_diamd dummy
scoreboard players set osrs mining_mod_diamd 750

scoreboard objectives add mining_mod_emrld dummy
scoreboard players set osrs mining_mod_emrld 1000
