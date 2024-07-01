
////////////////////////////////////////////////////////////////////////////
/////// Task #12: 
////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////
// Task Spawn: 
////////////////////////////////////////////////////////////////
	
		missionNamespace getVariable ["Task12_Go", false]




////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////
// Task script:  
////////////////////////////////////////////////////////////////

// Task 11 finished talk and Talk 12 talk 
	
	line1 = ["You", "Longbow, Hunter 1-1. All threats have been neutralized in the AO. Awaiting further orders, how copy?", player, 3, 1, "UI"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	sleep 0.5; 

	line1 = ["Longbow", "Solid copy on all. Good work out there. Nomad sends his gratitude, over.", officerBrief, "\dubbing\RL\RL36.ogg", 1, "UI"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	sleep 0.5; 
		
	line1 = ["You", "Roger, Longbow. Always glad to lend a hand. What's next, over?", player, 3, 1, "UI"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	sleep 0.5; 

	line1 = ["Longbow", "Hunter 1-1, RTB for debrief. You've made a difference today and saved a lot of lives. Longbow out.", officerBrief, "\dubbing\RL\RL37.ogg", 1, "UI"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	sleep 0.5; 

	line1 = ["You", "Affirm, returning back to base. Out.", player, 3, 1, "UI"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	sleep 0.5; 	
	
// Task 12 start: 
	
	missionNamespace getVariable ["Task12_Go", true]
	
	[west, ["T12", "MainTask"], ["Land back at the airbase for debriefing.", "Return!", "marker"], landingPadBase, "ASSIGNED", 1, true, "land", true] call BIS_fnc_taskCreate; 

	sleep 15; 

	waitUntil { missionNamespace getVariable ["Task12_Done", true] }; 
	["T12", "SUCCEEDED", true] call BIS_fnc_taskSetState;
	sleep 3; 
	
	["Win", true, true] call BIS_fnc_endMission;




// Task 12 finish: 