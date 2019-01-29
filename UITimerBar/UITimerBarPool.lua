---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Dylan Malandain.
--- DateTime: 26/01/2019 17:36
---
TimerBarPool = setmetatable({}, TimerBarPool)
TimerBarPool.__index = TimerBarPool

---New
---@return table
function TimerBarPool.New()
    local _TimerBarPool = {
        TimerBars = {},
    }
    return setmetatable(_TimerBarPool, TimerBarPool)
end

---Add
---@param TimerBar table
function TimerBarPool:Add(TimerBar)
    if TimerBar() == "UITimerBarProgressItem" or "UITimerBarItem" then
        table.insert(self.TimerBars, TimerBar)
    end
end

---Draw
function TimerBarPool:Draw()
    for _, TimerBar in pairs(self.TimerBars) do
        TimerBar:Draw(50 * _)
    end
end