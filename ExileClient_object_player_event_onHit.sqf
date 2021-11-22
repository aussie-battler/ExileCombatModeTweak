/**
 * ExileClient_object_player_event_onHit
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 * by El Rabito & The Tall Man
 */
 
private["_source","_damage"];
_source = _this select 1;
_damage = _this select 2;
if !(ExilePlayerInSafezone) then
{
    if !(isNull _source) then
    {
        if !(_source == player) then
        {
            [_damage * 10] call BIS_fnc_bloodEffect;
            ExileClientPlayerIsInCombat = true;
            ExileClientPlayerLastCombatAt = diag_tickTime;
            true call ExileClient_gui_hud_toggleCombatIcon;
        };
    };
};
true