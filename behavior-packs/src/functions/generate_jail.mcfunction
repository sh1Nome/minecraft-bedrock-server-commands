# 1. 外壁を作成
fill ~-2 ~-1 ~-2 ~2 ~2 ~2 stone

# 2. 内部を空洞化
fill ~-1 ~0 ~-1 ~1 ~1 ~1 air

# 2.5. 床の中心にリピートコマンドブロックを設置
setblock ~ ~-1 ~ repeating_command_block

# 3. 窓を作成
fill ~-2 ~1 ~-1 ~-2 ~1 ~1 iron_bars
fill ~2 ~1 ~-1 ~2 ~1 ~1 iron_bars
fill ~-1 ~1 ~-2 ~1 ~1 ~-2 iron_bars
fill ~-1 ~1 ~2 ~1 ~1 ~2 iron_bars
