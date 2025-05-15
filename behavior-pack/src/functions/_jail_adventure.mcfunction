# jail_centerを中心に半径2のプレイヤーをアドベンチャーモードにする
execute as @e[tag=jail_center] at @s run gamemode adventure @a[r=2]
# 3秒後にこの関数を再度実行
execute as @e[tag=jail_center] at @s run schedule delay add _jail_adventure 60t append
