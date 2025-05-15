# 1. 外壁を作成
fill ~-2 ~-2 ~-2 ~2 ~-1 ~2 bedrock
fill ~-2 ~ ~-2 ~2 ~2 ~2 stone_bricks

# 2. 内部を空洞化
fill ~-1 ~0 ~-1 ~1 ~1 ~1 air

# 3. 窓を作成
fill ~-2 ~1 ~-1 ~-2 ~1 ~1 iron_bars
fill ~2 ~1 ~-1 ~2 ~1 ~1 iron_bars
fill ~-1 ~1 ~-2 ~1 ~1 ~-2 iron_bars
fill ~-1 ~1 ~2 ~1 ~1 ~2 iron_bars

# 4. 地下にタグ付きアーマースタンドを埋め込む
summon armor_stand ~ ~-2 ~
tag @e[type=armor_stand,x=~,y=~-2,z=~,r=0.1] add jail_center

# 5. プレイヤーを外壁の上にテレポート
tp @s ~ ~3 ~
