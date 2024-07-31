# @s & @p[advancements={backpacks:holding_bp=true}] is the player at @s! | Its menu is @n[tag=backpacks.this_backpack_menu]!

# Get interaction:


# Place back:
execute if predicate backpacks:interaction/holding_cursor run function backpacks:bp/container/interaction/cursor/temp
execute if predicate backpacks:interaction/holding_inv run function backpacks:bp/container/interaction/inv/main

# Clear:
clear @s *[custom_data~{menu_backpack:{}}]
