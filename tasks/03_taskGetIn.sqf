////////////////////////////////////////////////////////////////////////////
/////// Task #03: 
////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////
// Task Spawn: 
////////////////////////////////////////////////////////////////

	[west, ["T03", "MainTask"], ["Get into your Blackfoot helicopter.", "Enter your AH-99 Blackfoot.", "marker"], playerVehicle, "ASSIGNED", 1, true, "getin", true] call BIS_fnc_taskCreate; 

////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////
// Task script:  
////////////////////////////////////////////////////////////////

sleep 1; 

	[] spawn
		{
			// Variable: 
			missionNamespace setVariable ["Task03_Done", false];
			
			missionNamespace setVariable ["coPilotIntro_Go", false];

			waitUntil {missionNamespace getVariable ["coPilotIntro_Go", true];}; 

			// Vehicle and AI related stuff: 
			playerVehicle setVehicleLock "LOCKEDPLAYER";
			coPilot doWatch player; 
	
				// Animation set:
				[] spawn
					{
						coPilot disableAI "ANIM"; 
						coPilot switchMove "Acts_NATOCommanderArrival_Larkin_2"; sleep 1.832; 
						coPilot switchMove "Acts_NATOCommanderArrival_Larkin_3"; sleep 13; 
						coPilot switchMove "Acts_NATOCommanderArrival_Larkin_4"; sleep 0.832; 
						coPilot switchMove "";
						coPilot enableAI "ANIM"; 
					}; 

				// Dubbing: 
				[] spawn
					{

						line1 = ["Frost", "Hunter 1-2 reporting in!", coPilot, "\dubbing\MF\MF01.ogg", 1, "3D"];
						[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
						sleep 2;
				
						line1 = ["You", "Status, Frost?", player, 2, 0, "3D"];
						[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
						sleep 2; 
				
						line1 = ["Frost", "Bird's gunned up, ready to roll, sir.", coPilot, "\dubbing\MF\MF02.ogg", 1, "3D"];
						[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
						sleep 3; 
					
						line1 = ["You", "No time to waste then.", player, 2, 0, "3D"];
						[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
						sleep 3; 
				
						line1 = ["Frost", "Affirmative, sir! Wheels up ASAP.", coPilot, "\dubbing\MF\MF03.ogg", 1, "3D"];
						[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
					};

				// Order to get in helo: 
				coPilot assignAsGunner playerVehicle; 
				[coPilot] orderGetIn true;
				
				// Join group of player: 
				waitUntil {coPilot in playerVehicle}; 
				playerVehicle setVehicleLock "UNLOCKED";

				waitUntil {player in playerVehicle};
				[coPilot] joinSilent player;
				playerVehicle setVehicleLock "LOCKED";

				missionNamespace setVariable ["Task03_Done", true];

			// Some Ambient removal: 
			sleep 10; 
			
			deleteVehicle ambientBattleSound01;
			deleteVehicle ambientBattleSound02;
			deleteVehicle ambientBattleSound03;
		}; 
			
			
			
		// needed condition to finish it: 
		waitUntil { missionNamespace getVariable ["Task03_Done", true] };
			
		// finish task: 
		["T03", "SUCCEEDED", true] call BIS_fnc_taskSetState;
		
		missionNamespace setVariable ["coPilotWeaponsCheck_Go", true];

////////////////////////////////////////////////////////////////
// Second Part: 
////////////////////////////////////////////////////////////////
[] spawn
{

	// Go Var: 
	missionNamespace setVariable ["coPilotWeaponsCheck_Go", false];

	// wait until var is active
	waitUntil {missionNamespace getVariable ["coPilotWeaponsCheck_Go", true];}; 

	// short delay: 
	sleep 3; 
	
	// Player Stuff: 
	playerVehicle engineOn true; 
	[0, 99999, false, true] call BIS_fnc_cinemaBorder; 
	
		// Line 01: 
		line1 = ["You", "Alright - let's check everything.", player, 4, 0, "3D"];
		[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
		sleep 0.5; 
	
		
			// Set Weapons Mode:
			playerVehicle selectWeaponTurret ["gatling_20mm",[0]];
		
		// Line 02: 
		line1 = ["You", "20mm cannon, cycling smoothly.", player, 4, 0, "3D"];
		[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
		sleep 0.5; 
		
		
			// Set Weapons Mode:
			playerVehicle selectWeaponTurret ["missiles_DAGR",[0]];	
		
		// Line 03: 
		line1 = ["You", "DAGR missiles, system responsive.", player, 4, 0, "3D"];
		[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
		sleep 0.5; 


			// Set Weapons Mode:
			playerVehicle selectWeaponTurret ["missiles_SCALPEL",[0]];	
		
		// Line 04: 
		line1 = ["You", "Skalpel ATGMs, responding too.", player, 4, 0, "3D"];
		[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
		sleep 0.5; 


			// Set Weapons Mode:
			playerVehicle selectWeaponTurret ["missiles_ASRAAM",[0]];	
		
		// Line 05: 
		line1 = ["You", "ASRAAMs, looking good. All systems green.", player, 4, 0, "3D"];
		[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
		sleep 0.5; 


			// Set Weapons Mode:
			playerVehicle selectWeaponTurret ["gatling_20mm",[0]];	
		
		// Line 06: 
		line1 = ["You", "Comms check - Frost how is it looking for you?", player, 4, 0, "3D"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 0.5; 
		
		// Line 07: 
		line1 = ["Frost", "Systems are all green on my end. 1-2 ready to engage.", coPilot, "\dubbing\MF\MF04.ogg", 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 0.5; 
		
		// Line 08:
		line1 = ["You", "Copy that, Frost. Comms are loud and clear. Let’s get in the air and support Delta. Over.", player, 5, 0, "3D"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		
		// Return to normal mode: 
		[1, 0, false, false] call BIS_fnc_cinemaBorder; 
	
		
		// start music: 
		playMusic "BackgroundTrack04_F_EPC"; 
		
		// Ambient Arty: 
		missionNamespace setVariable ["AmbientArty02_Go", true];
		
		
		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		execVM "tasks\04_taskGoAO.sqf"; 
		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
}; 		