# Change the state of the "blacklisted items" setting:

# Change state:
scoreboard players add $blacklisted_items backpacks.settings 1
execute if score $blacklisted_items backpacks.settings matches 2.. run scoreboard players set $blacklisted_items backpacks.settings 0

# Message:
execute if score $blacklisted_items backpacks.settings matches 0 run tellraw @s ["",{"text":"ⓘ","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"translate":"settings.backpacks.blacklisted_items.info"}]}}," ",{"translate":"settings.backpacks.change_state.1","color":"gray"},{"text":" \"","color":"gray"},{"translate":"settings.backpacks.blacklisted_items.name","color":"yellow"},{"text":"\" ","color":"gray"},{"translate":"settings.backpacks.change_state.2","color":"gray"}," ",{"translate":"settings.backpacks.false","color":"yellow"},{"text":" (","color":"gray"},{"translate":"settings.backpacks.defaults_to","color":"gray"}," ",{"translate":"settings.backpacks.true","color":"yellow"},{"text":")","color":"gray"}]
execute if score $blacklisted_items backpacks.settings matches 1 run tellraw @s ["",{"text":"ⓘ","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"translate":"settings.backpacks.blacklisted_items.info"}]}}," ",{"translate":"settings.backpacks.change_state.1","color":"gray"},{"text":" \"","color":"gray"},{"translate":"settings.backpacks.blacklisted_items.name","color":"yellow"},{"text":"\" ","color":"gray"},{"translate":"settings.backpacks.change_state.2","color":"gray"}," ",{"translate":"settings.backpacks.true","color":"yellow"},{"text":" (","color":"gray"},{"translate":"settings.backpacks.defaults_to","color":"gray"}," ",{"translate":"settings.backpacks.true","color":"yellow"},{"text":")","color":"gray"}]

# Sounds:
playsound ui.button.click ambient
