# > backpacks:cmd/settings/blacklisted_items/add/predicate/main
# Macros:
# $(item_id) --> Id of the current item
# $(id) --> Id of the current index
# $(type) --> Whether to check for "components" or "predicates"
# $(condition) --> Current condition
# Make the condition for the predicate for item detection with the data inside storage "backpacks:blacklisted_items Items" but we manipulate "backpacks:blacklisted_items Predicate.list_copy"
# {"condition":"minecraft:any_of","terms":[ {"condition":"minecraft:entity_properties","entity":"this","predicate":{}} ]}
# {"condition":"minecraft:any_of","terms":[ {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"container.*":{"items":"minecraft:chiseled_tuff"}}}} ]}

# Add another condition:
$data modify storage backpacks:blacklisted_items Predicate.conditions set value '$(condition),{"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"container.*":{"items":"$(item_id)"}}}}'
