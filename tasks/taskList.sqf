// Task list that contains all tasks, activates them or finishes them: 
// [owner, taskID, description, destination, state, priority, showNotification, type, visibleIn3D] call BIS_fnc_taskCreate

// Go to Officer:
missionNamespace setVariable ["Task01_Go", false];
missionNamespace setVariable ["Task01_Done", false];

// Go to Armoury: 
missionNamespace setVariable ["Task02_Go", false];
missionNamespace setVariable ["Task02_Done", false];

// Go to Helo: 
missionNamespace setVariable ["Task03_Go", false];
missionNamespace setVariable ["Task03_Done", false];

// Fly to AO: 
missionNamespace setVariable ["Task04_Go", false];
missionNamespace setVariable ["Task04_Done", false];

// Kill CSAT forces: 
missionNamespace setVariable ["Task05_Go", false];
missionNamespace setVariable ["Task05_Done", false];

// Wait for EVAC:
missionNamespace setVariable ["Task06_Go", false];
missionNamespace setVariable ["Task06_Done", false];

// Kill inbound QRF:
missionNamespace setVariable ["Task07_Go", false];
missionNamespace setVariable ["Task07_Done", false];

// Defend EVAC: 
missionNamespace setVariable ["Task08_Go", false];
missionNamespace setVariable ["Task08_Done", false];

// Kill Enemy Air QRF:
missionNamespace setVariable ["Task09_Go", false];
missionNamespace setVariable ["Task09_Done", false];

// RTB Fake: 
missionNamespace setVariable ["Task10_Go", false];
missionNamespace setVariable ["Task10_Done", false];

// Support Squad (main task) 
missionNamespace setVariable ["Task11_Go", false];
missionNamespace setVariable ["Task11_Done", false];

// Subtask: Kill Tanks
missionNamespace setVariable ["Task12_Go", false];
missionNamespace setVariable ["Task12_Done", false];

// Subtask: Kill AAF units:
missionNamespace setVariable ["Task13_Go", false];
missionNamespace setVariable ["Task13_Done", false];

// RTB Final:
missionNamespace setVariable ["Task14_Go", false];
missionNamespace setVariable ["Task14_Done", false];

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Overview RC Tasklog: 

