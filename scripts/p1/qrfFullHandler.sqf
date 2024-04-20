// Anything related to the incoming QRF: 


[] spawn 
{

	// Starting Delay: 
	sleep 30; 
		
		// Enable Task: 
		missionNamespace setVariable ["Task06_Go", true];

		// Line
		line1 = ["Longbow", "Hunter 1-1, this is Longbow. Recon have reported an enemy convoy moving towards Delta's AO, over.", officerBrief, "\dubbing\RL\RL25.ogg", 1.5, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 0.5; 

		// Line
		line1 = ["Longbow", "Your orders are to intercept and neutralize the convoy. Continue to defend Delta. How copy, over?", officerBrief, "\dubbing\RL\RL26.ogg", 1.5, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 0.5;

		// Line
		line1 = ["You", "Solid copy, Longbow. Hunter 1-1 is on intercept course. Out.", player, 4, 1, "3D"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		
		 
	
		////////////////////////////////////////////////
		// Second stage; after QRF has been destroyed: 
		waitUntil { condition here: };
		sleep 2; 
		
		// Line
		line1 = ["You", "Hunter 1-1 to Longbow. Enemy reinforcements have been eliminated - returning to Delta. Over. How copy, over?", player, 4, 1, "3D"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 6; 
		
		// Line
		line1 = ["Longbow","Copy on all. Good work out there. Continue to hold position at Delta. Out.", officerBrief, "\va\RL\RL27.ogg", 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		////////////////////////////////////////////////
}; 