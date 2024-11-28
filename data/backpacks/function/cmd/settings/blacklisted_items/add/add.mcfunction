# Add an item to the blacklisted items list:
# Save item in hand to a storage:

# Cancel if player isn't holding anything:
execute unless data entity @s SelectedItem run return fail

# Save item_id:
data modify storage backpacks:blacklisted_items Items append value {item_id:"PLACEHOLDER"}
data modify storage backpacks:blacklisted_items Items[-1].item_id set from entity @s SelectedItem.id

# Set id: Maybe change it to scoreboard because ids can duplicate if we remove it in the future
execute store result storage backpacks:blacklisted_items Items[-1].id int 1 run scoreboard players get $blacklisted_items_id backpacks.settings
scoreboard players add $blacklisted_items_id backpacks.settings 1

# Save components:
execute if data entity @s SelectedItem.components run data modify storage backpacks:blacklisted_items Items[-1].components set from entity @s SelectedItem.components

# Set check type ("predicates" or "components", default "predicates")
data modify storage backpacks:blacklisted_items Items[-1].type set value "predicates"

# Message:
function backpacks:cmd/settings/blacklisted_items/add/ask_select_mode with storage backpacks:blacklisted_items Items[-1]
