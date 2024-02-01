//scene script for when player enters Blackfoot, plays out small sound scene where player and co pilot talks

sleep 4; 
playerVehicle engineOn true; 
[0, 99999, false, true] call BIS_fnc_cinemaBorder; 

// Dialog 
[] spawn
{
	line1 = ["You", "Alright - let's check everything.", player, 2, 0, "3D"];
	[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
	sleep 2; 
	line1 = ["You", "20mm cannon, cycling smoothly.", player, 2, 0, "3D"];
	[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
	sleep 2; 
	line1 = ["You", "DAGR missiles, system responsive.", player, 2, 0, "3D"];
	[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
	sleep 2; 
	line1 = ["You", "Skalpel ATGMs, responding too..", player, 2, 0, "3D"];
	[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
	sleep 2; 
	line1 = ["You", "ASRAAMs, looking good. All systems green.", player, 2, 0, "3D"];
	[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
	sleep 2; 
	line1 = ["You", "Comms check - Frost how is it looking for you?", player, 2, 0, "3D"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	sleep 2; 
	line1 = ["Frost", "Systems are all green on my end. 1-2 ready to engage.", coPilot, 2, 0, "UI"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	sleep 2; 
	line1 = ["You", "Copy that, Frost. Comms are loud and clear. Let’s get in the air and support Delta. Over.", player, 2, 0, "3D"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	sleep 1; 
	[1, 0, false, false] call BIS_fnc_cinemaBorder; 
};


// Weapon Display change
[] spawn
{
	playerVehicle selectWeaponTurret ["gatling_20mm",[0]];
	sleep 4; 
	playerVehicle selectWeaponTurret ["gatling_20mm",[0]];
	sleep 4; 
	playerVehicle selectWeaponTurret ["missiles_DAGR",[0]];	
	sleep 4; 
	playerVehicle selectWeaponTurret ["missiles_SCALPEL",[0]];	
	sleep 4; 
	playerVehicle selectWeaponTurret ["missiles_ASRAAM",[0]];
	sleep 4; 
	playerVehicle selectWeaponTurret ["gatling_20mm",[0]];		
};

//  Potential Soundeffects
[] spawn
{
}; 


