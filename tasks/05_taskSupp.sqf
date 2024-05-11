////////////////////////////////////////////////////////////////////////////
/////// Task #05: 
////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////
// Task Spawn: 
////////////////////////////////////////////////////////////////

		missionNamespace setVariable ["Task05_Done", false];

[] spawn 
{	
		line1 = ["You", "Longbow, this is Hunter 1-1. We're Oscar Mike to the AO, over.", player, 4, 2, "3D"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 0.5; 

		line1 = ["Longbow", "Understood! Patching you through to Delta, out!", officerBrief, "\dubbing\RL\RL17.ogg", 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 3; 
		
		// Delta to Hunter, CSAT forces have been marked with red smoke - we need fire support now! 
		line1 = ["Delta", "Hunter 1-1, this is Delta - Red smoke marks CSAT forces. Requesting immediate fire support, over!", HO_SquadLead, "\dubbing\DL\DL01.ogg", 2, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 0.5;

		line1 = ["You", "Solid copy, Delta. Fire support inbound. Stay low, out.", player, 4, 2, "3D"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 0.5;
		
				/////////////////////
				[west, ["T05", "MainTask"], ["Support Delta at all cost!", "Support Delta!", "marker"], HO_SquadLead, "ASSIGNED", 1, true, "defend", true] call BIS_fnc_taskCreate; 
				/////////////////////
				
		sleep 2; 
		
		line1 = ["You", "You heard that man Frost, let’s give ‘em a show!", player, 4, 2, "3D"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 0.5;
		
		line1 = ["Frost", "Copy, engaging!", coPilot, "\dubbing\MF\MF07.ogg", 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 0.5; 
}; 


////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////
// Task script:  
////////////////////////////////////////////////////////////////

[] spawn
{
		
		{_x hideObject false; _x enableSimulation true} foreach units csatTEAM01;
		{_x hideObject false; _x enableSimulation true} foreach units csatTEAM02;
		{_x hideObject false; _x enableSimulation true} foreach units csatTEAM03;
		{_x hideObject false; _x enableSimulation true} foreach units csatTEAM04;
		{_x hideObject false; _x enableSimulation true} foreach units csatTEAMapc;

	// Teleporting AA unit: 
	private _teleport1AA = getPos AA01; 
	private _teleport2AA = getPos AA02;
	private _teleport3AA = getPos AA03;

	private _teleportPositions = [_teleport1AA, _teleport2AA, _teleport3AA];

	private _selectedTeleport = selectRandom _teleportPositions;

	private _dir = getDir (nearestObject [_selectedTeleport, ""]);

	private _offsetUnit = 2; 

	{
		private _unitPos = _selectedTeleport vectorAdd [(_forEachIndex * _offsetUnit), (_forEachIndex * _offsetUnit), 0];
		_x setPos _unitPos;
		_x setDir _dir;
	} forEach units csatAA;

	csatBike setPos (_selectedTeleport vectorAdd [_offsetUnit * (count units csatAA), _offsetUnit * (count units csatAA), 0]);
	csatBike setDir _dir;
}; 

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

[] spawn
{
	// Condtion that activates once enemy CSAT teams are down to a certain point:
	waitUntil 	{
	({alive _x} count (units csatTEAM01)) < 2 &&
	({alive _x} count (units csatTEAM02)) < 2 &&  
	({alive _x} count (units csatTEAM03)) < 2 &&
	({alive _x} count (units csatTEAMapc)) < 1 && 
	({alive _x} count (units csatTEAM04)) < 2
				}; 		
	
	// Kill Off remaining units: 
	{ _x setDamage 1 } forEach units csatTEAM01; 
	{ _x setDamage 1 } forEach units csatTEAM02; 
	{ _x setDamage 1 } forEach units csatTEAM03; 
	{ _x setDamage 1 } forEach units csatTEAM04; 
	{ _x setDamage 1 } forEach units csatTEAMapc; 
	
	// Delay
	sleep 2; 
	
	// Finish Task: 
	missionNamespace setVariable ["Task05_Done", true];
	
		// Delay
		sleep 2;
		
		// Convo. between Player and Officer (Ghost 2-1 starting flight) 
		//missionNamespace setVariable ["", true];
		
		
			// Delay: 
			sleep 8; 
			

	
}; 



			// needed condition to finish it: 
			waitUntil { missionNamespace getVariable ["Task05_Done", true] };
			
			// finish task: 
			["T05", "SUCCEEDED", true] call BIS_fnc_taskSetState;
			
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////			
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			// start new tasks: 
			sleep 1; 
					execVM "tasks\06_taskWait.sqf"; 
					execVM "tasks\07_taskQRF.sqf"; 
			