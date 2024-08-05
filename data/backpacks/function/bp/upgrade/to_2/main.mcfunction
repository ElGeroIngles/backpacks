# @s is the player!

# Get where is backpack:
execute if items entity @s player.cursor chain_command_block[custom_data~{backpacks:{real_backpack:1b,tier:0}}] run tag @s add backpacks.upgrade_cursor
execute if items entity @s container.* chain_command_block[custom_data~{backpacks:{real_backpack:1b,tier:0}}] run tag @s add backpacks.upgrade_inv

# Apply changes:
execute if entity @s[tag=backpacks.upgrade_cursor] run item modify entity @s player.cursor backpacks:upgrade/to_2
execute if entity @s[tag=backpacks.upgrade_inv] run function backpacks:bp/upgrade/to_2/inv with entity @s Inventory[{id:"minecraft:chain_command_block",components:{"minecraft:custom_data":{backpacks:{real_backpack:1b,tier:0}}}}]

# Reset:
tag @s remove backpacks.upgrade_cursor
tag @s remove backpacks.upgrade_inv
advancement revoke @s only backpacks:upgrade/to_2
