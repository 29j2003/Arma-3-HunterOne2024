// Intro script that plays directly at the start of the mission: 

// Sound removed: 0 fadeSound 0;
0 fadeSound 0;

// Cut to black before it loads: 
titleCut ["", "BLACK FADED", 999];

// Delay:
sleep 1; 

// Display a quote at the beginning: 
_quote = selectRandom 
[
	"a3\missions_f_epa\video\a_m01_quotation.ogv",
	"a3\missions_f_epa\video\a_m02_quotation.ogv",
	"a3\missions_f_epa\video\a_m03_quotation.ogv",
	"a3\missions_f_epa\video\a_m04_quotation.ogv",
	"a3\missions_f_epa\video\a_m05_quotation.ogv"
]; 
_video = [_quote] spawn bis_fnc_playVideo; 

// Wait till quote finishes: 
waitUntil {scriptDone _video}; 
8 fadeSound 1;

// Player handeling: 
[0, 99999, false, true] call BIS_fnc_cinemaBorder; 

////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////

// SFX and Music handeling: 
[] spawn 
{
	// Fade Music to 0
	0 fadeMusic 0;
	
	// 7 Second Music fade to 1; 
	7 fadeMusic 1; 
	
	// Play Music: 
	playMusic ["C_EA_RadioMusic2", 28];
	
	// Delay: 
	sleep 22; 
	
	// Fade Music to mimick laying down tablet: 
	2 fadeMusic 0.4;
	
	// Dropping Tablet on table: 
	playSound3D [getMissionPath "sfx\objectOnTable.ogg", tablet01, true, getPosASL tablet01, 3]; 
	
	// Further fading for the sound mimiciking: 
	0 fadeMusic 0.2;
	
	// Delay and Music stop: 
	sleep 1; 
	playSound3D [""];
	
	// Restart Music and disable exisiting one; but now on the table: 
	playSound3D [getMissionPath "sfx\C_EA_RadioMusic2.ogg", tablet01, true, getPosASL tablet01, 2, 1, 4, 0, false];
	0 fadeMusic 0;
	
	// Set player pos in case something went wrong: 
	player setPos (getPos playerMarker); 
	player setDir 104.008; 
	
	// Delay: 
	sleep 3; 
	playMusic ""; 
	0 fadeMusic 1;
	sleep 10; 
}; 

////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////

// delay: 
sleep 5.5; 

// dubbing and further sfx handeling: 
[] spawn 
{

	// Line 01: 
	line1 = ["PA", "Lt. Hawk, please report to Col. Rollins.", introPA, 3, 1, "UI"];
	[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
	
	//Delay: 
	sleep 2; 
	
	
		// Play knocking effect: 
		playSound3D [getMissionPath "sfx\KnockDoorMetal.ogg", introKNOCKER, false, getPosASL introKNOCKER, 4, 1, 0];
		
	// Line 02: 
	line1 = ["PA", "Lt. James Hawk, please report to Col. Rollins.", introPA, 1, 1, "UI"];
	[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;


	//Delay: 
	sleep 2; 
	
	// Line 03: 
	line1 = ["Drawn", "James!", introKNOCKER, 1, 1, "3D"];
	[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
	
	
	// Delay: 
	sleep 2; 
	
	// Line 04: 
	line1 = ["Drawn", "James!", introKNOCKER, 1, 1, "3D"];
	[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
	
	// Delay: 
	sleep 2; 
	
	
		// Play knocking effect: 
		playSound3D [getMissionPath "sfx\KnockDoorMetal.ogg", introKNOCKER, false, getPosASL introKNOCKER, 4, 1, 0];
		
	// Delay: 
	sleep 1; 
	
	// Line 05: 
	line1 = ["Drawn", "James, your up!", introKNOCKER, 1, 1, "3D"];
	[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
	
	// Screen fade in: 
	titleCut ["", "BLACK IN", 6];
	
	// Delay: 
	sleep 2;
	
		// Play knocking effect: 
		playSound3D [getMissionPath "sfx\KnockDoorMetal.ogg", introKNOCKER, false, getPosASL introKNOCKER, 4, 1, 0];
		
	// Delay: 
	sleep 1; 
	
	line1 = ["You", "Yeah yeah, heard it - give me a sec.", player, 1, 1, "3D"];
	[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
	sleep 0.5; 
	
	// enable movement: 
	[1, 0, false, false] call BIS_fnc_cinemaBorder;

	// enable Task: 
	missionNamespace setVariable ["Task01_Go", true];
	
	// enable Radio in the base: 
	playSound3D [getMissionPath "sfx\C_EA_RadioMusic1.ogg", radioCamp01, false, getPosASL radioCamp01, 3, 1, 15, 0, false];
	
	// enable Ambient Huron: 
	ambientFlyBy03D enableSimulation true; 
}; 

