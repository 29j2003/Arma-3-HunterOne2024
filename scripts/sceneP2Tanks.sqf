// Not really a scene, but why not. 
// This is for the live feed of the tanks and for the random-position of the tanks:

// selectRandom Position: 
private _teleport1MBT01 = getPos tank01_01; 
private _teleport2MBT01 = getPos tank01_02;
private _teleport3MBT01 = getPos tank01_03;

private _teleportPositionsMBT01 = [_teleport1MBT01, _teleport2MBT01, _teleport3MBT01];

private _selectedTeleportMBT01 = selectRandom _teleportPositionsMBT01;

private _dir01 = getDir (nearestObject [_selectedTeleportMBT01, ""]);

private _teleport1MBT02 = getPos tank02_01; 
private _teleport2MBT02 = getPos tank02_02;
private _teleport3MBT02 = getPos tank02_03;

private _teleportPositionsMBT02 = [_teleport1MBT02, _teleport2MBT02, _teleport3MBT02];

private _selectedTeleportMBT02 = selectRandom _teleportPositionsMBT02;

private _dir02 = getDir (nearestObject [_selectedTeleportMBT02, ""]);


aafMBT01 setPos (_selectedTeleportMBT01);
aafMBT01 setDir _dir01;

aafMBT02 setPos (_selectedTeleportMBT02);
aafMBT02 setDir _dir02;


aafMBT01 engineOn true;
aafMBT02 engineOn true;

// Live Feed:  
[LiveDroneSource, aafMBT01, player] call BIS_fnc_liveFeed;
BIS_liveFeed camPrepareFOV 0.1;
BIS_liveFeed camCommitPrepared 0;
[ [ 1.1, 0.8 ], 1.5 ] call HO_fnc_resizePIP; 


// First Feed finished
waitUntil {!alive aafMBT01}; 
call BIS_fnc_liveFeedTerminate;
sleep 2; 

// Talking 
line1 = ["Frost", "One tank less.", coPilot, 2, 0, "3D"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;


// Live Feed: 
[LiveDroneSource, aafMBT02, player] call BIS_fnc_liveFeed;
BIS_liveFeed camPrepareFOV 0.1;
BIS_liveFeed camCommitPrepared 0;
[ [ 1.1, 0.8 ], 1.5 ] call HO_fnc_resizePIP; 

// Second Feed finished
waitUntil {!alive aafMBT02}; 
call BIS_fnc_liveFeedTerminate;

// Talking 
line1 = ["Frost", "Boom.", coPilot, 2, 0, "3D"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
