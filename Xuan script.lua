local Whitelisted = {
    ["iqiqiqiqiqiq189"] = true  -- 只有這個玩家可以執行後續腳本
}

-- 檢查當前玩家是否在白名單中
if Whitelisted[game.Players.LocalPlayer.Name] then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/iqiq180jush-cell/josh/refs/heads/main/Xuan"))()
else
    print("未被授權使用此腳本")
end
