# @s & @p[advancements={backpacks:open=true}] is the player at @s! | Its menu is @n[tag=backpacks.backpack_menu_opened]!

# Get menu:
execute as @e[tag=backpacks.backpack_menu_ready] if score @s backpacks.id = @p[advancements={backpacks:open=true}] backpacks.id run tag @s add backpacks.backpack_menu_opened

# Save:
execute as @n[tag=backpacks.backpack_menu_opened] run function backpacks:bp/container/save/main

# Reset:
scoreboard players set @n[tag=backpacks.backpack_menu_opened] backpacks.pages 0
execute as @n[tag=backpacks.backpack_menu_opened] run function backpacks:bp/container/update/main

# QoL:
playsound item.armor.equip_leather

# Reset:
tag @n[tag=backpacks.backpack_menu_opened] add backpacks.backpack_menu_opened
advancement revoke @s only backpacks:open
