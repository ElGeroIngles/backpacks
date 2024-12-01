# > backpacks:cmd/settings/blacklisted_items/add/predicate/init
# Macros:
# $(conditions) --> Uncompleted predicate

# Complete the predicate:
$data modify storage backpacks:blacklisted_items Predicate.conditions set value '$(conditions)]}'
