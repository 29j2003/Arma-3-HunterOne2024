// Scene script for the Gunner AI (Co-Pilot) 

// say here: 

// ANIM here: 

playerVehicle setVehicleLock "LOCKEDPLAYER";
coPilot doWatch player; 
sleep 2; 
[] spawn
{
	coPilot disableAI "ANIM"; 
	coPilot switchMove "Acts_NATOCommanderArrival_Larkin_2"; sleep 1.832; 
	coPilot switchMove "Acts_NATOCommanderArrival_Larkin_3"; sleep 9; 
	coPilot switchMove "Acts_NATOCommanderArrival_Larkin_4"; sleep 0.832; 
	coPilot switchMove "";
	coPilot enableAI "ANIM"; 		
};

[] spawn
{

	line1 = ["Frost", "LT, reporting in!", coPilot, 2, 0, "3D"];
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


//line1 = ["Officer", "I hope you are well rested James.", officerBrief];
//[[line1], "BLUFOR", 0.15, false] execVM "fn_simpleConv.sqf";



