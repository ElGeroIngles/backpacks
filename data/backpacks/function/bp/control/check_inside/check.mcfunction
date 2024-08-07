# @p[advancements={backpacks:not_holding_bp=true}] is the player at player! | @s & @n[tag=backpacks.backpack_kill_this] are the menu!

# Check:
$execute if items entity @s container.* *[custom_data~{backpacks:{init:{id:$(id)}}}] store result storage backpacks:temp inside.Slot int 1 run data get entity @s Items[{components:{"minecraft:custom_data":{backpacks:{init:{id:$(id)}}}}}].Slot
$execute if items entity @s container.* *[custom_data~{backpacks:{init:{id:$(id)}}}] run function backpacks:bp/control/check_inside/give_back with storage backpacks:temp inside
