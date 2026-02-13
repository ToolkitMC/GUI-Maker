# $(gui_id)
$data remove storage barden:gui.all GUI[{GUI_ID:$(gui_id)}]
$tellraw @s {"text":">> GUI #$(gui_id) was deleted!","color": "gray"}