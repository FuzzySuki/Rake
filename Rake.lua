local setreadonly = setreadonly or make_writeable
local pussymode = game.workspace[game.Players.LocalPlayer.Name].CharValues.StaminaPercentValue
local mt = getrawmetatable(game)
local old = mt.__index
setreadonly(mt, false)
mt.__index = newcclosure(function(tbl, idx)
    if idx == "Value" and tbl == pussymode then
        return 100
    end

    return old(tbl, idx)
end)
setreadonly(mt, true)