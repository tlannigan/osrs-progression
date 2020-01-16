# Level exp requirements
scoreboard objectives add skill_to_level dummy
scoreboard objectives add skill_level dummy
scoreboard objectives add lvl_exp_required dummy

# function osrs:skills/agility/install
function osrs:skills/attack/install
# function osrs:skills/construction/install
# function osrs:skills/cooking/install
# function osrs:skills/crafting/install
function osrs:skills/defence/install
# function osrs:skills/farming/install
# function osrs:skills/firemaking/install
# function osrs:skills/fishing/install
# function osrs:skills/fletching/install
# function osrs:skills/herblore/install
function osrs:skills/hitpoints/install
# function osrs:skills/hunter/install
# function osrs:skills/magic/install
# function osrs:skills/mining/install
function osrs:skills/prayer/install
# function osrs:skills/ranged/install
# function osrs:skills/runecrafting/install
# function osrs:skills/slayer/install
# function osrs:skills/smithing/install
function osrs:skills/strength/install
# function osrs:skills/thieving/install
# function osrs:skills/woodcutting/install

# Combat levels
scoreboard objectives add base_combat_lvl dummy
scoreboard objectives add melee_combat_lvl dummy
scoreboard objectives add range_combat_lvl dummy
scoreboard objectives add magic_combat_lvl dummy
scoreboard objectives add high_combat_lvl dummy
scoreboard objectives add real_combat_lvl dummy "Combat Lvl"

# Combat level equation constants
scoreboard objectives add base_combat_2 dummy
scoreboard objectives add base_combat_4 dummy
scoreboard objectives add base_combat_100 dummy
scoreboard objectives add base_combat_325 dummy
scoreboard objectives add base_combat_1000 dummy

scoreboard players set osrs base_combat_2 2
scoreboard players set osrs base_combat_4 4
scoreboard players set osrs base_combat_100 100
scoreboard players set osrs base_combat_325 325
scoreboard players set osrs base_combat_1000 1000