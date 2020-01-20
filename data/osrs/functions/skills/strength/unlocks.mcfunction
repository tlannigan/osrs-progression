# Strength Requirements
execute as @s[tag=holdingStoneAxe] unless score @s strength_lvl matches 10.. run effect give @s minecraft:strength 9999 0 true
execute as @s[tag=holdingIronAxe] unless score @s strength_lvl matches 20.. run effect give @s minecraft:strength 9999 1 true
execute as @s[tag=holdingGoldAxe] unless score @s strength_lvl matches 30.. run effect give @s minecraft:strength 9999 2 true
execute as @s[tag=holdingDiamondAxe] unless score @s strength_lvl matches 40.. run effect give @s minecraft:strength 9999 3 true