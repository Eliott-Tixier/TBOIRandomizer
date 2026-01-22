-- ===================================================
--  TBOIRandomizer
--  Generated automatically - DO NOT EDIT
-- ===================================================

local mod = RegisterMod("TBOIRandomizer", 1)

-- =====================
-- Configuration
-- =====================
local CONFIG = {
    seed = {{SEED}},
}

-- =====================
-- Mod lifecycle
-- =====================
function mod:OnGameStart(isContinued)
    Isaac.DebugString("[TBOIRandomizer] Seed: " .. tostring(CONFIG.seed))

    local achievementId = 1 -- exemple : The Sad Onion
    Isaac.GetPersistentGameData():TryUnlock(achievementId)
    Isaac.DebugString("[TBOIRandomizer] Forced unlock achievement " .. achievementId)
end


mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, mod.OnGameStart)
