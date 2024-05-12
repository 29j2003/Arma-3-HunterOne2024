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
		
		playMusic "LeadTrack05_F_Tank"; 
		
		line1 = ["You", "You heard that man Frost, let’s give ‘em a show!", player, 3, 2, "3D"];
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
	
		vehD01 setDamage 1; 
		
		//////
		// Delta Line 02: 
		waitUntil { ({alive _x} count (units natoSQUAD)) < 11 }; // when 80 percent is only alive 
		
			// 
			[] spawn 
			{ 
				// selectRandom between 1 and 2
				_deltaLine = selectRandom [1,2]; 
			
				// play line 
				if (_deltaLine isEqualTo 1) then 
					{line1 = ["Delta", "We’re sustaining losses!", HO_SquadLead, "\dubbing\DL\DL02a.ogg", 1, "UI"]; [[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;} 
						else 
							{line1 = ["Delta", "We’re taking heavy fire!”", HO_SquadLead, "\dubbing\DL\DL02b.ogg", 1, "UI"]; [[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;}; 
			}; 
		//////
		
		//////
		// Delta Line 03: 
		waitUntil { ({alive _x} count (units natoSQUAD)) < 8 }; 
		
			// 
			[] spawn 
			{ 
				// selectRandom between 1 and 2
				_deltaLine = selectRandom [1,2]; 
			
				// play line 
				if (_deltaLine isEqualTo 1) then 
					{line1 = ["Delta", "We’re being decimated out here!", HO_SquadLead, "\dubbing\DL\DL03a.ogg", 1, "UI"]; [[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;} 
						else 
							{line1 = ["Delta", "We’re losing men left and right!", HO_SquadLead, "\dubbing\DL\DL03b.ogg", 1, "UI"]; [[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;}; 
			}; 
		//////		
		
		//////
		// Delta Line 04: 
		waitUntil { ({alive _x} count (units natoSQUAD)) < 6 }; 
		
			// 
			[] spawn 
			{ 
				// selectRandom between 1 and 2
				_deltaLine = selectRandom [1,2]; 
			
				// play line 
				if (_deltaLine isEqualTo 1) then 
					{line1 = ["Delta", "We’re at our breaking point!", HO_SquadLead, "\dubbing\DL\DL04a.ogg", 1, "UI"]; [[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;} 
						else 
							{line1 = ["Delta", "We’re about to collapse!", HO_SquadLead, "\dubbing\DL\DL04b.ogg", 1, "UI"]; [[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;}; 
			}; 
		//////
		
		//////
		// Delta Line 05: 
		waitUntil { ({alive _x} count (units natoSQUAD)) < 4 }; 
		
			// 
			[] spawn 
			{ 
				// selectRandom between 1 and 2
				_deltaLine = selectRandom [1,2]; 
			
				// play line 
				if (_deltaLine isEqualTo 1) then 
					{line1 = ["Delta", "Immediate fire-support needed, or we’re done for!", HO_SquadLead, "\dubbing\DL\DL05a.ogg", 1, "UI"]; [[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;} 
						else 
							{line1 = ["Delta", "We need backup now, or we’re gone!", HO_SquadLead, "\dubbing\DL\DL05b.ogg", 1, "UI"]; [[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;}; 
			}; 
		//////
	
		vehD02 setDamage 1; 
	
			//////
		// Delta Line 06: 
		waitUntil { ({alive _x} count (units natoSQUAD)) < 2 }; 
		
			// 
			[] spawn 
			{ 
				// selectRandom between 1 and 2
				_deltaLine = selectRandom [1,2]; 
			
				// play line 
				if (_deltaLine isEqualTo 1) then 
					{line1 = ["Delta", "They’ve broken through, multiple casualties - we’re goi—", HO_SquadLead, "\dubbing\DL\DL06a.ogg", 1, "UI"]; [[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;} 
						else 
							{line1 = ["Delta", "They’ve breached our lines, we’ve got wounded - we’re falli—", HO_SquadLead, "\dubbing\DL\DL06b.ogg", 1, "UI"]; [[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;}; 
			}; 
		//////
		sleep 2; 
		
		line1 = ["Longbow", "Longbow to Delta, report in!", officerBrief, "\dubbing\RL\RL18.ogg", 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 0.5;

		line1 = ["Longbow", "Delta do you read me!", officerBrief, "\dubbing\RL\RL19.ogg", 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 0.5;

		line1 = ["Longbow", "Longbow to Hunter 1-1, contact to Delta has been lost.", officerBrief, "\dubbing\RL\RL20.ogg", 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 3; 

		["DeltaDead", false, true, true, false] call BIS_fnc_endMission; 
		}; 

[] spawn
{
		
		{_x hideObject false; _x enableSimulation true} foreach units csatTEAM01;
		{_x hideObject false; _x enableSimulation true} foreach units csatTEAM02;
		{_x hideObject false; _x enableSimulation true} foreach units csatTEAM03;
		{_x hideObject false; _x enableSimulation true} foreach units csatTEAM04;
		{_x hideObject false; _x enableSimulation true} foreach units csatTEAMapc;
		csatapc hideObject false; csatapc enableSimulation true; 

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
			
			
			
			

			
			

		