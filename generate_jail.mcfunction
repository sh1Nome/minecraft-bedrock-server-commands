# 1. アーマースタンドを召喚（名前を付ける）
/summon armor_stand "target_block" 100 64 100

# 2. 外壁を作成
/execute as @e[type=armor_stand,name="target_block"] at @s run fill ~1 ~-1 ~1 ~5 ~3 ~5 stone

# 3. 内部を空洞化
/execute as @e[type=armor_stand,name="target_block"] at @s run fill ~2 ~0 ~2 ~4 ~2 ~4 air

# 4. 窓を作成
/execute as @e[type=armor_stand,name="target_block"] at @s run fill ~1 ~1 ~3 ~1 ~1 ~3 iron_bars
/execute as @e[type=armor_stand,name="target_block"] at @s run fill ~5 ~1 ~3 ~5 ~1 ~3 iron_bars
/execute as @e[type=armor_stand,name="target_block"] at @s run fill ~3 ~1 ~1 ~3 ~1 ~1 iron_bars
/execute as @e[type=armor_stand,name="target_block"] at @s run fill ~3 ~1 ~5 ~3 ~1 ~5 iron_bars

# 5. アーマースタンドを削除
/kill @e[type=armor_stand,name="target_block"]