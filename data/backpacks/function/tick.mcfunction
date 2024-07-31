# Set up the model for non-invisible minecarts:
execute as @e[type=#backpacks:minecarts,tag=!backpacks.invisible_minecart,tag=!backpacks.not_this_minecart] run function backpacks:minecarts/invisible_minecarts
execute as @e[type=#backpacks:custom_minecarts,tag=!backpacks.invisible_minecart,tag=!backpacks.not_this_minecart] at @s run function backpacks:minecarts/invisible_custom_minecarts

# Set the rotation of the model:
execute as @e[tag=backpacks.invisible_custom_minecart,tag=!backpacks.not_this_minecart] at @s run function backpacks:minecarts/rotation

# Furnace minecarts texture change:
execute as @e[type=furnace_minecart,tag=backpacks.furnace,nbt=!{Fuel:0s},tag=!backpacks.not_this_minecart] run data merge entity @s {CustomDisplayTile:1b,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:"east"}},DisplayOffset:4}
execute as @e[type=furnace_minecart,tag=backpacks.furnace,nbt={Fuel:0s},tag=!backpacks.not_this_minecart] run data merge entity @s {CustomDisplayTile:1b,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:"north"}},DisplayOffset:4}

# Kill model if minecart is killed:
kill @e[tag=backpacks.custom_minecart_mounted,predicate=!backpacks:has_vehicle]

# Account for droppped items in menus:
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{menu_backpack:{}}}}}] at @s run function backpacks:bp/container/interaction/dropped/main with entity @s Item.components."minecraft:custom_data".menu_backpack
