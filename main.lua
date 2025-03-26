-- name: [CS] Misfire
-- category: cs

if not _G.charSelectExists then
    return 0
end

local E_MODEL_MISFIRE = smlua_model_util_get_id("misfire_geo")

local PALETTE_MISFIRE = {
    [PANTS] = "DB0900",
    [SHIRT] = "FF5A1F",
    [GLOVES] = "272727",
    [SHOES] = "1F782A",
    [CAP] = "272727",
    [HAIR] = "B52634",
    [SKIN] = "FFFFFF",
}

CT_MISFIRE = _G.charSelect.character_add("Misfire", nil, "KF / Squishy", "FF0000", E_MODEL_MISFIRE, CT_MARIO, nil, 1)
_G.charSelect.character_add_palette_preset(E_MODEL_MISFIRE, PALETTE_MISFIRE)