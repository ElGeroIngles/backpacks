# @s & @p[advancements={backpacks:summon_bp=true}] is the player at @s! | The menu is @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready]!
# tellraw @a {"nbt":"SelectedItem.components.\"minecraft:custom_data\"","entity":"@s","color":"yellow"}
# Move item to container:
execute if function backpacks:bp/check/offhand run item replace entity @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] container.0 from entity @s weapon.offhand
execute if function backpacks:bp/check/mainhand run item replace entity @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] container.0 from entity @s weapon.mainhand

# Get slots data:
execute store result score $temp_current backpacks.slots run data get entity @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] Items[0].components."minecraft:custom_data".backpacks.contents.slots
execute store result score $temp_old backpacks.slots run data get entity @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] Items[0].components."minecraft:custom_data".backpacks.init.slots

# Add extra pages:
execute if score $temp_current backpacks.slots > $temp_old backpacks.slots as @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] run function backpacks:bp/container/add/main

# Move item to player:
execute if function backpacks:bp/check/offhand run item replace entity @s weapon.offhand from entity @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] container.0
execute if function backpacks:bp/check/mainhand run item replace entity @s weapon.mainhand from entity @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] container.0
# tellraw @a {"nbt":"SelectedItem.components.\"minecraft:custom_data\"","entity":"@s","color":"yellow"}
# Clear container:
item replace entity @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] container.0 with air
