# @s & @p[advancements={backpacks:holding_bp=true}] is the player at @s!
# Check if id of item is the same as the menu:

# Get item Id:
execute if function backpacks:bp/check/offhand store result score $item_id backpacks.id run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".backpacks.init.id
execute if function backpacks:bp/check/mainhand store result score $item_id backpacks.id run data get entity @s SelectedItem.components."minecraft:custom_data".backpacks.init.id

# Check if Id:
execute unless score @s backpacks.id = $item_id backpacks.id run advancement grant @s only backpacks:not_holding_bp
