# > from: backpacks:load
# Run some commands if it's the first time the datapack has been enabled:

# Scoreboard tweaks:
execute unless score $global backpacks.id matches 1.. run scoreboard players set $global backpacks.id 1
execute unless score $blacklisted_items backpacks.settings matches 0.. run scoreboard players set $blacklisted_items backpacks.settings 1

# Teams:
team add backpacks.no_collision
team modify backpacks.no_collision collisionRule pushOwnTeam

# Add score so this never runs again:
scoreboard players set $init backpacks.main 1
