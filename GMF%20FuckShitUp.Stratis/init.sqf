/**
 * Init.sqf, executed on mission start
 * This file handles multiplayer parameters and removing player AI communications
 * This is only executed on the server
 */
if(!isServer) exitWith{};

/**
 * paramsArray is not present in singleplayer so quit when previewing or playing the singleplayer scenario.
 */
if(!isMultiplayer) exitWith{};

/**
 * Parameter handling
 **
 * NOTE: Weather effects need to be applied on EVERY client. Clients that are joining after the mission start are quite problematic.
 */
_timeoffset = (paramsArray select 0);
_weather = (paramsArray select 1);
_rainbows = (paramsArray select 2);
_fog = (paramsArray select 3);

skipTime (_timeoffset); // First of all we skip time. It's possible to skip backwards, so default mission time is 12 hours.

/**
 * Weather effects
 * According to some comments on the wiki, only one weather effect can be applied at once.
 * As arma is quite awkward sometimes, we sleep for 1 second just to be sure.
 *
 * NOTE: Do not loop these, since loops are executed in one tick, this prevents multiple weather effects being applied.
 */
0 setOvercast _weather;   // Set overcast level, overcast raises the POSSIBILITY of rain and other weather effects.
sleep 1;                  // Sleep for 1 second to prevents weather effects from overriding each other
0 setRain _weather;       // Set rain levels, setting this ensures that it rains.
sleep 1;                  // Sleep
0 setLightnings _weather; // Set lighting levels
sleep 1;                  // Sleep
0 setFog _fog;            // Set fog levels

0 setRainbow (_rainbows); // Set rainbows

/**
 * Player AI Communications
 **
 * Firstly we wait for the player(s) to spawn.
 * After that we use "enableSentences" to make them silent.
 * For instance, this prevents "Grid xxxxxxxx" radio chatter which can be quite irritating.
 */
waitUntil {!isNull player};
enableSentences false;
