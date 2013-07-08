// "Lisää ammuksia mortariin" -Pate

// If we're not server, exit
if (!isServer) exitWith {};

// Empty the mortar
_this setVehicleAmmo 0;

/*
_this addMagazines ["8Rnd_82mm_Mo_shells",100];      // Normal High Explosive rounds
_this addMagazines ["8Rnd_82mm_Mo_Flare_white",100]; // White Flares
_this addMagazines ["8Rnd_82mm_Mo_Smoke_white",100]; // White Smokes
_this addMagazines ["8Rnd_82mm_Mo_guided",100];      // Guided Mortar Rounds
_this addMagazines ["8Rnd_82mm_Mo_LG",100];          // Laser Guided Mortar Rounds
*/

{
    _this addMagazines ["8Rnd_82mm_Mo_" + _x,100];
} forEach ["shells", "Flare_white", "Smoke_white", "guided", "LG"];