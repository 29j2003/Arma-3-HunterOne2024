// Intro Script that executes at the start of the mission: 
////////////////////////

// Disable Sound: 
0 fadeSound 0; 

// Cut to black screen
titleCut ["", "BLACK FADED", 999];
sleep 1; 

//Display a "random" quote at the beginning: 
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

// Fade In Sound 
8 fadeSound 1;

// Lock Player Pos: 
[0, 99999, false, true] call BIS_fnc_cinemaBorder; 

[] spawn 
	{
		// Fade Music to zero 
		0 fadeMusic 0; 
		
		// Fade in Music 
		7 fadeMusic 1; 
		
		// Play Music: 
		playMusic ["C_EA_RadioMusic2", 28];
		sleep 6; 
		
		// First PA line:
		playSound3D [getMissionPath "dubbing\PA\PA02.ogg", paSpeaker01, false, getPosASL paSpeaker01, 8, 1, 100];
		sleep 5; 
		
		// First Knock Sound: 
		playSound3D [getMissionPath "sfx\KnockDoorMetal.ogg", introKNOCKER, false, getPosASL introKNOCKER, 4, 1, 0];
		
			// First Shout: 
			line1 = ["Drawn", "James!", introKNOCKER, 1, 1, "3D"];
			[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
			sleep 0.5; 
		
		// Delay: 
		sleep 4; 
		
		// Second PA Line: 
		playSound3D [getMissionPath "dubbing\PA\PA02.ogg", paSpeaker01, false, getPosASL paSpeaker01, 8, 1, 100];
		sleep 6; 
		
		// Second Knock: 
		playSound3D [getMissionPath "sfx\KnockDoorMetal.ogg", introKNOCKER, false, getPosASL introKNOCKER, 4, 1, 0];
		
		[] spawn 
			{ 
				// Droping Tablet on table: 
				4 fadeMusic 0.5; 
				sleep 3;
				
				playSound3D [getMissionPath "sfx\objectOnTable.ogg", tablet01, true, getPosASL tablet01, 3]; 
				sleep 0.5; 
				
				2 fadeMusic 0.2; 
				sleep 0.5; 
	
				playSound3D [""];
	
				// Restart Music and disable exisiting one; but now on the table: 
				playSound3D [getMissionPath "sfx\C_EA_RadioMusic2.ogg", tablet01, true, getPosASL tablet01, 2, 1, 4, 0, false];
				0 fadeMusic 0;
				
				player setPos (getPos playerMarker); 
				player setDir 104.008;
				
				sleep 3; 
				playMusic ""; 
				0 fadeMusic 1;
			}; 
		
		sleep 5; 
		
		// Third Knock 
		playSound3D [getMissionPath "sfx\KnockDoorMetal.ogg", introKNOCKER, false, getPosASL introKNOCKER, 4, 1, 0];
		sleep 1; 
		
			// Second Shout 
			line1 = ["Drawn", "James, your up!", introKNOCKER, 1, 1, "3D"];
			[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
			sleep 2; 
		
		// Player Reaction: 
		line1 = ["You", "Yeah yeah, heard it - give me a sec.", player, 1, 1, "3D"];
		[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
		sleep 0.5; 
		
		// re-enable movement: 
		[1, 0, false, false] call BIS_fnc_cinemaBorder;
		titleCut ["", "BLACK IN", 6];
		
		// enable Task: 
		missionNamespace setVariable ["Task01_Go", true];
	
		// enable Radio in the base: 
		playSound3D [getMissionPath "sfx\C_EA_RadioMusic1.ogg", radioCamp01, false, getPosASL radioCamp01, 3, 1, 15, 0, false];
	
		// enable Ambient Huron: 
		ambientFlyBy03D enableSimulation true; 
}; 