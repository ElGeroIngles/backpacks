# @s is the player!

# Reset:
scoreboard players reset $check_item_id backpacks.id

# Get item id:
$execute store result score $check_item_id backpacks.id run data get entity @s Inventory[{components:{"minecraft:custom_data":{backpacks:{init:{id:$(id)}}}}}].components."minecraft:custom_data".backpacks.init.id
