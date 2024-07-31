# @p[advancements={backpacks:not_holding_bp=true}] is the player at player | @s is the menu!

# Get item Id:
execute store result storage backpacks:temp item.id int 1 run scoreboard players get @s backpacks.id

# Search:
function backpacks:bp/container/save/search_inv with storage backpacks:temp item
