$tellraw @s $(page_name)
$tellraw @s ["",{"text":"\u25b6 ","clickEvent":{"action":"run_command","value":"/function gui.maker:maker/gui/edit_page/give_item {GUI_ID:$(GUI_ID),PAGE:$(page_number)}"}},{"text":" #","clickEvent":{"action":"run_command","value":"/function gui.maker:maker/gui/edit_page/give_item {GUI_ID:$(GUI_ID),PAGE:$(page_number)}"}},{"text":"$(page_number)","color":"gold","click_event":{"action":"run_command","command":"/function gui.maker:maker/gui/edit_page/give_item {GUI_ID:$(GUI_ID),PAGE:$(page_number)}"}}]
data remove storage barden:temp list[0]
scoreboard players remove $PAGES gm.Values 1
execute if score $PAGES gm.Values matches 1.. run function gui.maker:maker/gui/edit_page/list/4 with storage barden:temp list[0]