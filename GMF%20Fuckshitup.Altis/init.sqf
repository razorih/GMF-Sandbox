/**
 * Init.sqf, executed on mission start
 * This file handles multiplayer parameters and removing player AI communications
 * This is only executed on the server
 */
if(!isServer) exitWith{};

/**
 * Parameter handling
 * See params.hpp for parameters.
 *
 * Parameters are currently disabled because of zero divisor bullshit
 */

/*
_timeoffset = (paramsArray select 0);
_fog = (paramsArray select 1);

if (_timeoffset != 0) then { skipTime (_timeoffset) }; // Skip time according to selection, use 'if' to prevent wasteful timeskipping.
if (_fog != 0) then { 0 setFog _fog };                 // Set fog levels
*/

// Prevent AI radio chatter.
enableSentences false;
