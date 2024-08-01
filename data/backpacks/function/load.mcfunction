tellraw @a [{"text":"[BP] ","color":"yellow"},{"text":"Reloading...","color":"yellow"}]

# Scoreboards:
scoreboard objectives add backpacks.id dummy
scoreboard objectives add backpacks.slots dummy
scoreboard objectives add backpacks.pages dummy
scoreboard objectives add backpacks.type dummy

# Scorebaord tweaks:
execute unless score $global backpacks.id matches 0.. run scoreboard players set $global backpacks.id 0

tellraw @a [{"text":"[BP] ","color":"yellow"},{"text":"Datapack reloaded succesfully!","color":"green"}]
tellraw @a [{"text":"[BP] ","color":"yellow"},{"text":"Backpacks","underlined":true,"color":"gold","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/backpacks"}},{"text":" - ","color":"gray"},{"text":"By ","color":"blue"},{"text":"☽ Eclipse Studios","underlined":true,"color":"blue","clickEvent":{"action":"open_url","value":"https://www.youtube.com/@EclipseStudiosMC"}}]
tellraw @a [{"text":"[BP] ","color":"yellow"},{"text":"Don't forget to follow us!","color":"light_purple"}]
tellraw @a [{"text":"[BP] ","color":"yellow"},{"text":"Discord","underlined":true,"color":"blue","clickEvent":{"action":"open_url","value":"https://discord.gg/X2NTE7hkq8"}},{"text":" • ","color":"black"},{"text":"YouTube","underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://www.youtube.com/@EclipseStudiosMC"}},{"text":" • ","color":"black"},{"text":"GitHub","underlined":true,"color":"dark_gray","clickEvent":{"action":"open_url","value":"https://github.com/EclipseStudiosMC"}},{"text":" • ","color":"black"},{"text":"Modrinth","underlined":true,"color":"green","clickEvent":{"action":"open_url","value":"https://modrinth.com/user/EclipseStudios"}}]
execute as @a at @s run playsound minecraft:entity.player.levelup ambient @s
