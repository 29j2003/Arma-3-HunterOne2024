//scene script for when player enters Blackfoot, plays out small sound scene where player and co pilot talks

sleep 4; 
playerVehicle engineOn true; 
[0, 99999, false, true] call BIS_fnc_cinemaBorder; 

[] spawn
{
	line1 = ["You", "Okay - let's check everything.", player, 2, 0, "3D"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	sleep 2; 
	line1 = ["You", "20mil cycels, good.", player, 2, 0, "3D"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	sleep 2; 
	line1 = ["You", "The DAGR are also responding.", player, 2, 0, "3D"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	sleep 2; 
	line1 = ["You", "The Skalpel are looking good too.", player, 2, 0, "3D"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	sleep 2; 
	line1 = ["You", "And the ASRAAM are also responding.", player, 2, 0, "3D"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	sleep 2; 
	line1 = ["You", "Anything not working for you frost?", player, 2, 0, "3D"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	sleep 2; 
	line1 = ["Frost", "No complaints here.", coPilot, 2, 0, "3D"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	sleep 2; 
	line1 = ["You", "Good - then let's help Delta.", player, 2, 0, "3D"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
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


