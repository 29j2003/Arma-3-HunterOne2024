////////////////////////////////////////////////////////////////////////////
/////// Task #09: 
////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////
// Task Spawn: 
////////////////////////////////////////////////////////////////

	
	


////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////
// Task script:  
////////////////////////////////////////////////////////////////

// qrfAirSupport01

	qrfAirSupport01 enableSimulation true; 
	qrfAirSupport01 hideObject false; 
	qrfAirSupport01 doMove (position HO_SquadLead);
	
	
	
	sleep 10; 


		line1 = ["Longbow", "Hunter 1-1, this is Longbow. Enemy gunship inbound to your AO. Engage and neutralize before it reaches Delta, over!", officerBrief, "\dubbing\RL\RL28.ogg", 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 0.5;  

		line1 = ["You", "Wilco, Hunter 1-1 moving to engage. Out.", player, 4, 1, "3D"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	
	// Task creation: 
	[west, ["T09", "MainTask"], ["CSAT have send an enemy gunship, destroy it before it reaches Delta and Ghost 2-1!", "Destroy incoming gunship!", "marker"], qrfAirSupport01, "ASSIGNED", 1, true, "destroy", true] call BIS_fnc_taskCreate; 
	
	waitUntil { !alive qrfAirSupport01 }; 
	sleep 2; 
		
		["T09", "SUCCEEDED", true] call BIS_fnc_taskSetState;
		line1 = ["Frost", "She's going down!", coPilot, "\dubbing\MF\MF10.ogg", 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 5;
		
		
		// Wait till destroyed: 
		line1 = ["You", "Longbow, this is Hunter 1-1. Enemy gunship is Tango Down. Oscar Mike to assist Delta. How copy, over?", player, 4, 1, "3D"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 0.5; 

		line1 = ["Longbow", "Solid copy on all. Good work. Longbow out.", officerBrief, "\dubbing\RL\RL17.ogg", 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 0.5; 
	
	// new task if needed: 