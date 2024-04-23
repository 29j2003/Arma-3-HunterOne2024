// Handels everything with the Task: Rearm (besides mby. some dubbing) 

////////////////////////////////////////////////////////////
// ReArm Task activation: 
////////////////////////////////////////////////////////////

[] spawn
{
// Variable: 
missionNamespace setVariable ["reArm01_Go", false];
missionNamespace setVariable ["reArm02_Go", false];

waitUntil {missionNamespace getVariable ["reArm01_Go", true];}; 

	// Creates Optional Task: 
	[west, "OptTask", ["Optional:", "Optional:", "marker"], objNull, "CREATED", -1, false, "documents", false] call BIS_fnc_taskCreate; 
	sleep 2; 

	// Creates RearmTask: 
	[west, ["opt01", "OptTask"], ["Resupply yourself if needed.", "Resupply", "marker"], armoryBuilding, "CREATED", -1, true, "rearm", false] call BIS_fnc_taskCreate;

		// Task Area switch: 
		waitUntil {missionNamespace getVariable ["reArm02_Go", true];}; 
		
		// setTaskDesti: 
		["opt01", landingPadBase02] call BIS_fnc_taskSetDestination;
}; 

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////