-- name: [CS] Misfire
-- category: cs

if not _G.charSelectExists then
    return 0
end

local E_MODEL_MISFIRE = smlua_model_util_get_id("ember_geo")

local MISFIRE_ANIMTABLE = {
   [charSelect.CS_ANIM_MENU] = MISFIRE_ANIM_CS_IDLE, 
   [CHAR_ANIM_IDLE_HEAD_LEFT] = MISFIRE_ANIM_IDLE,
   [CHAR_ANIM_IDLE_HEAD_RIGHT] = MISFIRE_ANIM_IDLE,
   [CHAR_ANIM_IDLE_HEAD_CENTER] = MISFIRE_ANIM_IDLE,
   [CHAR_ANIM_RUNNING] = MISFIRE_ANIM_WALK
}

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
_G.charSelect.character_add_animations(E_MODEL_MISFIRE, MISFIRE_ANIMTABLE)
