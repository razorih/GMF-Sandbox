/**
 * This file spawns a BIS_fnc_MP instance to execute skiptime.sqf
 */

/*_amount = _this select 3;
hint str(_this select 0);*/

[ [ [], "tardis\skiptime.sqf" ], "BIS_fnc_execVM", true, false ] spawn BIS_fnc_MP;
