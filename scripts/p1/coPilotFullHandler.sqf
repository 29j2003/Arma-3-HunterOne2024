// Anything coPilot related, that isn'T being handeld elsewhere already: 
// started via Task 03 beginn:


////////////////////////////////////////////////////////////
// CoPilot introduction scene:
////////////////////////////////////////////////////////////

[] spawn
{
// Variable: 
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

				line1 = ["Frost", "Hunter 1-2 reporting in!", coPilot, 2, 0, "3D"];
				[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
				sleep 2;
				
				line1 = ["You", "Status, Frost?", player, 2, 0, "3D"];
				[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
				sleep 2; 
				
				line1 = ["Frost", "Bird's gunned up, ready to roll, sir.", coPilot, 2, 0, "3D"];
				[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
				sleep 3; 
				
				line1 = ["You", "No time to waste then.", player, 2, 0, "3D"];
				[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
				sleep 3; 
				
				line1 = ["Frost", "Affirmative, sir! Wheels up ASAP.", coPilot, 2, 0, "3D"];
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

	waitUntil {player in playerVehicle};
	missionNamespace setVariable ["Task03_Done", false];
	
	sleep 2;
	missionNamespace setVariable ["Task04_Go", false];

}; 

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////



////////////////////////////////////////////////////////////
//
////////////////////////////////////////////////////////////

[] spawn
{

}; 

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////



////////////////////////////////////////////////////////////
//
////////////////////////////////////////////////////////////

[] spawn
{

}; 

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////