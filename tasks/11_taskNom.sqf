
////////////////////////////////////////////////////////////////////////////
/////// Task #11: 
////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////
// Task Spawn: 
////////////////////////////////////////////////////////////////

	




////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////
// Task script:  
////////////////////////////////////////////////////////////////


	// Map related changes: 
	"markerFront03" setMarkerAlpha 0; 
	"markerFront01" setMarkerAlpha 0; 
	"markerFront07" setMarkerAlpha 0; 
	"markerFront07_1" setMarkerAlpha 0; 
	"markerFront07_2" setMarkerAlpha 0; 
	"markerFront08" setMarkerAlpha 0; 
	"markerAAFsolar" setMarkerAlpha 0; 

	"markerFrontChange01" setMarkerAlpha 1;
	"markerFrontChange01_2" setMarkerAlpha 1;
	"markerFrontChange02" setMarkerAlpha 1;
	"markerFrontChange03" setMarkerAlpha 1;
	"markerFrontChange04" setMarkerAlpha 1;
	"markerFrontChange05" setMarkerAlpha 1;
	"markerFrontChange06" setMarkerAlpha 1;
	"markerFrontChange07" setMarkerAlpha 1;
	"markerFrontChange08" setMarkerAlpha 1;
	"markerFrontChange09" setMarkerAlpha 1;
	"BIS_mrk_arrow_3" setMarkerAlpha 1; 
	"BIS_mrk_arrow_1" setMarkerAlpha 1; 
	"markerAAFsolarDONE" setMarkerAlpha 1; 
	"markerPart2" setMarkerAlpha 1; 

	// Variable that activates trigger for Orbat change (if working);!!!!needs changing stillL!!!!!
	// Variable that activates trigger for Orbat change (if working);!!!!needs changing stillL!!!!!
	FrontLineChange = true; 


	line1 = ["Longbow", "Hunter 1-1, break off current engagement. New orders incoming, over.", officerBrief, "\dubbing\RL\RL31.ogg", 1, "UI"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	sleep 0.5;  

	line1 = ["You", "Hunter 1-1 cycling and awaiting orders.", officerBrief, 3, 1, "UI"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	sleep 0.5;  

	line1 = ["Longbow", "Hunter 1-1, you are to conduct a fire support mission in vicinity of Kalochori. Callsign Nomad has encountered two enemy AAF tanks in the AO, over.", officerBrief, "\dubbing\RL\RL32.ogg", 1, "UI"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	sleep 0.5;  
	//////////////////////
			// Tasks: 
	
			[west, ["T11", "MainTask"], ["Squad Nomad has come under heavy fire by tanks and infantry. They have requested support! ", "Support Nomad! ", "marker"], where, "ASSIGNED", 1, true, "type", true] call BIS_fnc_taskCreate; 
			
					[west, ["T12", "T11"], ["AAF forces have deployed at least two tanks along Kalochori, destory them at all cost! ", "Destroy all AAF tanks! ", "marker"], where, "ASSIGNED", 1, true, "type", true] call BIS_fnc_taskCreate; 
			
					[west, ["T13", "T11"], ["Nomad has called for support for their on-going offensive at Kalochori. ", "Destroy AAF forces around Kalochori! ", "marker"], where, "ASSIGNED", 1, true, "type", true] call BIS_fnc_taskCreate; 
					
	//////////////////////
	line1 = ["You", "Copy that, Longbow. Any intel on enemy positions, over?", player, 3, 1, "3D"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	sleep 0.5; 

	line1 = ["Longbow", "Affirmative, Hunter 1-1. Nomad has deployed a drone and is sending the live feed to your HMD. Your primary task is to neutralize those tanks and provide support to Nomad, over.", officerBrief, "\dubbing\RL\RL33.ogg", 1, "UI"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	sleep 0.5;  

	line1 = ["Longbow", "If you need resupply, we've established a new supply hub at Charika. How copy, over?", officerBrief, "\dubbing\RL\RL34.ogg", 1, "UI"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	sleep 0.5; 
	//////////////////////
	
				player setVariable ["reArmNewOpen", 1];
	
	//////////////////////
	line1 = ["You", "Solid copy, Longbow. Fire mission at Kalochori, support Nomad, resupply at Charika if needed. Hunter 1-1 is Oscar Mike, out.", player, 5, 1, "3D"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	sleep 5;

	
		// Line player
		//
		sleep 0.5; 
	
		// Line CoPilot
		// 
		sleep 0.5; 
		
			
			////////////////////////////////////
			// Tanks: 
			////////////////////////////////////
			// Tank Stuff (Postion placement): 
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
			
			// CoPilot Talking: 
			[] spawn 
			{ 
			
			waitUntil { !alive aafMBT01 || !alive aafMBT02}; 
					
					line1 = ["Frost", "One destroyed, one to go.", coPilot, 2, 0, "3D"];
					[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
					sleep 0.5;			
			
			waitUntil { !alive aafMBT01 AND !alive aafMBT02};  

					line1 = ["Frost", "Boom.", coPilot, 2, 0, "3D"];
					[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;	

					// Finish sub-task here: 
					// 
					
					["T12", "SUCCEEDED", true] call BIS_fnc_taskSetState;
			}; 
			
			[] spawn 
			{
					// Drone Stream: 
					[LiveDroneSource, aafMBT01, player] call BIS_fnc_liveFeed;
					BIS_liveFeed camPrepareFOV 0.1;
					BIS_liveFeed camCommitPrepared 0;
					[ [ 1.1, 0.8 ], 1.5 ] call HO_fnc_resizePIP;
					
					waitUntil { !alive aafMBT01 }; 
					sleep 2; 
					call BIS_fnc_liveFeedTerminate; 
					sleep 1; 
					
					[LiveDroneSource, aafMBT02, player] call BIS_fnc_liveFeed;
					BIS_liveFeed camPrepareFOV 0.1;
					BIS_liveFeed camCommitPrepared 0;
					[ [ 1.1, 0.8 ], 1.5 ] call HO_fnc_resizePIP; 					
			}; 
			////////////////////////////////////
			////////////////////////////////////
			////////////////////////////////////
			
			////////////////////////////////////
			// SubTask AAF Inf: 
			////////////////////////////////////
			
			// SubTask conditions:
			[] spawn 
			{
			
			waitUntil {}; 
			["T13", "SUCCEEDED", true] call BIS_fnc_taskSetState;
			}; 
			
			/////////////
			/////////////
			// SubTask Hit conditions: 
			[] spawn 
			{ 
			waitUntil {  ({alive _x} count (units natoNOMADS)) < 6  }; // 80 percent
			//nomadSL sideChat "";
			//playSound 


			waitUntil {  ({alive _x} count (units natoNOMADS)) < 4  }; // 
			nomadSL sideChat "";
			//playSound 

			waitUntil {  ({alive _x} count (units natoNOMADS)) < 2  }; // 20 percent
			nomadSL sideChat "";
			//playSound 

			waitUntil {  ({alive _x} count (units natoNOMADS)) == 1  }; // = 1 remaining (SL stays alive for Voice Line, then gets killed of if needed) 
			nomadSL sideChat "";
			nomadSL allowDamage true; 

			sleep 2; 
			nomadSL setDamage 1;  
				//playSound 
			sleep 5; 

			// Line Officer 01: 
			//
			sleep 0.5; 
			
			// Line Officer 02: 
			//
			sleep 0.5; 

			line1 = ["Longbow", "Contact to Nomad has been lost.", officerBRIEF, "\dubbing\RL\RL35.ogg", 1, "UI"];
			[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
			sleep 0.5; 

			["NomadDead", false, true, true, false] call BIS_fnc_endMission;
			}; 
			
			/////////////
			/////////////
			
			waitUntil {};  
			["T11", "SUCCEEDED", true] call BIS_fnc_taskSetState;
			
			// New Task: 
			execVM ""; 