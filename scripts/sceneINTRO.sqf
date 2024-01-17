// This scene plays out directly after the intro played. 

titleCut ["", "BLACK FADED", 999];

_quote = selectRandom 
[
"a3\missions_f_epa\video\a_m01_quotation.ogv",
"a3\missions_f_epa\video\a_m02_quotation.ogv",
"a3\missions_f_epa\video\a_m03_quotation.ogv",
"a3\missions_f_epa\video\a_m04_quotation.ogv",
"a3\missions_f_epa\video\a_m05_quotation.ogv"
]; 

_video = [_quote] spawn bis_fnc_playVideo; 
waitUntil {scriptDone _video}; 


//["Day 2 of the Invasion.",-1,-1,4,1,0,789] spawn BIS_fnc_dynamicText; 

[] spawn 
{
	0 fadeMusic 0;
	3 fadeMusic 1; 
	playMusic ["C_EA_RadioMusic2", 28];
	sleep 20; 
	sleep 2; 
	2 fadeMusic 0.4;
	// mby. here a 
	playSound3D [getMissionPath "sfx\objectOnTable.ogg", tablet01, true, getPosASL tablet01, 3]; 
	0 fadeMusic 0.2;
	sleep 1; 
	playSound3D [""];
	playSound3D [getMissionPath "sfx\C_EA_RadioMusic2.ogg", tablet01, true, getPosASL tablet01, 1.5, 1, 4, 0, false];
	0 fadeMusic 0;
	player setPos (getPos playerMarker); 
	player setDir 293.028; 
	sleep 3; 
	playMusic ""; 
	0 fadeMusic 1;
	sleep 10; 
}; 

[0, 99999, false, true] call BIS_fnc_cinemaBorder; 



sleep 6;


line1 = ["PA", "Lt. Hawk, please report to Col. Rollins.", introPA, 3, 1, "UI"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;

sleep 2; 
playSound3D [getMissionPath "sfx\KnockDoorMetal.ogg", introKNOCKER, false, getPosASL introKNOCKER, 4, 1, 0];

line1 = ["PA", "Lt. James Hawk, please report to Col. Rollins.", introPA, 1, 1, "UI"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 3; 

line1 = ["Drawn", "James!", introKNOCKER, 1, 1, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 3; 

playSound3D [getMissionPath "sfx\KnockDoorMetal.ogg", introKNOCKER, false, getPosASL introKNOCKER, 4, 1, 0]; 

line1 = ["Drawn", "James, your up!", introKNOCKER, 1, 1, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;

introGo = true; 
titleCut ["", "BLACK IN", 6];
sleep 3; 
playSound3D [getMissionPath "sfx\KnockDoorMetal.ogg", introKNOCKER, false, getPosASL introKNOCKER, 4, 1, 0]; 

line1 = ["You", "Yeah, heard it - give me a sec.", player, 1, 1, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;

Task01activ = true;
[1, 0, false, false] call BIS_fnc_cinemaBorder; 


// Knock Sound here with playSound and you are up James 

// Define the building and door
_building = cargo01; // replace cargo01 with your building's variable name
_door = "Door_1_sound_source"; // replace with the animation name of the door you want to check


waitUntil {
    _phase = _building animationSourcePhase _door;
    _phase > 0
};
sleep 1; 

// Once the door is open, execute the script
[] execVM "scripts\sceneINTROknock.sqf"; 



playSound3D [getMissionPath "sfx\C_EA_RadioMusic1.ogg", radioCamp01, false, getPosASL radioCamp01, 3, 1, 15, 0, false];