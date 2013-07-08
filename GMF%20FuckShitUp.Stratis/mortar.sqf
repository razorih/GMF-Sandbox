/**
 * "Lisää ammuksia mortariin" -Pate
 * 
 * Usage: Put the following code in the mortar init line.
 * mor = this execVM "mortar.sqf"
 */

// If we're not server, exit
if (!isServer) exitWith {};

// Empty the mortar
_this setVehicleAmmo 0;

/**
 * Possible mortar shell types:
 * 
 * 8Rnd_82mm_Mo_shells      // Normal High Explosive shells
 * 8Rnd_82mm_Mo_Flare_white // White Flares
 * 8Rnd_82mm_Mo_Smoke_white // White Smokes
 * 8Rnd_82mm_Mo_guided      // Guided Mortar Rounds
 * 8Rnd_82mm_Mo_LG          // Laser Guided Mortar Rounds
 */

/**
 * Mortar shells are always prefixed.
 * Loop through possible postfixes and add them as magazines.
 */
{
    _this addMagazines ["8Rnd_82mm_Mo_" + _x,100];
} forEach ["shells", "Flare_white", "Smoke_white", "guided", "LG"];
