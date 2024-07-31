# @s is the menu!

# Get page:
execute store result storage backpacks:temp update.page int 1 run scoreboard players get @s backpacks.pages

# Update:
function backpacks:bp/container/update/update with storage backpacks:temp update
