# @s & @p[advancements={backpacks:holding_bp=true}] is the player at @s! | Its menu is @n[tag=backpacks.this_backpack_menu]!

$say $(Slot)
$say $(player_Slot)
# Give back the items:


# Set back:
$execute if predicate backpacks:interaction/holding_cursor run item replace entity @n[tag=backpacks.this_backpack_menu] container.$(Slot) from entity @s player.cursor
$execute if predicate backpacks:interaction/holding_inv run item replace entity @n[tag=backpacks.this_backpack_menu] container.$(Slot) from entity @s container.$(player_Slot)
