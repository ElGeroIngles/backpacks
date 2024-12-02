# > backpacks:cmd/settings/blacklisted_items/add/ask_select_mode
# {"condition":"minecraft:any_of","terms":[ {"condition":"minecraft:entity_properties","entity":"this","predicate":{}} ]}

# Copy the list to a temp one:
data modify storage backpacks:blacklisted_items Predicate.list_copy set from storage backpacks:blacklisted_items Items

# Create the condition:
data modify storage backpacks:blacklisted_items Predicate.conditions set value '{"condition":"minecraft:any_of","terms":['

# Create the first condition:
data modify storage backpacks:blacklisted_items Predicate.list_copy[-1].condition set from storage backpacks:blacklisted_items Predicate.conditions
function backpacks:cmd/settings/blacklisted_items/add/predicate/create_first_condition with storage backpacks:blacklisted_items Predicate.list_copy[-1]
data remove storage backpacks:blacklisted_items Predicate.list_copy[-1]

# Create the predicate:
execute unless data storage backpacks:blacklisted_items {Predicate:{list_copy:[]}} run function backpacks:cmd/settings/blacklisted_items/add/predicate/main

# Finish the predicate (add "]}" to the end):
function backpacks:cmd/settings/blacklisted_items/add/predicate/finish with storage backpacks:blacklisted_items Predicate