[west, "MainTask", ["Tasklog for all tasks during this mission.", "Tasklog:", "marker"], objNull, "CREATED", -1, false, "documents", false] call BIS_fnc_taskCreate; 
sleep 2; 

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////
// Task 01: Go to the Officer: 
//////////////////////////////////////////////
	// needed condition to start task:
	waitUntil { missionNamespace getVariable ["Task01_Go", true] };
	
	// Task creation: 
	[west, ["T01", "MainTask"], ["You have been orderd to Col. Rollins for your next assigment. ", "Report to Col. Rollins.", "marker"], officerBrief, "ASSIGNED", 1, true, "whiteboard", true] call BIS_fnc_taskCreate; 
	
			// needed condition to finish it: 
			waitUntil { missionNamespace getVariable ["Task01_Done", true] };
			
			// finish task: 
			["T01", "SUCCEEDED", true] call BIS_fnc_taskSetState;
			
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////
// Task 02: 
//////////////////////////////////////////////
	// needed condition to start task:
	waitUntil { missionNamespace getVariable ["Task02_Go", true] };
	
	
	// Task creation: 
	[west, ["T02", "MainTask"], ["Go the armory  and get your gear to move on the next objective. ", "Get your gear at the armory. ", "marker"], armoryBuilding, "ASSIGNED", 1, true, "armor", true] call BIS_fnc_taskCreate; 
			
			// Task stuff:
			armoryBuilding animate ["door_1_rot", 1];
			execVM "tasks\task02Check.sqf"; 
			
			// Ambient Stuff:
			missionNamespace setVariable ["AmbientArty01_Go", true];
			missionNamespace setVariable ['paSystemOn', true];
			
			// Play Music: 
			playMusic "BackgroundTrack01_F_EPC";
			
			// needed condition to finish it: 
			waitUntil { missionNamespace getVariable ["Task02_Done", true] };
			
			// finish task: 
			["T02", "SUCCEEDED", true] call BIS_fnc_taskSetState;
			
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////
// Task 03: 
//////////////////////////////////////////////
	// needed condition to start task:
	waitUntil { missionNamespace getVariable ["Task03_Go", true] };
	
	// Task creation: 
	[west, ["T03", "MainTask"], ["Get into your Blackfoot helicopter.", "Enter your AH-99 Blackfoot.", "marker"], playerVehicle, "ASSIGNED", 1, true, "getin", true] call BIS_fnc_taskCreate; 
			
			// Task Stuff: 
			execVM "scripts\p1\coPilotFullHandler.sqf"; 
			
			// needed condition to finish it: 
			waitUntil { missionNamespace getVariable ["Task03_Done", true] };
			
			// finish task: 
			["T03", "SUCCEEDED", true] call BIS_fnc_taskSetState;
			
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////
// Task 04 
//////////////////////////////////////////////
	// needed condition to start task:
	waitUntil { missionNamespace getVariable ["Task04_Go", true] };
	
	// Task creation: 
	[west, ["T04", "MainTask"], ["Fly to the area of operations to support Delta!", "Fly to the AO!", "marker"], HO_SquadLead, "ASSIGNED", 1, true, "defend", true] call BIS_fnc_taskCreate; 
	
			// needed condition to finish it: 
			waitUntil { missionNamespace getVariable ["Task04_Done", true] };
			
			// finish task: 
			["T04", "SUCCEEDED", true] call BIS_fnc_taskSetState;
			
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////
// Task 05
//////////////////////////////////////////////
	// needed condition to start task:
	waitUntil { missionNamespace getVariable ["Task05_Go", true] };
	
	// Task creation: 
	[west, ["T05", "MainTask"], ["Support Delta at all cost!", "Support Delta!", "marker"], HO_SquadLead, "ASSIGNED", 1, true, "defend", true] call BIS_fnc_taskCreate; 
	
			// needed condition to finish it: 
			waitUntil { missionNamespace getVariable ["Task05_Done", true] };
			
			// finish task: 
			["T05", "SUCCEEDED", true] call BIS_fnc_taskSetState;
			
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////
// Task 06 
//////////////////////////////////////////////
	// needed condition to start task:
	waitUntil { missionNamespace getVariable ["Task06_Go", true] };
	
	// Task creation: 
	[west, ["T06", "MainTask"], ["Defend the area and wait for the arrivel of Ghost 2-1!", "Wait for Ghost 2-1!", "marker"], evacHELO, "ASSIGNED", 1, true, "wait", true] call BIS_fnc_taskCreate; 
	
			// needed condition to finish it: 
			waitUntil { missionNamespace getVariable ["Task06_Done", true] };
			
			// finish task: 
			["T06", "SUCCEEDED", true] call BIS_fnc_taskSetState;
			
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////
// Task 07
//////////////////////////////////////////////
	// needed condition to start task:
	waitUntil { missionNamespace getVariable ["Task07_Go", true] };
	
	// Task creation: 
	[west, ["T07", "MainTask"], ["CSAT and AAF QRFs are driving towards Delta, destroy them before they can reach them! ", "Destroy reinforcements! ", "marker"], objNull, "ASSIGNED", 0, true, "destroy", false] call BIS_fnc_taskCreate; 
	
	// Sub Task Creation for each vehicle:: 
		[] spawn 
		{
		[west, ["T07sub01", "T07"], ["", "Strider HMG", "marker"], qrfVeh01, "ASSIGNED", 5, false, "destroy", true] call BIS_fnc_taskCreate; 
		[west, ["T07sub02", "T07"], ["", "FV-720 Mora", "marker"], qrfVeh02, "ASSIGNED", 4, false, "destroy", true] call BIS_fnc_taskCreate; 
		[west, ["T07sub03", "T07"], ["", "Tempest Transport", "marker"], qrfVeh03, "ASSIGNED", 3, false, "destroy", true] call BIS_fnc_taskCreate; 
		[west, ["T07sub04", "T07"], ["", "CSAT Forces", "marker"], qrfVeh03, "ASSIGNED", 2, false, "destroy", true] call BIS_fnc_taskCreate; 
		}; 
	
			// needed condition to finish it: 
			waitUntil { missionNamespace getVariable ["Task07_Done", true] };
			
			// finish task: 
			["T07", "SUCCEEDED", true] call BIS_fnc_taskSetState;
			
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////
// Task 08
//////////////////////////////////////////////
	// needed condition to start task:
	waitUntil { missionNamespace getVariable ["Task08_Go", true] };
	
	// Task creation: 
	[west, ["T08", "MainTask"], ["Ghost 2-1 has landed and is picking up the remaining forces of Delta - defend them!", "Defend Ghost 2-1!", "marker"], evacHELO, "ASSIGNED", 1, true, "defend", true] call BIS_fnc_taskCreate; 
	
			// needed condition to finish it: 
			waitUntil { missionNamespace getVariable ["Task08_Done", true] };
			
			// finish task: 
			["T08", "SUCCEEDED", true] call BIS_fnc_taskSetState;
			
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////
// Task 09
//////////////////////////////////////////////
	// needed condition to start task:
	waitUntil { missionNamespace getVariable ["Task09_Go", true] };
	
	// Task creation: 
	[west, ["T09", "MainTask"], ["CSAT have send an enemy gunship, destroy it before it reaches Delta and Ghost 2-1!", "Destroy incoming gunship!", "marker"], qrfAirSupport01, "ASSIGNED", 1, true, "destroy", true] call BIS_fnc_taskCreate; 
	
			// needed condition to finish it: 
			waitUntil { missionNamespace getVariable ["Task09_Done", true] };
			
			// finish task: 
			["T09", "SUCCEEDED", true] call BIS_fnc_taskSetState;
			
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////
// Task 10
//////////////////////////////////////////////
	// needed condition to start task:
	waitUntil { missionNamespace getVariable ["Task10_Go", true] };
	
	// Task creation: 
	[west, ["T10", "MainTask"], ["You've finished your tasks and are requested back at base!", "Return back to base!", "marker"], landingPadBase, "ASSIGNED", 1, true, "land", true] call BIS_fnc_taskCreate; 
	
			// needed condition to finish it: 
			waitUntil { missionNamespace getVariable ["Task10_Done", true] };
			
			// finish task: 
			["T10", "CANCELED", true] call BIS_fnc_taskSetState;
			
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////
// Task 11
//////////////////////////////////////////////
	// needed condition to start task:
	waitUntil { missionNamespace getVariable ["Task11_Go", true] };
	
	// Task creation: 
	[west, ["T11", "MainTask"], ["Squad Nomad has come under heavy fire by tanks and infantry. They have requested support! ", "Support Nomad! ", "marker"], where, "ASSIGNED", 1, true, "type", true] call BIS_fnc_taskCreate; 
	
			// needed condition to finish it: 
			waitUntil { missionNamespace getVariable ["Task11_Done", true] };
			
			// finish task: 
			["T11", "SUCCEEDED", true] call BIS_fnc_taskSetState;
			
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////
// Task 12 
//////////////////////////////////////////////
	// needed condition to start task:
	waitUntil { missionNamespace getVariable ["Task12_Go", true] };
	
	// Task creation: 
	[west, ["T12", "T11"], ["AAF forces have deployed at least two tanks along Kalochori, destory them at all cost! ", "Destroy all AAF tanks! ", "marker"], where, "ASSIGNED", 1, true, "type", true] call BIS_fnc_taskCreate; 
	
			// needed condition to finish it: 
			waitUntil { missionNamespace getVariable ["Task12_Done", true] };
			
			// finish task: 
			["T12", "SUCCEEDED", true] call BIS_fnc_taskSetState;
			
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////
// Task 13 
//////////////////////////////////////////////
	// needed condition to start task:
	waitUntil { missionNamespace getVariable ["Task13_Go", true] };
	
	// Task creation: 
	[west, ["T13", "T11"], ["Nomad has called for support for their on-going offensive at Kalochori. ", "Destroy AAF forces around Kalochori! ", "marker"], where, "ASSIGNED", 1, true, "type", true] call BIS_fnc_taskCreate; 
	
			// needed condition to finish it: 
			waitUntil { missionNamespace getVariable ["Task13_Done", true] };
			
			// finish task: 
			["T13", "SUCCEEDED", true] call BIS_fnc_taskSetState;
			
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////
// Task 14 
//////////////////////////////////////////////
	// needed condition to start task:
	waitUntil { missionNamespace getVariable ["Task14_Go", true] };
	
	// Task creation: 
	[west, ["T14", "MainTask"], ["You've completed all tasks for today - return back to base and get some rest. Good job!", "Return back to base!", "marker"], where, "ASSIGNED", 1, true, "type", true] call BIS_fnc_taskCreate; 
	
			// needed condition to finish it: 
			waitUntil { missionNamespace getVariable ["Task14_Done", true] };
			
			// finish task: 
			["T14", "SUCCEEDED", true] call BIS_fnc_taskSetState;
			
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////
// Task 15 
//////////////////////////////////////////////
	// needed condition to start task:
	waitUntil { missionNamespace getVariable ["Task15_Go", true] };
	
	// Task creation: 
	[west, ["T15", "MainTask"], ["", "", "marker"], where, "ASSIGNED", 1, true, "type", true] call BIS_fnc_taskCreate; 
	
			// needed condition to finish it: 
			waitUntil { missionNamespace getVariable ["Task15_Done", true] };
			
			// finish task: 
			["T15", "SUCCEEDED", true] call BIS_fnc_taskSetState;
			
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////