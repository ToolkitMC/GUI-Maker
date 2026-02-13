# ==========================================
# SYSTEM INITIALIZATION (One-Time Load)
# ==========================================

# 1. Hata Önleyici Kontrol (Eğer sistem zaten yüklüyse tekrar eklemeye çalışmaz)
# Bu skor tablosu sistemin kurulup kurulmadığını takip eder.
scoreboard objectives add gm.SystemStatus dummy
execute if score #system_init gm.SystemStatus matches 1 run return 0

# 2. Skor Tabloları (Scoreboards)
scoreboard objectives add gm.Values dummy
scoreboard objectives add gm.Tests dummy
scoreboard objectives add gm.Linking dummy

# Global ID Başlatma
execute unless score $globalCreationID gm.Values matches 1.. run scoreboard players set $globalCreationID gm.Values 1

# 3. Tetikleyiciler (Triggers)
scoreboard objectives add gm-createGUIprofile trigger
scoreboard objectives add gm-addPage trigger
scoreboard objectives add gm-editPage trigger
scoreboard objectives add gm-getApiSlotPlaceholder trigger
scoreboard objectives add gm-convertHandItemtoPageButton trigger
scoreboard objectives add gm-getListOfAllGUIs trigger
scoreboard objectives add gm-convertHandItemtoVItem trigger

# 4. İlk Yetkilendirme
# Not: Tetikleyiciler her kullanımdan sonra kapanır. 
# Bu yüzden bunları sürekli açık tutan bir 'tick.mcfunction' şarttır.
execute as @a[gamemode=creative] run scoreboard players enable @s gm-createGUIprofile
execute as @a[gamemode=creative] run scoreboard players enable @s gm-addPage
execute as @a[gamemode=creative] run scoreboard players enable @s gm-editPage
execute as @a[gamemode=creative] run scoreboard players enable @s gm-getApiSlotPlaceholder
execute as @a[gamemode=creative] run scoreboard players enable @s gm-convertHandItemtoPageButton
execute as @a[gamemode=creative] run scoreboard players enable @s gm-getListOfAllGUIs
execute as @a[gamemode=creative] run scoreboard players enable @s gm-convertHandItemtoVItem

# 5. Başarı Mesajı ve Kilit (Flag)
tellraw @a ["",{"text":"[","color":"gray"},{"text":"GM System","color":"gold","bold":true},{"text":"] ","color":"gray"},{"text":"Sistem ve tetikleyiciler başarıyla yüklendi!","color":"green"}]
say [GM System] Veritabanı ve skor tabloları kuruldu.

# Sistemin kurulduğunu işaretle (Bir dahaki reload'da mesaj gelmez)
scoreboard players set system_init gm.SystemStatus 1