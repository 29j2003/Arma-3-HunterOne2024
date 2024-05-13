////////////////////////////////////////////////////////////////////////////
/////// Task #01: Go to Officer and Brief scene:
////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////
// Task Spawn: 
////////////////////////////////////////////////////////////////

	[west, "MainTask", ["Tasklog for all tasks during this mission.", "Tasklog:", "marker"], objNull, "CREATED", -1, false, "documents", false] call BIS_fnc_taskCreate; 
	sleep 1; 

	// Task Vars;
	missionNamespace setVariable ["Task01_Go", false];
	missionNamespace setVariable ["Task01_Done", false];

	// Task Activation:
	waitUntil { missionNamespace getVariable ["Task01_Go", true] };
	
		// Task creation: 
		[west, ["T01", "MainTask"], ["You have been orderd to Col. Rollins for your next assigment. ", "Report to Col. Rollins.", "marker"], officerBrief, "ASSIGNED", 1, true, "whiteboard", true] call BIS_fnc_taskCreate; 
	
			// needed condition to finish it: 
			waitUntil { missionNamespace getVariable ["Task01_Done", true] };
			
			// finish task: 
			["T01", "SUCCEEDED", true] call BIS_fnc_taskSetState;
			sleep 1; 
			
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////
// After Task script:  
////////////////////////////////////////////////////////////////

// Pre AI and player stuff: 
vehicleFlyBy01 enableSimulation true; 
vehicleFlyBy01 hideObject false; 

officerBrief disableAI "ALL"; 
[0, 99999, false, true] call BIS_fnc_cinemaBorder; 

// Finish Task:

