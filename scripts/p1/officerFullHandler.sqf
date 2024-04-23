// Anything Officer related, that isn'T being handeld elsewhere already: 



////////////////////////////////////////////////////////////
// ReArm Task activation: 
////////////////////////////////////////////////////////////

[] spawn
{
	// Variable: 
	missionNamespace setVariable ["reArm01_Go", false];

	waitUntil {missionNamespace getVariable ["reArm01_Go", true];}; 
		
		// Line 01: 
		line1 = ["Longbow", "Hunter 1-1, this is Longbow. We’re working on getting a resupply station up and running near Charika.", officerBrief, "\dubbing\RL\RL15.ogg", 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 0.5; 

		// Line 02:  
		line1 = ["Longbow", "Until then, the main airfield will serve as your primary resupply point. Over.", officerBrief, "\dubbing\RL\RL16.ogg", 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 0.5; 

		// Line 03: 
		line1 = ["You", "Acknowledged Longbow. Hunter 1-1 out.", player, 4, 1, "3D"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 0.5; 
		
	// Task Script Activation: 
	execVM "scripts\tasks\taskReArmHandler.sqf"; 
	
	sleep 2; 
	
	// Task activation: 
	missionNamespace setVariable ["reArm01_Go", true];

}; 

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////



////////////////////////////////////////////////////////////
// AO reached:  
////////////////////////////////////////////////////////////
[] spawn
{

	// Go Var: 
	missionNamespace setVariable ["officerAOcall", false];

		// wait until var is active
		waitUntil {missionNamespace getVariable ["officerAOcall", true];}; 

		line1 = ["You", "Longbow, this is Hunter 1-1. We're Oscar Mike to the AO, over.", player, 4, 2, "3D"];
		line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 0.5; 

		line1 = ["Longbow", "Roger that, Hunter 1-1. Stand by for patch through to Delta, over.", officerBrief, "\dubbing\RL\RL17.ogg", 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 0.5; 
	
	
	// Delay for following scripts (main delay comes from the voice lines by Unit: 
	sleep 2; 
	
		execVM "scripts\p1\csatForcers.sqf"; 
		execVM "scripts\p1\deltaFullHandler.sqf"; 
	
	sleep 1; 
	
	missionNamespace setVariable ["deltaAOcall", true];
	missionNamespace setVariable ["csatTeamsGo", true];
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