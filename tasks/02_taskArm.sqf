////////////////////////////////////////////////////////////////////////////
/////// Task #02: Armoury task: 
////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////
// Task Spawn: 
////////////////////////////////////////////////////////////////
	
	[west, ["T02", "MainTask"], ["Go the armory  and get your gear to move on the next objective. ", "Get your gear at the armory. ", "marker"], armoryBuilding, "ASSIGNED", 1, true, "armor", true] call BIS_fnc_taskCreate; 
	sleep 1; 
	

////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////
// Task script:  
////////////////////////////////////////////////////////////////

			armoryBuilding animate ["door_1_rot", 1];
			
			playerGUN hideObject false; 
			playerNVG hideObject false; 
			playerHELMET hideObject false; 
			playerVEST hideObject false; 
			
				// Ambient Stuff:
				missionNamespace setVariable ["AmbientArty01_Go", true];
				// already done elsewhere: missionNamespace setVariable ['paSystemOn', true];
			
				// Play Music: 
				playMusic "BackgroundTrack01_F_EPC";
			
					// needed condition to finish it: 
					waitUntil {sleep 1; "NVGoggles_OPFOR" in (items player + assignedItems player) && player hasWeapon "SMG_01_F" && headgear player == "H_PilotHelmetHeli_B" && vest player isEqualTo "V_TacVest_blk" };

					// after player has what he needs: 
					player addMagazine ["30Rnd_45ACP_Mag_SMG_01", 30];
					player addMagazine ["30Rnd_45ACP_Mag_SMG_01", 30];	
			
			// finish task: 
			["T02", "SUCCEEDED", true] call BIS_fnc_taskSetState;

			// start new task script: 
			execVM "scripts\tasks\03_taskGetIn.sqf"; 
			
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////