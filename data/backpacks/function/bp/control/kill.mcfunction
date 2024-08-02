# @s & @p[advancements={backpacks:not_holding_bp=true}] is the player at @s!

# Save container:
execute as @e[tag=backpacks.backpack_menu_ready] if score @s backpacks.id = @p[advancements={backpacks:not_holding_bp=true}] backpacks.id if score @s backpacks.type matches 0 run function backpacks:bp/container/save/main

# Kill:
execute as @e[tag=backpacks.backpack_menu_ready] if score @s backpacks.id = @p[advancements={backpacks:not_holding_bp=true}] backpacks.id at @s run function senti:stop
execute as @e[tag=backpacks.backpack_menu_ready] if score @s backpacks.id = @p[advancements={backpacks:not_holding_bp=true}] backpacks.id at @s run tp @s ~ -1000 ~
execute as @e[tag=backpacks.backpack_menu_ready] if score @s backpacks.id = @p[advancements={backpacks:not_holding_bp=true}] backpacks.id at @s run kill @s

# Reset:
tag @s remove backpacks.backpack_menu_summoned
advancement revoke @s only backpacks:not_holding_bp
