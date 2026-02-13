# $(slot)
# $(run)
# $(item_modifier)
# $(change_to_gui)
# $(change_to_page)
# $(gui_id)
# $(page)
# $(sound)

$data modify storage barden:gui.all GUI[{GUI_ID:$(gui_id)}].PAGES[{page_number:$(page)}].layout[{Slot:$(slot)b}].components."minecraft:custom_data".BUTTON_INFO.run set value '$(run)'
$data modify storage barden:gui.all GUI[{GUI_ID:$(gui_id)}].PAGES[{page_number:$(page)}].layout[{Slot:$(slot)b}].components."minecraft:custom_data".BUTTON_INFO.sound set value "$(sound)"
$data modify storage barden:gui.all GUI[{GUI_ID:$(gui_id)}].PAGES[{page_number:$(page)}].layout[{Slot:$(slot)b}].components."minecraft:custom_data".BUTTON_INFO.item_modifier set value "$(item_modifier)"
$data modify storage barden:gui.all GUI[{GUI_ID:$(gui_id)}].PAGES[{page_number:$(page)}].layout[{Slot:$(slot)b}].components."minecraft:custom_data".BUTTON_INFO.CHANGE_PAGE.GUI_ID set value "$(change_to_gui)"
$data modify storage barden:gui.all GUI[{GUI_ID:$(gui_id)}].PAGES[{page_number:$(page)}].layout[{Slot:$(slot)b}].components."minecraft:custom_data".BUTTON_INFO.CHANGE_PAGE.PAGE set value "$(change_to_page)"
