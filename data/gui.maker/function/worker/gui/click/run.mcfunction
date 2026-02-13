#> run command:
$execute as $(username) at @s run $(run)

#> play sound:
$execute as $(username) at @s run playsound $(sound) player $(username) ~ ~ ~

#> run function:
$execute as $(username) at @s run function #gui.maker:run

#> change to page:
function gui.maker:worker/gui/change_page/1 with storage barden:names Names