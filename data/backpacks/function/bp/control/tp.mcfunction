# @s & @p[advancements={backpacks:holding_bp=true}] is the player at @s!

# Tp:
execute as @e[tag=backpacks.backpack_menu_ready] if score @s backpacks.id = @p[advancements={backpacks:holding_bp=true}] backpacks.id run tp ~ ~1 ~
