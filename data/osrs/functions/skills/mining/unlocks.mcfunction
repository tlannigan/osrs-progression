# Check if player can use their selected pickaxe
execute as @s run scoreboard players set @s mining_req_1 0

execute as @s[tag=holdingStonePick] if score @s mining_lvl matches ..4 run scoreboard players set @s mining_req_1 1
execute as @s[tag=holdingStonePick] if score @s mining_lvl matches ..4 run title @s actionbar {"text": "Pickaxe requires 5 Mining", "color": "dark_red"}
execute as @s[tag=holdingStonePick] if score @s mining_lvl matches 5.. run scoreboard players set @s mining_req_1 0

execute as @s[tag=holdingIronPick] if score @s mining_lvl matches ..9 run scoreboard players set @s mining_req_1 1
execute as @s[tag=holdingIronPick] if score @s mining_lvl matches ..9 run title @s actionbar {"text": "Pickaxe requires 10 Mining", "color": "dark_red"}
execute as @s[tag=holdingIronPick] if score @s mining_lvl matches 10.. run scoreboard players set @s mining_req_1 0

execute as @s[tag=holdingGoldPick] if score @s mining_lvl matches ..19 run scoreboard players set @s mining_req_1 1
execute as @s[tag=holdingGoldPick] if score @s mining_lvl matches ..19 run title @s actionbar {"text": "Pickaxe requires 20 Mining", "color": "dark_red"}
execute as @s[tag=holdingGoldPick] if score @s mining_lvl matches 20.. run scoreboard players set @s mining_req_1 0

execute as @s[tag=holdingDiamondPick] if score @s mining_lvl matches ..29 run scoreboard players set @s mining_req_1 1
execute as @s[tag=holdingDiamondPick] if score @s mining_lvl matches ..29 run title @s actionbar {"text": "Pickaxe requires 30 Mining", "color": "dark_red"}
execute as @s[tag=holdingDiamondPick] if score @s mining_lvl matches 30.. run scoreboard players set @s mining_req_1 0

execute as @s[tag=holdingPick] if score @s mining_req_1 matches 1 run effect give @s minecraft:mining_fatigue 9999 9 true
execute as @s[tag=holdingPick] if score @s mining_req_1 matches 0 run effect clear @s minecraft:mining_fatigue
execute as @s[tag=!holdingPick] run effect clear @s minecraft:mining_fatigue