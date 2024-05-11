/* 
		line1 = ["Frost", "Copy, engaging!", coPilot, "\dubbing\MF\MF07.ogg", 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 0.5; 
*/

// Any checks related to the co pilot extra voice lines: 


//////////////////////////////////////////
// When the main rotor/helicopter is going down: 
//////////////////////////////////////////
[] spawn 
{ 

}; 
//////////////////////////////////////////
//////////////////////////////////////////
//////////////////////////////////////////


//////////////////////////////////////////
// When shooting at friendlies
//////////////////////////////////////////
[] spawn 
{ 

}; 
//////////////////////////////////////////
//////////////////////////////////////////
//////////////////////////////////////////


//////////////////////////////////////////
// Out of Ammo: ATGM
//////////////////////////////////////////
[] spawn 
{ 
	while { true } do 
		
		{ 
			// check if ammo type is empty: 
			waitUntil { (playerVehicle ammo "missiles_SCALPEL"  < 1) }; 
			sleep 0.5; 
			
				// Display a hint (later a voice message) 
				line1 = ["Frost", "We’re out of ATGMs!", coPilot, "\dubbing\MF\MF16.ogg", 1, "UI"];
				[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
				sleep 0.5; 

			// Check if ammo type has been re-armed: 
			waitUntil { (playerVehicle ammo "missiles_SCALPEL"  > 0) }; 
			sleep 0.5; 
			
				// Display a hint (later a voice message)
				//hint "ATGM ReArmed"; 
			
			// Short Delay till re activation of the loop: 
			sleep 5; 
		
		}; 
}; 
//////////////////////////////////////////
//////////////////////////////////////////
//////////////////////////////////////////


//////////////////////////////////////////
// Out of Ammo: DAGR
//////////////////////////////////////////
[] spawn 
{ 
	while { true } do 
		
		{ 
			// check if ammo type is empty: 
			waitUntil { (playerVehicle ammo "missiles_DAGR"  < 1) }; 
			sleep 0.5; 
			
				// Display a hint (later a voice message) 
				line1 = ["Frost", "That was our last DAGR!", coPilot, "\dubbing\MF\MF17.ogg", 1, "UI"];
				[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
				sleep 0.5; 

			// Check if ammo type has been re-armed: 
			waitUntil { (playerVehicle ammo "missiles_DAGR"  > 0) }; 
			sleep 0.5; 
			
				// Display a hint (later a voice message)
				//hint "DAGR ReArmed"; 
			
			// Short Delay till re activation of the loop: 
			sleep 5; 
		
		}; 
}; 
//////////////////////////////////////////
//////////////////////////////////////////
//////////////////////////////////////////


//////////////////////////////////////////
// Out of Ammo: ASRAAMS
//////////////////////////////////////////
[] spawn 
{ 
	while { true } do 
		
		{ 
			// check if ammo type is empty: 
			waitUntil { (playerVehicle ammo "missiles_ASRAAM"  < 1) }; 
			sleep 0.5; 
			
				// Display a hint (later a voice message) 
				line1 = ["Frost", "We got no more ASRAAMS!", coPilot, "\dubbing\MF\MF18.ogg", 1, "UI"];
				[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
				sleep 0.5; 

			// Check if ammo type has been re-armed: 
			waitUntil { (playerVehicle ammo "missiles_ASRAAM"  > 0) }; 
			sleep 0.5; 
			
				// Display a hint (later a voice message)
				//hint "ReArmed"; 
			
			// Short Delay till re activation of the loop: 
			sleep 5; 
		
		}; 
}; 
//////////////////////////////////////////
//////////////////////////////////////////
//////////////////////////////////////////


//////////////////////////////////////////
// Out of Ammo: Cannon
//////////////////////////////////////////
[] spawn 
{ 
	while { true } do 
		
		{ 
			// check if ammo type is empty: 
			waitUntil { (playerVehicle ammo "gatling_20mm"  < 1) }; 
			sleep 0.5; 
			
				// Display a hint (later a voice message) 
				line1 = ["Frost", "20mil is empty!", coPilot, "\dubbing\MF\MF19.ogg", 1, "UI"];
				[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
				sleep 0.5; 

			// Check if ammo type has been re-armed: 
			waitUntil { (playerVehicle ammo "gatling_20mm"  > 0) }; 
			sleep 0.5; 
			
				// Display a hint (later a voice message)
				//hint "Cannon ReArmed"; 
			
			// Short Delay till re activation of the loop: 
			sleep 5; 
		
		}; 
}; 
//////////////////////////////////////////
//////////////////////////////////////////
//////////////////////////////////////////


//////////////////////////////////////////
// Out of Ammo: Full
//////////////////////////////////////////
[] spawn 
{ 

}; 
//////////////////////////////////////////
//////////////////////////////////////////
//////////////////////////////////////////