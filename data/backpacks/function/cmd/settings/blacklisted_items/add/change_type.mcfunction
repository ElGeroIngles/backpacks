# @s is the player! (runned from the chat)
# > backpacks:cmd/settings/blacklisted_items/add/ask_select_mode
# Macros:
# > id --> Id of the item array so we can identify it
# > new_type --> The new value for "type"

# Clear chat:
function backpacks:api/chat/clear

# Change macro type:
$data modify storage backpacks:blacklisted_items Items[{id:$(id)}].type set value "$(new_type)"

# Ask again:
$function backpacks:cmd/settings/blacklisted_items/add/ask_select_mode {id:$(id)}
