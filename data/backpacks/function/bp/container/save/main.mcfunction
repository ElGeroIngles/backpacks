# @s is the menu!

# Get Player:
tag @s add backpacks.backpack_menu_save_this
execute as @a if score @s backpacks.id = @n[tag=backpacks.backpack_menu_save_this] backpacks.id run tag @s add backpacks.backpack_menu_save_this_player
tag @s remove backpacks.backpack_menu_save_this

# Get item Id:
execute store result storage backpacks:temp item.id int 1 run scoreboard players get @s backpacks.id
execute store result storage backpacks:temp item.page int 1 run scoreboard players get @s backpacks.pages

# Search:
execute if entity @p[tag=backpacks.backpack_menu_save_this_player,predicate=backpacks:bp/any] run function backpacks:bp/container/save/search_inv with storage backpacks:temp item
execute if entity @p[tag=backpacks.backpack_menu_save_this_player,predicate=!backpacks:bp/any] run function backpacks:bp/container/save/search_entity with storage backpacks:temp item

# Reset:
tag @p[tag=backpacks.backpack_menu_save_this_player] remove backpacks.backpack_menu_save_this_player
