# > backpacks:cmd/settings/blacklisted_items/add/add
# Macros:
# > id --> Id of the item array so we can identify it

# Change between "predicates" and "components" of a specific item:
tellraw @s ["",{"text":"ⓘ","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"translate":"settings.backpacks.blacklisted_items.add_info"}]}}," ",{"translate":"settings.backpacks.blacklisted_items.add_message_1","color":"gray"}," ",{"translate":"settings.backpacks.blacklisted_items.name","color":"yellow"}," ",{"translate":"settings.backpacks.blacklisted_items.add_message_2","color":"gray"}]

# > find a way in the future to send the commented message because it is too long for minecraft
# > had to add a "/return 1" command in the second command beacuse you could click anywhere in the chat line and it would execute the function even though it "wasn't there"
$execute if data storage backpacks:blacklisted_items Items[{id:$(id),type:"predicates"}] run tellraw @s [{"translate":"settings.backpacks.blacklisted_items.predicates","color":"yellow"},{"text":" / ","color":"dark_gray"},{"translate":"settings.backpacks.blacklisted_items.components","color":"gray","clickEvent":{"action":"run_command","value":"/function backpacks:cmd/settings/blacklisted_items/add/change_type {id:$(id),new_type:\"components\"}"}}]
$execute if data storage backpacks:blacklisted_items Items[{id:$(id),type:"components"}] run tellraw @s [{"translate":"settings.backpacks.blacklisted_items.predicates","color":"gray","clickEvent":{"action":"run_command","value":"/function backpacks:cmd/settings/blacklisted_items/add/change_type {id:$(id),new_type:\"predicates\"}"}},{"text":" / ","color":"dark_gray","clickEvent":{"action":"run_command","value":"/return 1"}},{"translate":"settings.backpacks.blacklisted_items.components","color":"yellow","clickEvent":{"action":"run_command","value":"/return 1"}}]
# $execute if data storage backpacks:blacklisted_items Items[{id:$(id),type:"predicates"}] run tellraw @s [{"text":"[\"","color":"yellow"},{"translate":"settings.backpacks.blacklisted_items.predicates","color":"yellow"},{"text":"\"]","color":"yellow"},{"text":" / ","color":"dark_gray"},{"text":"[\"","color":"gray","clickEvent":{"action":"run_command","value":"/function backpacks:cmd/settings/blacklisted_items/add/change_type {id:$(id),new_type:\"components\"}"}},{"translate":"settings.backpacks.blacklisted_items.components","color":"gray","clickEvent":{"action":"run_command","value":"/function backpacks:cmd/settings/blacklisted_items/add/change_type {id:$(id),new_type:\"components\"}"}},{"text":"\"]","color":"gray"},"clickEvent":{"action":"run_command","value":"/function backpacks:cmd/settings/blacklisted_items/add/change_type {id:$(id),new_type:\"components\"}"}]
# $execute if data storage backpacks:blacklisted_items Items[{id:$(id),type:"components"}] run tellraw @s [{"text":"[\"","color":"gray","clickEvent":{"action":"run_command","value":"/function backpacks:cmd/settings/blacklisted_items/add/change_type {id:$(id),new_type:\"predicates\"}"}},{"translate":"settings.backpacks.blacklisted_items.predicates","color":"gray","clickEvent":{"action":"run_command","value":"/function backpacks:cmd/settings/blacklisted_items/add/change_type {id:$(id),new_type:\"predicates\"}"}},{"text":"\"]","color":"gray","clickEvent":{"action":"run_command","value":"/function backpacks:cmd/settings/blacklisted_items/add/change_type {id:$(id),new_type:\"predicates\"}"}},{"text":" / ","color":"dark_gray"},{"text":"[\"","color":"yellow"},{"translate":"settings.backpacks.blacklisted_items.components","color":"yellow"},{"text":"\"]","color":"yellow"}]

# Make the predicate:
function backpacks:cmd/settings/blacklisted_items/add/predicate/init

# Sounds:
playsound ui.button.click ambient
