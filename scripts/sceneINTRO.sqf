// This scene plays out directly after the intro played. 
[0, 99999, false, true] call BIS_fnc_cinemaBorder; 
titleCut ["", "BLACK FADED", 999];
sleep 2;

line1 = ["PA", "Lt. Hawk, please report to Col. Rollins.", introPA];
[[line1], "BLUFOR", 0.15, false] execVM "fn_simpleConv.sqf";
sleep 7; 
playSound3D [getMissionPath "sfx\KnockDoorMetal.ogg", introKNOCKER, false, getPosASL introKNOCKER, 4, 1, 0];
line1 = ["PA", "Lt. James Hawk, please report to Col. Rollins.", introPA];
[[line1], "BLUFOR", 0.15, false] execVM "fn_simpleConv.sqf";
sleep 3; 



line1 = ["Drawn", "James!", introKNOCKER];
[[line1], "BLUFOR", 0.15, false] execVM "fn_simpleConv.sqf";


sleep 5; 

playSound3D [getMissionPath "sfx\KnockDoorMetal.ogg", introKNOCKER, false, getPosASL introKNOCKER, 4, 1, 0]; 

line1 = ["Drawn", "James, your up!", introKNOCKER];
[[line1], "BLUFOR", 0.15, false] execVM "fn_simpleConv.sqf";

introGo = true; 
titleCut ["", "BLACK IN", 6];
sleep 3; 
playSound3D [getMissionPath "sfx\KnockDoorMetal.ogg", introKNOCKER, false, getPosASL introKNOCKER, 4, 1, 0]; 

Task01activ = true;
[1, 0, false, false] call BIS_fnc_cinemaBorder; 


// Knock Sound here with playSound and you are up James 

// Define the building and door
_building = cargo01; // replace cargo01 with your building's variable name
_door = "Door_1_sound_source"; // replace with the animation name of the door you want to check

// Use waitUntil to pause the script until the door is open
waitUntil {
    _phase = _building animationSourcePhase _door;
    _phase > 0
};
sleep 1; 

// Once the door is open, execute the script
[] execVM "scripts\sceneINTROknock.sqf"; 

