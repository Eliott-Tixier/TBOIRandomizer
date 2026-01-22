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
end

mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, mod.OnGameStart)
