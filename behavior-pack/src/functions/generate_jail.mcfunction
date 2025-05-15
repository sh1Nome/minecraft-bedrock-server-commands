# 外壁を作成
fill ~-2 ~-1 ~-2 ~2 ~2 ~2 stone_bricks

# 内部を空洞化
fill ~-1 ~0 ~-1 ~1 ~1 ~1 air

# 窓を作成
fill ~-2 ~1 ~-1 ~-2 ~1 ~1 iron_bars
fill ~2 ~1 ~-1 ~2 ~1 ~1 iron_bars
fill ~-1 ~1 ~-2 ~1 ~1 ~-2 iron_bars
fill ~-1 ~1 ~2 ~1 ~1 ~2 iron_bars

# 地下に'jail_center'タグが付いたアーマースタンドを設置する
summon armor_stand ~ ~ ~
tag @e[type=armor_stand,x=~,y=~,z=~,r=1] add jail_center

# プレイヤーを外壁の上にテレポート
tp @s ~ ~3 ~

# 'jail_center'タグが付いたエンティティの位置で '_jail_adventure' 関数を実行します。
execute as @e[tag=jail_center] at @s run function _jail_adventure