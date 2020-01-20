# Attack EXP
# execute as @a at @s run tellraw @s [{"text": "Attack Exp: "}, {"score":{"name":"@s","objective":"attack_exp"}, "color": "green", "bold": true}, {"text": "/"}, {"score":{"name":"@s","objective":"attack_req_exp"}, "color": "green", "bold": true}]

# Check if player is holding a sword
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] run tag @s add holdingSword
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:stone_sword"}}] run tag @s add holdingSword
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run tag @s add holdingSword
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:golden_sword"}}] run tag @s add holdingSword
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run tag @s add holdingSword
execute as @a at @s[tag=holdingSword, nbt=!{SelectedItem:{id:"minecraft:wooden_sword"}}, nbt=!{SelectedItem:{id:"minecraft:stone_sword"}}, nbt=!{SelectedItem:{id:"minecraft:iron_sword"}}, nbt=!{SelectedItem:{id:"minecraft:golden_sword"}}, nbt=!{SelectedItem:{id:"minecraft:diamond_sword"}}] run tag @s remove holdingSword

# Check what type of sword the player is using
execute as @a at @s[tag=holdingSword, nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] run tag @s add holdingWoodSword
execute as @a at @s[tag=holdingSword, nbt={SelectedItem:{id:"minecraft:stone_sword"}}] run tag @s add holdingStoneSword
execute as @a at @s[tag=holdingSword, nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run tag @s add holdingIronSword
execute as @a at @s[tag=holdingSword, nbt={SelectedItem:{id:"minecraft:golden_sword"}}] run tag @s add holdingGoldSword
execute as @a at @s[tag=holdingSword, nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run tag @s add holdingDiamondSword

execute as @a at @s[tag=holdingWoodSword, nbt=!{SelectedItem:{id:"minecraft:wooden_sword"}}] run tag @s remove holdingWoodSword
execute as @a at @s[tag=holdingStoneSword, nbt=!{SelectedItem:{id:"minecraft:stone_sword"}}] run tag @s remove holdingStoneSword
execute as @a at @s[tag=holdingIronSword, nbt=!{SelectedItem:{id:"minecraft:iron_sword"}}] run tag @s remove holdingIronSword
execute as @a at @s[tag=holdingGoldSword, nbt=!{SelectedItem:{id:"minecraft:gold_sword"}}] run tag @s remove holdingGoldSword
execute as @a at @s[tag=holdingDiamondSword, nbt=!{SelectedItem:{id:"minecraft:diamond_sword"}}] run tag @s remove holdingDiamondSword

execute as @a at @s run function osrs:skills/attack/leveling
execute as @a at @s run function osrs:skills/attack/buffs