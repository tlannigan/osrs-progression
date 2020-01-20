# execute as @a at @s run tellraw @s [{"text": "Woodcutting Exp: "}, {"score":{"name":"@s","objective":"woodcut_exp"}, "color": "green", "bold": true}, {"text": "/"}, {"score":{"name":"@s","objective":"woodcut_req_exp"}, "color": "green", "bold": true}]

# Check if player is holding an axe
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:wooden_axe"}}] run tag @s add holdingAxe
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:stone_axe"}}] run tag @s add holdingAxe
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:iron_axe"}}] run tag @s add holdingAxe
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:golden_axe"}}] run tag @s add holdingAxe
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] run tag @s add holdingAxe
execute as @a at @s[tag=holdingAxe, nbt=!{SelectedItem:{id:"minecraft:wooden_axe"}}, nbt=!{SelectedItem:{id:"minecraft:stone_axe"}}, nbt=!{SelectedItem:{id:"minecraft:iron_axe"}}, nbt=!{SelectedItem:{id:"minecraft:golden_axe"}}, nbt=!{SelectedItem:{id:"minecraft:diamond_axe"}}] run tag @s remove holdingAxe

# Check what type of axe the player is using
execute as @a at @s[tag=holdingAxe, nbt={SelectedItem:{id:"minecraft:wooden_axe"}}] run tag @s add holdingWoodAxe
execute as @a at @s[tag=holdingAxe, nbt={SelectedItem:{id:"minecraft:stone_axe"}}] run tag @s add holdingStoneAxe
execute as @a at @s[tag=holdingAxe, nbt={SelectedItem:{id:"minecraft:iron_axe"}}] run tag @s add holdingIronAxe
execute as @a at @s[tag=holdingAxe, nbt={SelectedItem:{id:"minecraft:golden_axe"}}] run tag @s add holdingGoldAxe
execute as @a at @s[tag=holdingAxe, nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] run tag @s add holdingDiamondAxe

execute as @a at @s[tag=holdingWoodAxe, nbt=!{SelectedItem:{id:"minecraft:wooden_axe"}}] run tag @s remove holdingWoodAxe
execute as @a at @s[tag=holdingStoneAxe, nbt=!{SelectedItem:{id:"minecraft:stone_axe"}}] run tag @s remove holdingStoneAxe
execute as @a at @s[tag=holdingIronAxe, nbt=!{SelectedItem:{id:"minecraft:iron_axe"}}] run tag @s remove holdingIronAxe
execute as @a at @s[tag=holdingGoldAxe, nbt=!{SelectedItem:{id:"minecraft:golden_axe"}}] run tag @s remove holdingGoldAxe
execute as @a at @s[tag=holdingDiamondAxe, nbt=!{SelectedItem:{id:"minecraft:diamond_axe"}}] run tag @s remove holdingDiamondAxe

execute as @a at @s run function osrs:skills/woodcutting/experience
# execute as @a at @s run function osrs:skills/mining/buffs
execute as @a at @s run function osrs:skills/woodcutting/unlocks
