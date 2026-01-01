local player = Players.LocalPlayer
repeat task.wait() until player

-- 白名單列表（使用 UserId）
local Whitelisted = {
    [iqiqiqiqiqiq189] = true,  -- 替換為您的數字 UserId
}

-- 檢查是否在白名單中
if Whitelisted[player.UserId] then
    print("✅ 授權通過，正在載入腳本...")
    
    -- 載入遠程腳本（有錯誤處理）
    local success, errorMsg = pcall(function()
        loadstring(game:HttpGet("https://github.com/iqiq180jush-cell/Xuan/blob/main/XUAN%20hub"))()
    end)
    
    if not success then
        warn("⚠️ 腳本載入失敗：", errorMsg)
    end
    
else
    -- 🚨 直接警告版本
    warn("你個sb沒在名單中")
    print("========================================")
    print("玩家 " .. player.Name .. " 嘗試使用未授權腳本")
    print("時間：" .. os.date("%Y/%m/%d %H:%M:%S"))
    print("========================================")
end
