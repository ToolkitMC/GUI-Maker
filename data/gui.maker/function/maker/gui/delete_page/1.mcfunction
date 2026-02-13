# $(gui_id)
# $(page)
$data remove storage barden:gui.all GUI[{GUI_ID:$(gui_id)}].PAGES[{page_number:$(page)}]
$tellraw @s {"text":">> PAGE #$(page) from GUI ID: #$(gui_id) was deleted!","color": "gray"}
