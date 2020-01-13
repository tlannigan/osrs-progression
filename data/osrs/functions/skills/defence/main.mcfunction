# Defence EXP
execute as @a at @s run tellraw @s [{"text": "Defence Exp: "}, {"score":{"name":"@s","objective":"defence_exp"}, "color": "green", "bold": true}]
# execute as @a at @s run tellraw @s [{"text": "Defence Level: "},{"score":{"name":"@s","objective":"strength_lvl"}, "color": "green", "bold": true}]

# Check if player is holding a shield
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:shield"}}] run tag @s add holdingShield
execute as @a at @s[tag=holdingShield, nbt=!{SelectedItem:{id:"minecraft:shield"}}] run tag @s remove holdingShield

# Add blocked damage to exp then reset
execute as @a at @s run scoreboard players operation @s defence_earn_1 *= osrs cfg_mod_defc
execute as @a at @s run scoreboard players operation @s defence_earn_1 /= osrs cfg_mod_div
execute as @a at @s if score @s defence_earn_1 matches 1.. run title @s actionbar [{"text": "+ "}, {"score":{"name":"@s","objective":"defence_earn_1"}, "color": "green", "bold": true}, {"text": " Defence EXP"}]
execute as @a at @s run scoreboard players operation @s defence_exp += @s defence_earn_1
execute as @a at @s run scoreboard players set @s defence_earn_1 0

execute as @a at @s run scoreboard players operation @s defence_earn_2 *= osrs cfg_mod_defc
execute as @a at @s run scoreboard players operation @s defence_earn_2 /= osrs cfg_mod_div
execute as @a at @s if score @s defence_earn_2 matches 1.. run title @s actionbar [{"text": "+ "}, {"score":{"name":"@s","objective":"defence_earn_2"}, "color": "green", "bold": true}, {"text": " Defence EXP"}]
execute as @a at @s run scoreboard players operation @s defence_exp += @s defence_earn_2
execute as @a at @s run scoreboard players set @s defence_earn_2 0

execute as @a at @s run function osrs:skills/defence/leveling
execute as @a at @s run function osrs:skills/defence/buffs
