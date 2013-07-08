/**
 * Teleport Loader
 * 
 * Usage:
 * nul=[this,[gl1,gl2,gl3]] execVM "loadaction.sqf"
 * 
 * This file handles adding multiple actions to a single unit.
 */
_unit = _this select 0; // unit teleporting
_port = _this select 1; // game logic or unit name

// Loop through the available teleport locations and add actions.
for [{_i=0},{_i < count _port},{_i = _i+1}] do 
{
    _pad = _port select _i; // Current pad.
    _unit addAction ["Teleport to: <t color='#FF77BB'>"+str _pad+"</t>", // Action name
                     "teleport.sqf", // Teleport script itself
                     _pad,           // Variable for the script
                     1,              // Priority, Action 'order' in the menu.
                     false,          // ShowWindow, Don't show teleport actions when approaching the teleporter
                     true];          // HideOnUse, hide action window after using the teleporter
};