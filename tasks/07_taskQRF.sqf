////////////////////////////////////////////////////////////////////////////
/////// Task #07: 
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

	[] spawn 
{

	sleep (20+ random 10); 

	// Defining everything: 
	private _qrfTPpos01 = getPos pos1_veh1;
	private _qrfTPpos02 = getPos pos2_veh1;
	private _qrfTPpos03 = getPos pos3_veh1;
	private _playerPos = getPos player;

		// Array creation: 
		private _qrfArrayPos = [_qrfTPpos01, _qrfTPpos02, _qrfTPpos03];

		// Finding player distance: 
		private _distances = _qrfArrayPos apply { _playerPos distance _x };

		private _minDistance = _distances select 0;
		private _nearestIndex = 0;

				{
					if (_x < _minDistance) then {
					_minDistance = _x;
					_nearestIndex = _forEachIndex;
												};
				} forEach _distances;


		// remove the nearest teleporter from the array
		_qrfArrayPos deleteAt _nearestIndex;

	// Randomly select One of the remaining teleporters
	private _selectedTeleport = selectRandom _qrfArrayPos;


	if (_selectedTeleport isEqualTo _qrfTPpos01) then {
		qrfVeh01 setPos (getPos pos1_veh1); qrfVeh02 setPos (getPos pos1_veh2); qrfVeh03 setPos (getPos pos1_veh3); 
		qrfVeh01 setDir (getDir pos1_veh1); qrfVeh02 setDir (getDir pos1_veh1); qrfVeh03 setDir (getDir pos1_veh1);  
	} else {

		if (_selectedTeleport isEqualTo _qrfTPpos02) then {
			qrfVeh01 setPos (getPos pos2_veh1); qrfVeh02 setPos (getPos pos2_veh2); qrfVeh03 setPos (getPos pos2_veh3); 
			qrfVeh01 setDir (getDir pos2_veh1); qrfVeh02 setDir (getDir pos2_veh2); qrfVeh03 setDir (getDir pos2_veh2);  
		} else {
	
			if (_selectedTeleport isEqualTo _qrfTPpos03) then {
				qrfVeh01 setPos (getPos pos3_veh1); qrfVeh02 setPos (getPos pos3_veh2); qrfVeh03 setPos (getPos pos3_veh3); 
				qrfVeh01 setDir (getDir pos3_veh1); qrfVeh02 setDir (getDir pos3_veh2); qrfVeh03 setDir (getDir pos3_veh3); 
			};
		};
	};
	
	// Delay then move way point for veh: 
	sleep 3; 
	
	// Waypoints: 
	qrfVeh01D doMove (position natoDELTA);
	qrfVeh02D doMove (position natoDELTA);
	qrfVeh03D doMove (position natoDELTA);
	
	// Enable Veh simulations: 
	qrfVeh01 enableSimulation true; 
	qrfVeh02 enableSimulation true; 
	qrfVeh03 enableSimulation true; 
	
	// For Units groups Simulation: 
	{ _x enableSimulation true; } forEach units qrfGroup01;
	{ _x enableSimulation true; } forEach units qrfGroup02;
	{ _x enableSimulation true; } forEach units qrfGroup03;
	{ _x enableSimulation true; } forEach units qrfGroup04;
	
	// Delay Random: 
	sleep (7 + random 8);
	
	// QRF Dubbing activation: 
	missionNamespace setVariable ["qrfInboundAO", true];

}; 

waitUntil { missionNamespace getVariable ["qrfInboundAO", true] };
	





[] spawn 
{

	// Starting Delay: 
	sleep 1;
		
		
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
		sleep 1; 
	
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
		 
	
		////////////////////////////////////////////////
		// Second stage; after QRF has been destroyed: 
		
		// Damage and Task handeling: 
		[] spawn 
		
		T07sub01 setSimpleTaskTarget [qrfVeh01, true];
		T07sub02 setSimpleTaskTarget [qrfVeh02, true];
		T07sub03 setSimpleTaskTarget [qrfVeh03, true];
		T07sub04 setSimpleTaskTarget [qrfVeh03, true];
		
		//////////////////////////////
		//////////////////////////////
		{
		waitUntil { (!alive qrfVeh01) || (damage qrfVeh01 > 0.6) }; // Stider
			["T07sub01", "SUCCEEDED", true] call BIS_fnc_taskSetState;
			qrfVeh01 setDamage 1; 
			{ _x setDamage 1; } forEach units qrfGroup01;
		};
		//////////////////////////////
		[] spawn 
		{
		waitUntil { (!alive qrfVeh02) || (damage qrfVeh02 > 0.6) }; // APC
			["T07sub02", "SUCCEEDED", true] call BIS_fnc_taskSetState;
			qrfVeh02 setDamage 1; 
			{ _x setDamage 1; } forEach units qrfGroup02;
		};
		//////////////////////////////	
		[] spawn 
		{
		waitUntil { (!alive qrfVeh03) || (damage qrfVeh03 > 0.6) }; // Transport
			["T07sub03", "SUCCEEDED", true] call BIS_fnc_taskSetState;
			qrfVeh03 setDamage 1; 
			{ _x setDamage 1; } forEach units qrfGroup03;
		};
		//////////////////////////////
		[] spawn 
		{
		waitUntil {  {alive _x} count (units qrfGroup04)) < 2}; // Transport Units
			{ _x setDamage 1; } forEach units qrfGroup04;
		};
		//////////////////////////////
		//////////////////////////////
		
			// Finish Tasks all:
			waitUntil { !alive qrfVeh01 && !alive qrfVeh02 && !alive qrfVeh03 && {alive _x} count (units qrfGroup04)) < 2};
			sleep 1; 
			
		
			missionNamespace setVariable ["Task07_Done", true];
			// finish task: 
			["T07", "SUCCEEDED", true] call BIS_fnc_taskSetState;
				sleep 2; 
		
				// Line
				line1 = ["You", "Hunter 1-1 to Longbow. Enemy reinforcements have been eliminated - returning to Delta. How copy, over?", player, 4, 3, "3D"];
				[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
				sleep 0.5; 
		
				// Line
				line1 = ["Longbow","Copy on all. Good work out there. Continue to hold position at Delta. Out.", officerBrief, "\dubbing\RL\RL27.ogg", 1, "UI"];
				[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		////////////////////////////////////////////////
 
}; 

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
