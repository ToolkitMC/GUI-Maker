# ==========================================
# SYSTEM INITIALIZATION (One-Time Load)
# ==========================================

# 1. Fail-Safe Check (Prevents duplicate initialization)
# This scoreboard tracks whether the system has already been installed.
scoreboard objectives add gm.SystemStatus dummy
execute if score #system_init gm.SystemStatus matches 1 run return 0

# 2. Core Scoreboards
scoreboard objectives add gm.Values dummy
scoreboard objectives add gm.Tests dummy
scoreboard objectives add gm.Linking dummy

# Initialize Global Creation ID
execute unless score $globalCreationID gm.Values matches 1.. run scoreboard players set $globalCreationID gm.Values 1

# 3. Trigger Objectives
scoreboard objectives add gm-createGUIprofile trigger
scoreboard objectives add gm-addPage trigger
scoreboard objectives add gm-editPage trigger
scoreboard objectives add gm-getApiSlotPlaceholder trigger
scoreboard objectives add gm-convertHandItemtoPageButton trigger
scoreboard objectives add gm-getListOfAllGUIs trigger
scoreboard objectives add gm-convertHandItemtoVItem trigger

# 4. Initial Authorization
# Note: Triggers are automatically disabled after each use.
# A persistent tick.mcfunction is required to keep them enabled.
execute as @a[gamemode=creative] run scoreboard players enable @s gm-createGUIprofile
execute as @a[gamemode=creative] run scoreboard players enable @s gm-addPage
execute as @a[gamemode=creative] run scoreboard players enable @s gm-editPage
execute as @a[gamemode=creative] run scoreboard players enable @s gm-getApiSlotPlaceholder
execute as @a[gamemode=creative] run scoreboard players enable @s gm-convertHandItemtoPageButton
execute as @a[gamemode=creative] run scoreboard players enable @s gm-getListOfAllGUIs
execute as @a[gamemode=creative] run scoreboard players enable @s gm-convertHandItemtoVItem

# 5. Success Message and Lock Flag
tellraw @a ["",{"text":"[","color":"gray"},{"text":"GM System","color":"gold","bold":true},{"text":"] ","color":"gray"},{"text":"System and triggers successfully initialized!","color":"green"}]
say [GM System] Database and scoreboard tables initialized.

# Mark system as installed (prevents message spam on reload)
scoreboard players set system_init gm.SystemStatus 1
