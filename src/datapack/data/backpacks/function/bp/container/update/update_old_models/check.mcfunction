# > backpacks:bp/container/update/update_old_models/main
# Macros:
# > $(temp): Current slot we are checking (int)
# @s is the menu!
# Check if current slot has an item we need to update:

# Check if not:
$execute if data entity @s Items[{Slot:$(temp)b}].components."minecraft:custom_data".backpacks.contents.pages[0][{components:{"minecraft:custom_data":{menu_backpack:{}}}}].components."minecraft:item_model" run function backpacks:bp/container/update/update_old_models/next

# Check if we need to update:
$execute unless data entity @s Items[{Slot:$(temp)b}].components."minecraft:custom_data".backpacks.contents.pages[0][{components:{"minecraft:custom_data":{menu_backpack:{}}}}].components."minecraft:item_model" run function backpacks:bp/container/update/update_old_models/update with storage backpacks:temp
