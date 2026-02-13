$data modify storage barden:temp Item.id set value "$(id)"
function gui.maker:worker/gui/click/clear with storage barden:temp Item

execute as @n[type=player,limit=1,sort=arbitrary] at @s positioned ~ ~ ~ rotated as @s anchored eyes run function gui.maker:username

data modify storage barden:names Names.run set from entity @s data.PAGE.INIT[0].components."minecraft:custom_data".BUTTON_INFO.run
data modify storage barden:names Names.sound set from entity @s data.PAGE.INIT[0].components."minecraft:custom_data".BUTTON_INFO.sound
data modify storage barden:names Names.change_gui set from entity @s data.PAGE.INIT[0].components."minecraft:custom_data".BUTTON_INFO.CHANGE_PAGE.GUI_ID
data modify storage barden:names Names.change_page set from entity @s data.PAGE.INIT[0].components."minecraft:custom_data".BUTTON_INFO.CHANGE_PAGE.PAGE


function gui.maker:worker/gui/click/run with storage barden:names Names
