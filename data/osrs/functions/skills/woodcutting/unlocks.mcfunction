# Check if player can use their selected pickaxe
execute as @s run scoreboard players set @s woodcut_req_1 0

execute as @s[tag=holdingStoneAxe] if score @s woodcut_lvl matches ..4 run scoreboard players set @s woodcut_req_1 1
execute as @s[tag=holdingStoneAxe] if score @s woodcut_lvl matches ..4 run title @s actionbar {"text": "Axe requires 5 Woodcutting", "color": "dark_red"}
execute as @s[tag=holdingStoneAxe] if score @s woodcut_lvl matches 5.. run scoreboard players set @s woodcut_req_1 0

execute as @s[tag=holdingIronAxe] if score @s woodcut_lvl matches ..9 run scoreboard players set @s woodcut_req_1 1
execute as @s[tag=holdingIronAxe] if score @s woodcut_lvl matches ..9 run title @s actionbar {"text": "Axe requires 10 Woodcutting", "color": "dark_red"}
execute as @s[tag=holdingIronAxe] if score @s woodcut_lvl matches 10.. run scoreboard players set @s woodcut_req_1 0

execute as @s[tag=holdingGoldAxe] if score @s woodcut_lvl matches ..19 run scoreboard players set @s woodcut_req_1 1
execute as @s[tag=holdingGoldAxe] if score @s woodcut_lvl matches ..19 run title @s actionbar {"text": "Axe requires 20 Woodcutting", "color": "dark_red"}
execute as @s[tag=holdingGoldAxe] if score @s woodcut_lvl matches 20.. run scoreboard players set @s woodcut_req_1 0

execute as @s[tag=holdingDiamondAxe] if score @s woodcut_lvl matches ..29 run scoreboard players set @s woodcut_req_1 1
execute as @s[tag=holdingDiamondAxe] if score @s woodcut_lvl matches ..29 run title @s actionbar {"text": "Axe requires 30 Woodcutting", "color": "dark_red"}
execute as @s[tag=holdingDiamondAxe] if score @s woodcut_lvl matches 30.. run scoreboard players set @s woodcut_req_1 0

execute as @s[tag=holdingAxe] if score @s woodcut_req_1 matches 1 run effect give @s minecraft:mining_fatigue 9999 9 true
execute as @s[tag=holdingAxe] if score @s woodcut_req_1 matches 0 run effect clear @s minecraft:mining_fatigue
execute as @s[tag=!holdingAxe] run effect clear @s minecraft:mining_fatigue
