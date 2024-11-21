# Change the state of the "blacklisted items" setting:

# Change state:
scoreboard players add $blacklisted_items backpacks.settings 1
execute if score $blacklisted_items backpacks.settings matches 2.. run scoreboard players set $blacklisted_items backpacks.settings 0

# Message:
execute if score $blacklisted_items backpacks.settings matches 0 run tellraw @s ["",{"text":"ⓘ","underlined":true,"color":"gray","hoverEvent":{"action":"show_text","contents":["Whether a list of items can or cannot be inside backpacks"]}},{"text":"blacklisted items","color":"yellow"},{"text":"\" has been set to ","color":"gray"},{"text":"false","color":"yellow"},{"text":" (defaults to ","color":"gray"},{"text":"true","color":"yellow"},{"text":")","color":"gray"}]
execute if score $blacklisted_items backpacks.settings matches 1 run tellraw @s ["",{"text":"ⓘ","underlined":true,"color":"gray","hoverEvent":{"action":"show_text","contents":["Whether a list of items can or cannot be inside backpacks"]}},{"text":" Setting \"","color":"gray"},{"text":"blacklisted items","color":"yellow"},{"text":"\" has been set to ","color":"gray"},{"text":"true","color":"yellow"},{"text":" (defaults to ","color":"gray"},{"text":"true","color":"yellow"},{"text":")","color":"gray"}]

# Sounds:
playsound ui.button.click ambient
