# > backpacks:cmd/settings/blacklisted_items/add/predicate/init
# Make the predicate for the item detection with the data inside storage "backpacks:blacklisted_items Items" but we manipulate "backpacks:blacklisted_items Predicate.list_copy"
# {"condition":"minecraft:any_of","terms":[ {"condition":"minecraft:entity_properties","entity":"this","predicate":{}} ]}

# Create the condition:
data modify storage backpacks:blacklisted_items Predicate.list_copy[-1].condition set from storage backpacks:blacklisted_items Predicate.conditions
function backpacks:cmd/settings/blacklisted_items/add/predicate/create_condition with storage backpacks:blacklisted_items Predicate.list_copy[-1]

# Loop:
data remove storage backpacks:blacklisted_items Predicate.list_copy[-1]
execute unless data storage backpacks:blacklisted_items {Predicate:{list_copy:[]}} run function backpacks:cmd/settings/blacklisted_items/add/predicate/main