// Animation, Talking and Map Animations set: 
[] spawn
{ 


		12 fadeMusic 0; 
		// Line RL01: 
		line1 = ["Rollins", "Hope you are rested James – high-priority mission for you.", officerBrief, "\dubbing\RL\RL01.ogg", 0, "3D"];
		[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
		sleep 0.5;
		
				// Animation: 
				officerBrief switchMove "Acts_C_in1_briefing";
		
		// Line PL01: 
		line1 = ["You", "What's the situation?", player, 2, 0, "3D"];
		[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
		sleep 0.5;
		
				[] spawn {
				sleep 2; 
				
				// Map Anim Start: 
				openMap [true, false];
				sleep 0.5; 
				
				[5.0, 0.03, markerPos "natoDELTA"] call BIS_fnc_mapAnimAdd; 
				["show", ["natoDELTA"]] call BIS_fnc_showMarkers;
				["show", ["natoDELTAao"]] call BIS_fnc_showMarkers;
				["natoDELTA", 2, 5] spawn BIS_fnc_blinkMarker; 
				}; 
		
		// Line RL02: 
		line1 = ["Rollins", "At 0415, one of our sections got ambushed by CSAT forces during our offensive here:", officerBrief, "\dubbing\RL\RL02.ogg", 0, "3D"];
		[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
		sleep 0.5; 

				// Further Map Anims: 
				["show", ["csatINF1"]] call BIS_fnc_showMarkers;
				["show", ["csatINF2"]] call BIS_fnc_showMarkers;
				["show", ["csatMECH"]] call BIS_fnc_showMarkers;

		// Line RL03: 
		line1 = ["Rollins", "They are currently pinned down from three different directions and are taking heavy fire.", officerBrief, "\dubbing\RL\RL03.ogg", 0, "3D"];
		[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
		sleep 0.5; 
		
				// Map Anim. showing movement: 
				[2.0, 0.015, markerPos "csatINFwestPos"] call BIS_fnc_mapAnimAdd; 
				["show", ["csatINFmain1"]] call BIS_fnc_showMarkers;
				["csatINFmain1", getMarkerPos "csatINFwestPos", 6, 4] call BIS_fnc_moveMarker;
				["csatINF1", getMarkerPos "csatINFPos1", 6, 4] call BIS_fnc_moveMarker;
		
		// Line RL04: 
		line1 = ["Rollins", "An infantry squad is closing from the west,", officerBrief, "\dubbing\RL\RL04.ogg", 0, "3D"];
		[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
		sleep 0.5;    

				// Map Anim. showing movement: 		
				[2.0, 0.015, markerPos "csatMECHnorthPos"] call BIS_fnc_mapAnimAdd; 
				["show", ["csatMECHmain"]] call BIS_fnc_showMarkers;
				["csatMECHmain", getMarkerPos "csatMECHnorthPos", 6, 4] call BIS_fnc_moveMarker;
				["csatMECH", getMarkerPos "csatMECHPos", 6, 4] call BIS_fnc_moveMarker;
				
		// Line RL05: 
		line1 = ["Rollins", "While a mechanized unit is rolling down from the north,", officerBrief, "\dubbing\RL\RL05.ogg", 0, "3D"];
		[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
		sleep 0.5; 
			
				// Map Anim. showing movement: 
				[2.0, 0.015, markerPos "csatINFeastPos"] call BIS_fnc_mapAnimAdd; 
				["show", ["csatINFmain2"]] call BIS_fnc_showMarkers;
				["csatINFmain2", getMarkerPos "csatINFeastPos", 6, 4] call BIS_fnc_moveMarker;
				["csatINF2", getMarkerPos "csatINFPos2", 6, 4] call BIS_fnc_moveMarker;
		
		// Line RL06 :
		line1 = ["Rollins", "And more foot-mobiles are coming from the east.", officerBrief, "\dubbing\RL\RL06.ogg", 0, "3D"];
		[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
		sleep 2; 
		
				// Map Anim. "showing" AA pos: 
				[2.0, 0.05, markerPos "natoDELTA"] call BIS_fnc_mapAnimAdd; 
				
		// Line RL07:
		line1 = ["Rollins", "They've also spotted an anti-air group in the AO.", officerBrief, "\dubbing\RL\RL07.ogg", 0, "3D"];
		[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
		sleep 0.5; 
		
		// Line RL08: 
		line1 = ["Rollins", "The exact position of it is unknown as of now.", officerBrief, "\dubbing\RL\RL08.ogg", 0, "3D"];
		[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
		sleep 2; 
		
		// Line PL02:
		line1 = ["You", "What about CSAT or AAF QRFs?", player, 3, 0, "3D"];
		[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
		sleep 0.5; 
		
				// Map Anim: 
				[2.0, 0.1, markerPos "natoDELTA"] call BIS_fnc_mapAnimAdd; 
				["markerRecon", 2, 5] spawn BIS_fnc_blinkMarker;
		
		// Line RL09:
		line1 = ["Rollins", "We have eyes on the ground to monitor any movements. We'll keep you updated.", officerBrief, "\dubbing\RL\RL09.ogg", 0, "3D"];
		[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
		sleep 0.5; 
		
				// Map Anim: for one sentence only: 
				[] spawn 
				{ 
				["show", ["markerCAS"]] call BIS_fnc_showMarkers;
				["markerCAS", getMarkerPos "casPOS", 8, 4] call BIS_fnc_moveMarker;
				sleep 2; 
				
				["show", ["markerEVAC"]] call BIS_fnc_showMarkers;
				["show", ["evacPOS"]] call BIS_fnc_showMarkers;
				["markerEVAC", getMarkerPos "evacPOS", 8, 4] call BIS_fnc_moveMarker;
				sleep 2; 
				
				["hide", ["markerCAS"]] call BIS_fnc_showMarkers;
				sleep 2; 
				
				["hide", ["markerEVAC"]] call BIS_fnc_showMarkers;
				["hide", ["evacPOS"]] call BIS_fnc_showMarkers;
				}; 
		
				
				// NPC Animation: 
				officerBrief switchMove "Acts_Kore_IdleNoWeapon_loop"; 
		
		// Line RL10: 
		line1 = ["Rollins", "Your objective is to provide CAS and secure the LZ until an evac arrives and extracts them.", officerBrief, "\dubbing\RL\RL10.ogg", 0, "3D"];
		[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
		sleep 2;
		
		// Line RL11: 
		line1 = ["Rollins", "You'll be deep in enemy territory, so watch your six.", officerBrief, "\dubbing\RL\RL11.ogg", 0, "3D"];
		[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
		sleep 0.5; 
		
				// close map again: 
				openMap [false, false];
				
		// Line RL12: 
		line1 = ["Rollins", "Your Co-Pilot has been briefed and your Blackfoot is prepped and ready.", officerBrief, "\dubbing\RL\RL12.ogg", 0, "3D"];
		[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
		sleep 0.5; 
		
		// Line RL13: 
		line1 = ["Rollins", "Gear up and get to your ‘bird. Our boys need you ASAP!", officerBrief, "\dubbing\RL\RL13.ogg", 0, "3D"];
		[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
		sleep 0.5; 
		
		// Line RL14:
		line1 = ["Rollins", "Dismissed.", officerBrief, "\dubbing\RL\RL14.ogg", 1, "3D"];
		[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
		sleep 0.5; 
		
		// Line PL03: 
		line1 = ["You", "Sir.", player, 3, 0, "3D"];
		[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
		
		// Enable Movement again: 
		[1, 0, false, true] call BIS_fnc_cinemaBorder; 
		
		// 
		playMusic ""; 
		sleep 0.5; 
		0 fadeMusic 1;
		sleep 0.5; 
		

		/////////////////////// Task 02 script activation: ////////////////////////////////////////
		execVM "tasks\02_taskArm.sqf"; 
		//////////////////////////////////////////////////////////////////////////////////////////
}; 


