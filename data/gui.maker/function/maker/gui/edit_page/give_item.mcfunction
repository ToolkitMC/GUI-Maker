tag @s add gm.editing_page
$execute as @s[tag=gm.editing_page] at @s run function gui.maker:maker/gui/edit_page/tellraw/2 {GUI_ID:$(GUI_ID),PAGE:$(PAGE)}
execute as @s[tag=gm.editing_page] run tellraw @s {"text":"click on the button you want to edit config for!","bold":true,"color":"aqua"}
execute as @s[tag=gm.editing_page] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1 1

# function gui.maker:maker/gui/edit_page/tellraw/1 with entity @e[type=marker,tag=gm.clicked,sort=nearest,limit=1] data
