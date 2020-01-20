# execute as @a at @s run tellraw @s [{"text": "Mining Exp: "}, {"score":{"name":"@s","objective":"mining_exp"}, "color": "green", "bold": true}, {"text": "/"}, {"score":{"name":"@s","objective":"mining_req_exp"}, "color": "green", "bold": true}]

# Check if player is holding a pickaxe
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:wooden_pickaxe"}}] run tag @s add holdingPick
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:stone_pickaxe"}}] run tag @s add holdingPick
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}}] run tag @s add holdingPick
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:golden_pickaxe"}}] run tag @s add holdingPick
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}}] run tag @s add holdingPick
execute as @a at @s[tag=holdingPick, nbt=!{SelectedItem:{id:"minecraft:wooden_pickaxe"}}, nbt=!{SelectedItem:{id:"minecraft:stone_pickaxe"}}, nbt=!{SelectedItem:{id:"minecraft:iron_pickaxe"}}, nbt=!{SelectedItem:{id:"minecraft:golden_pickaxe"}}, nbt=!{SelectedItem:{id:"minecraft:diamond_pickaxe"}}] run tag @s remove holdingPick

# Check what type of pickaxe the player is using
execute as @a at @s[tag=holdingPick, nbt={SelectedItem:{id:"minecraft:wooden_pickaxe"}}] run tag @s add holdingWoodPick
execute as @a at @s[tag=holdingPick, nbt={SelectedItem:{id:"minecraft:stone_pickaxe"}}] run tag @s add holdingStonePick
execute as @a at @s[tag=holdingPick, nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}}] run tag @s add holdingIronPick
execute as @a at @s[tag=holdingPick, nbt={SelectedItem:{id:"minecraft:golden_pickaxe"}}] run tag @s add holdingGoldPick
execute as @a at @s[tag=holdingPick, nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}}] run tag @s add holdingDiamondPick

execute as @a at @s[tag=holdingWoodPick, nbt=!{SelectedItem:{id:"minecraft:wooden_pickaxe"}}] run tag @s remove holdingWoodPick
execute as @a at @s[tag=holdingStonePick, nbt=!{SelectedItem:{id:"minecraft:stone_pickaxe"}}] run tag @s remove holdingStonePick
execute as @a at @s[tag=holdingIronPick, nbt=!{SelectedItem:{id:"minecraft:iron_pickaxe"}}] run tag @s remove holdingIronPick
execute as @a at @s[tag=holdingGoldPick, nbt=!{SelectedItem:{id:"minecraft:golden_pickaxe"}}] run tag @s remove holdingGoldPick
execute as @a at @s[tag=holdingDiamondPick, nbt=!{SelectedItem:{id:"minecraft:diamond_pickaxe"}}] run tag @s remove holdingDiamondPick

execute as @a at @s run function osrs:skills/mining/experience
# execute as @a at @s run function osrs:skills/mining/buffs
execute as @a at @s run function osrs:skills/mining/unlocks
