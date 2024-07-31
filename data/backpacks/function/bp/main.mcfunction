# @s & @p[advancements={backpacks:holding_bp=true}] is the player at @s!

# Control:
execute if predicate backpacks:bp/only_one run function backpacks:bp/control/check_id
function backpacks:bp/control/tp

# Reset advancement:
advancement revoke @s only backpacks:holding_bp
