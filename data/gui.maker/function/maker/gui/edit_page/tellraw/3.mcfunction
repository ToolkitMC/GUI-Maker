data modify storage barden:names Names.run set value "function gui.maker:extra/empty"
data modify storage barden:names Names.item_modifier set value "empty"
data modify storage barden:names Names.sound set value "empty"

$data modify storage barden:names Names.page_name set from storage barden:gui.all GUI[{GUI_ID:$(GUI_ID)}].PAGES[{page_number:$(PAGE)}].page_name
$data modify storage barden:names Names.run set from storage barden:gui.all GUI[{GUI_ID:$(GUI_ID)}].PAGES[{page_number:$(PAGE)}].layout[{Slot:$(Slot)b}].components."minecraft:custom_data".BUTTON_INFO.run
$data modify storage barden:names Names.item_modifier set from storage barden:gui.all GUI[{GUI_ID:$(GUI_ID)}].PAGES[{page_number:$(PAGE)}].layout[{Slot:$(Slot)b}].components."minecraft:custom_data".BUTTON_INFO.item_modifier
$data modify storage barden:names Names.change_gui set from storage barden:gui.all GUI[{GUI_ID:$(GUI_ID)}].PAGES[{page_number:$(PAGE)}].layout[{Slot:$(Slot)b}].components."minecraft:custom_data".BUTTON_INFO.CHANGE_PAGE.GUI_ID
$data modify storage barden:names Names.change_page set from storage barden:gui.all GUI[{GUI_ID:$(GUI_ID)}].PAGES[{page_number:$(PAGE)}].layout[{Slot:$(Slot)b}].components."minecraft:custom_data".BUTTON_INFO.CHANGE_PAGE.PAGE
$data modify storage barden:names Names.sound set from storage barden:gui.all GUI[{GUI_ID:$(GUI_ID)}].PAGES[{page_number:$(PAGE)}].layout[{Slot:$(Slot)b}].components."minecraft:custom_data".BUTTON_INFO.sound

function gui.maker:maker/gui/edit_page/tellraw/4 with storage barden:names Names