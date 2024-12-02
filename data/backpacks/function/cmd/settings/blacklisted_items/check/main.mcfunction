# > #senti:container/changed
# @s is the chest minecart | @p[tag=senti.viewer] is the player!
# Content of the previous tick of the chest minecart is on storage "senti:api old"
# A new item has been added to the backpack
# Check if the new item is in the "blacklisted items" list
say main
# Cancel if there's no items to check:
execute if data storage backpacks:blacklisted_items {Items:[]} run return fail

# Check:
return run function backpacks:cmd/settings/blacklisted_items/check/check with storage backpacks:blacklisted_items Predicate

say a
