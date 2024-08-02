# @p[advancements={backpacks:summon_bp=true}] is the player at him! | @s is the menu!
# Fill the menu starting from the end:

# Check if we need to stop:
$scoreboard players set $current backpacks.slots $(c_slot)
execute if score $current backpacks.slots <= @s backpacks.slots run return 0

# Place:
$item replace entity @s[nbt=!{Items:[{Slot:$(c_slot)b}]}] container.$(c_slot) with black_stained_glass_pane[custom_model_data=9951631,custom_name='{"text":""}',custom_data={menu_backpack:{empty:1b}}]
$data modify entity @s Items[{Slot:$(c_slot)b}].components."minecraft:custom_data".menu_backpack.Slot set value $(c_slot)

# Run again:
execute store result storage backpacks:temp slot.c_slot int 1 run scoreboard players remove $current backpacks.slots 1
function backpacks:bp/container/init/fill with storage backpacks:temp slot
