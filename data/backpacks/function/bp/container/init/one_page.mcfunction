# @p[advancements={backpacks:summon_bp=true}] is the player at him! | @s is the menu! | The menu has the backpack item in container.0!

# Get slot:
scoreboard players remove @s backpacks.slots 1

# Fill last menu page:
# In the future change the 26 to a storage because if its a page then it would have an arrow so it would be 25:
function backpacks:bp/container/init/fill {c_slot:26}

# Save items data:
data modify entity @s Items[0].components."minecraft:custom_data".backpacks.contents.pages append from entity @s Items
data remove entity @s Items[0].components."minecraft:custom_data".backpacks.contents.pages[0][0]
