//scene script for when player enters Blackfoot, plays out small sound scene where player and co pilot talks

sleep 4; 
playerVehicle engineOn true; 
[0, 99999, false, true] call BIS_fnc_cinemaBorder; 

[] spawn
{
	line1 = ["You", "Okay - let's check everything.", player];
	[[line1], "BLUFOR", 0.10, false] execVM "fn_simpleConv.sqf";
	sleep 3; 
	line1 = ["You", "20mil cycels, good.", player];
	[[line1], "BLUFOR", 0.10, false] execVM "fn_simpleConv.sqf";
	sleep 3; 
	line1 = ["You", "DAGR missels are also responding.", player];
	[[line1], "BLUFOR", 0.10, false] execVM "fn_simpleConv.sqf";
	sleep 4; 
	line1 = ["You", "Scalpel are looking good.", player];
	[[line1], "BLUFOR", 0.10, false] execVM "fn_simpleConv.sqf";
	sleep 4; 
	line1 = ["You", "The ASRAAM is also working.", player];
	[[line1], "BLUFOR", 0.10, false] execVM "fn_simpleConv.sqf";
	sleep 4; 
	line1 = ["You", "Any problems for you Frost?", player];
	[[line1], "BLUFOR", 0.10, false] execVM "fn_simpleConv.sqf";
	sleep 3; 
	line1 = ["Frost", "No, all clear here.", coPilot];
	[[line1], "BLUFOR", 0.10, false] execVM "fn_simpleConv.sqf";
	sleep 4; 
	line1 = ["You", "Good - then lets get this bird moving.", player];
	[[line1], "BLUFOR", 0.10, false] execVM "fn_simpleConv.sqf";
	sleep 1; 
	[1, 0, false, false] call BIS_fnc_cinemaBorder; 
};



[] spawn
{
	playerVehicle selectWeaponTurret ["gatling_20mm",[0]];
	sleep 3; 
	playerVehicle selectWeaponTurret ["gatling_20mm",[0]];
	sleep 3; 
	playerVehicle selectWeaponTurret ["missiles_DAGR",[0]];	
	sleep 4; 
	playerVehicle selectWeaponTurret ["missiles_SCALPEL",[0]];	
	sleep 4; 
	playerVehicle selectWeaponTurret ["missiles_ASRAAM",[0]];
	sleep 4; 
	playerVehicle selectWeaponTurret ["gatling_20mm",[0]];		
};


