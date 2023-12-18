// Teleport script for backup CSAT/AAF forces


// defining the teleporters with the placed object
private _teleport1 = getPos pos1; 
private _teleport2 = getPos pos2;
private _teleport3 = getPos pos3;

// Store the positions in an array
private _teleportPositions = [_teleport1, _teleport2, _teleport3];

// get the players current position
private _playerPosition = getPos player;

// find the distances to the teleporters
private _distances = _teleportPositions apply { _playerPosition distance _x };

// find the index of the nearest teleporter
private _minDistance = _distances select 0;
private _nearestIndex = 0;

{
    if (_x < _minDistance) then {
        _minDistance = _x;
        _nearestIndex = _forEachIndex;
    };
} forEach _distances;

// rremove the nearest teleporter from the array
_teleportPositions deleteAt _nearestIndex;

// Randomly select One of the remaining teleporters
private _selectedTeleport = selectRandom _teleportPositions;



backUpCar01 enableSimulation true; 
backUpCar01 hideObject false;

backUpCar02 enableSimulation true; 
backUpCar02 hideObject false;
 
backUpCar03 enableSimulation true; 
backUpCar03 hideObject false;


// execVM area where following scripts are being activated depending on location 
if (_selectedTeleport isEqualTo _teleport1) then {
    [] execVM "scripts\teleportPos1.sqf"; 
} else {
    if (_selectedTeleport isEqualTo _teleport2) then {
        [] execVM "scripts\teleportPos2.sqf"; 
    } else {
        if (_selectedTeleport isEqualTo _teleport3) then {
            [] execVM "scripts\teleportPos3.sqf"; 
        };
    };
};
