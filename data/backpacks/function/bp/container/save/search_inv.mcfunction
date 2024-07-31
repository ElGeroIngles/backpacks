# @p[advancements={backpacks:not_holding_bp=true}] is the player at player | @s is the menu!

# Summon placeholder:
summon armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["backpacks.contents_placeholder"],DisabledSlots:4144959}

# Save contents:
$data modify entity @n[tag=backpacks.contents_placeholder] ArmorItems[3] set from entity @p[advancements={backpacks:not_holding_bp=true}] Inventory[{components:{"minecraft:custom_data":{backpacks:{init:{id:$(id)}}}}}]
data modify entity @n[tag=backpacks.contents_placeholder] ArmorItems[3].components."minecraft:custom_data".backpacks.contents.Items set from entity @s Items

# Give back the backpack:
$execute store result storage backpacks:temp item.slot int 1 run data get entity @p[advancements={backpacks:not_holding_bp=true}] Inventory[{components:{"minecraft:custom_data":{backpacks:{init:{id:$(id)}}}}}].Slot
function backpacks:bp/container/save/save_to_inv with storage backpacks:temp item

# Kill placeholder:
kill @n[tag=backpacks.contents_placeholder]
