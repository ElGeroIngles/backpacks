# @s & @p[advancements={backpacks:summon_bp=true}] is the player at @s!

# Get Id:
execute if function backpacks:bp/check/offhand store result storage backpacks:temp id int 1 run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".backpacks.init.id
execute if function backpacks:bp/check/mainhand store result storage backpacks:temp id int 1 run data get entity @s SelectedItem.components."minecraft:custom_data".backpacks.init.id

# Set Id:
execute store result score @s backpacks.id run data get storage backpacks:temp id
execute store result score @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] backpacks.id run data get storage backpacks:temp id
