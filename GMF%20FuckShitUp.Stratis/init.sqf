/**
 * Init.sqf, executed on mission start
 * This file handles multiplayer parameters and removing player AI communications
 */

/**
 * paramsArray is not present in singleplayer so quit when previewing.
 */
if(!isMultiplayer) exitWith{};

/**
 * Parameter handling
 **
 * Fog will be enabled only when weather mode "esterin perse" is selected.
 * NOTE: Weather effects need to be applied on EVERY client.
 */

skipTime (paramsArray select 0); // First of all we skip time. It's possible to skip backwards, so default mission time is 12 hours.

/**
 * Weather effects
 * According to some comments on the wiki, only one weather effect can be applied at once.
 * As arma is quite awkward sometimes, we sleep for 1 second just to be sure.
 *
 * NOTE: Do not loop these, since loops are executed in one tick, this prevents multiple weather effects being applied.
 */
_weather = (paramsArray select 1);

0 setOvercast _weather;   // Set overcast level, overcast raises the POSSIBILITY of rain and other weather effects.
sleep 1;                  // Sleep for 1 second to prevents weather effects from overriding each other
0 setRain _weather;       // Set rain levels, setting this ensures that it rains.
sleep 1;                  // Sleep
0 setLightnings _weather; // Set lighting levels

0 setRainbow (paramsArray select 2); // Set rainbows

/**
 * Player AI Communications
 **
 * Firstly we wait for the player(s) to spawn.
 * After that we use "enableSentences" to make them silent.
 * For instance, this prevents "Grid xxxxxxxx" radio chatter which can be quite irritating.
 */
waitUntil {!isNull player};
enableSentences false;
