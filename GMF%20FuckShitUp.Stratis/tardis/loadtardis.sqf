/**
 * This file adds timeskipping actions to the given object
 * Usage: Put this to the init field:
 *
 * tard = [this, [-6, 2, 4, 6]] execVM "loadtardis.sqf";
 *
 * Adjust the second array with your values, they will be used as 
 */

if(!isServer) exitWith {};

_tardis  = _this select 0; // Object
_amounts = _this select 1; // Time amounts

{
    _tardis addAction ["Skip <t color='#00ff00'>" + str( _x ) + "</t> hours", "tardis\callskiptime.sqf", _x];
} forEach _amounts
