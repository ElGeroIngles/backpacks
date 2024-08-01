# @s & @p[advancements={backpacks:summon_bp=true}] is the player at @s!

# Summon:
summon chest_minecart ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomDisplayTile:1b,Tags:["backpacks.backpack_menu","backpacks.invisible_minecart"],CustomName:'{"italic":false,"text":"Backpack"}'}

# If init:
execute unless predicate backpacks:bp_init run function backpacks:bp/summon/init

# Id:
execute if predicate backpacks:bp_init run function backpacks:bp/summon/id

# Set contents:
execute if predicate backpacks:bp_init if function backpacks:bp/check/offhand run data modify entity @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] Items set from entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".backpacks.contents.pages[0]
execute if predicate backpacks:bp_init if function backpacks:bp/check/mainhand run data modify entity @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] Items set from entity @s SelectedItem.components."minecraft:custom_data".backpacks.contents.pages[0]

# Set name:
execute if function backpacks:bp/check/offhand if data entity @s Inventory[{Slot:-106b}].components."minecraft:custom_name" run data modify entity @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] CustomName set from entity @s Inventory[{Slot:-106b}].components."minecraft:custom_name"
execute if function backpacks:bp/check/mainhand if data entity @s SelectedItem.components."minecraft:custom_name" run data modify entity @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] CustomName set from entity @s SelectedItem.components."minecraft:custom_name"

# Scores:
scoreboard players set @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] backpacks.pages 0

# Tags:
tag @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] add backpacks.backpack_menu_ready
