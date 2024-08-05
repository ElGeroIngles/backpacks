# @s is the player!
say main
# Summon temp container:
summon chest_minecart ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomDisplayTile:1b,Tags:["backpacks.upgrade_1_to_2","backpacks.invisible_minecart"]}

# Get where is backpack:
execute if items entity @s player.cursor chain_command_block[custom_data~{backpacks:{real_backpack:1b,tier:0}}] run tag @s add backpacks.upgrade_cursor
execute if items entity @s container.* chain_command_block[custom_data~{backpacks:{real_backpack:1b,tier:0}}] run tag @s add backpacks.upgrade_inv

# Transfer item:
execute if entity @s[tag=backpacks.upgrade_cursor] run say 1
execute if entity @s[tag=backpacks.upgrade_cursor] run item replace entity @n[tag=backpacks.upgrade_1_to_2] container.0 from entity @s player.cursor
execute if entity @s[tag=backpacks.upgrade_inv] run data modify storage backpacks:temp upgrade.slot set from entity @s Inventory[{id:"minecraft:chain_command_block",components:{"minecraft:custom_data":{backpacks:{real_backpack:1b,tier:0}}}}].Slot
execute if entity @s[tag=backpacks.upgrade_inv] run function backpacks:bp/upgrade/1_to_2/inv with storage backpacks:temp upgrade

# Apply changes:
data modify entity @n[tag=backpacks.upgrade_1_to_2] Items[0].components."minecraft:custom_data".backpacks.tier set value 1
data modify entity @n[tag=backpacks.upgrade_1_to_2] Items[0].components."minecraft:custom_data".backpacks.contents.slots set value 54

# Give back the item:
execute if entity @s[tag=backpacks.upgrade_cursor] run say 2
execute if entity @s[tag=backpacks.upgrade_cursor] run item replace entity @s player.cursor from entity @n[tag=backpacks.upgrade_1_to_2] container.0
execute if entity @s[tag=backpacks.upgrade_inv] run function backpacks:bp/upgrade/1_to_2/give_back with storage backpacks:temp upgrade

# Kill temp container:
tp @n[tag=backpacks.upgrade_1_to_2] ~ -10000 ~
kill @n[tag=backpacks.upgrade_1_to_2]

# Reset:
tag @s remove backpacks.upgrade_cursor
tag @s remove backpacks.upgrade_inv
advancement revoke @s only backpacks:upgrade/1_to_2
