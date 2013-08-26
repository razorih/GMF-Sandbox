// Variables passes to this script:
// _this select 3 -> Teleport destination
// _this select 1 -> Teleporting player player

_unit = _this select 1;                            // Select the teleporting unit.

_destination = getPos (_this select 3);            // Get the position of the destination.
_destination set [0, (_destination select 0) + 3]; // Set destination X slightly to the right to prevent clipping with the teleporter.

_unit setPos _destination;                         // Teleport.
