# @s & @p[advancements={backpacks:summon_bp=true}] is the player at @s! | @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] is the menu!

# Move item to the backpack:
execute if function backpacks:bp/check/offhand run item replace entity @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] container.0 from entity @s weapon.offhand
execute if function backpacks:bp/check/mainhand run item replace entity @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] container.0 from entity @s weapon.mainhand

# Set Id:
execute store result entity @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] Items[0].components."minecraft:custom_data".backpacks.init.id int 1 run scoreboard players get $global backpacks.id
scoreboard players operation @s backpacks.id = $global backpacks.id
scoreboard players operation @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] backpacks.id = $global backpacks.id
scoreboard players add $global backpacks.id 1

# Get data:
execute store result score @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] backpacks.slots run data get entity @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] Items[0].components."minecraft:custom_data".backpacks.contents.slots

tellraw @a {"score":{"name":"@n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready]","objective":"backpacks.slots"},"color":"green"}
# Set container:
execute as @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] run function backpacks:bp/container/init/main

# Move item to the player:
execute if function backpacks:bp/check/offhand run item replace entity @s weapon.offhand from entity @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] container.0
execute if function backpacks:bp/check/mainhand run item replace entity @s weapon.mainhand from entity @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] container.0

# Clear container:
item replace entity @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] container.0 with air
