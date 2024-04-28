// Script for anything Delta related that isn't handeld else where already: 


//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////

// Player Enters AO:
[] spawn 
{ 
	missionNamespace setVariable ["deltaAOcall", false];

		// wait until var is active
		waitUntil {missionNamespace getVariable ["deltaAOcall", true];}; 
	
		// Delta to Hunter, CSAT forces have been marked with red smoke - we need fire support now! 
		line1 = ["Delta", "Hunter 1-1, this is Delta - Red smoke marks CSAT forces. Requesting immediate fire support, over!", HO_SquadLead, "\dubbing\DL\DL01.ogg", 2, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 0.5;

		line1 = ["You", "Solid copy, Delta. Fire support inbound. Stay low, out.", player, 4, 2, "3D"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 0.5;

}; 
//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////

// Hit Dubbing: 
[] spawn 
{
// Vehicle SetDamage: 
vehD01 setDamage 1; 
	
	sleep 15; 
	
	waitUntil {  ({alive _x} count (units natoSQUAD)) < 10  }; // 80 percent

		_deltaHit01 = ["\dubbing\DL\DL02a.ogg", "\dubbing\DL\DL02b.ogg"]; 
		_deltaHitUsed 01 selectRandom _deltaHit01;

		line1 = ["Delta", "We’re sustaining losses!", HO_SquadLead, _deltaHitUsed, 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;

	waitUntil {  ({alive _x} count (units natoSQUAD)) < 7  }; // 60 percent

		_deltaHit02 = ["\dubbing\DL\DL03a.ogg", "\dubbing\DL\DL03b.ogg"]; 
		_deltaHit02Used 01 selectRandom _deltaHit02;
		
		line1 = ["Delta", "We’re being decimated out here!", HO_SquadLead, _deltaHit02Used, 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;

	waitUntil {  ({alive _x} count (units natoSQUAD)) < 5  }; // 40 percent
	
		_deltaHit04 = ["\dubbing\DL\DL04a.ogg", "\dubbing\DL\DL04b.ogg"]; 
		_deltaHit04Used 01 selectRandom _deltaHit04;

		line1 = ["Delta", "We’re at our breaking point!", HO_SquadLead, _deltaHit04Used, 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;

	waitUntil {  ({alive _x} count (units natoSQUAD)) < 3  }; // 20 percent
		
// Vehicle SetDamage: 	
vehD02 setDamage 1; 

		_deltaHit05 = ["\dubbing\DL\DL05a.ogg", "\dubbing\DL\DL05b.ogg"]; 
		_deltaHit05Used 01 selectRandom _deltaHit05;

		line1 = ["Delta", "Immediate fire-support needed, or we’re done for!", HO_SquadLead, _deltaHit05Used, 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;

	waitUntil {  ({alive _x} count (units natoSQUAD)) == 1  }; // = 1 remaining (SL stays alive for Voice Line, then gets killed of if needed) 

		_deltaHit06 = ["\dubbing\DL\DL06a.ogg", "\dubbing\DL\DL06b.ogg"]; 
		_deltaHit06Used 01 selectRandom _deltaHit06;

		line1 = ["Delta", "They’ve broken through, multiple casualties - we’re goi—", HO_SquadLead, _deltaHit06Used, 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 0.5;

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

//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////

// When the Evac Triggers: 
[] spawn
{

	missionNamespace setVariable ["deltaBoardHelo", false];

		waitUntil {missionNamespace getVariable ["deltaBoardHelo", true];};
	
	{_x assignAsCargo evacHELO} foreach units group HO_SquadLead;
	sleep 60; 


	if (!(HO_SquadLead in evacHELO)) then
		{
			{_x moveInCargo evacHELO} foreach units group HO_SquadLead;	
			{_x assignAsCargo evacHELO} foreach units group HO_SquadLead;
			evacHELO AllowCrewInImmobile true; 
			evacHELO setVehicleLock "LOCKED"; 
		}
			else
		{
			nil;			// will never get executed
	};
	missionNamespace setVariable ["ghostEvacReturning", true];
	missionNamespace setVariable ["Task08_Done", true]
	ghostReturn = true; 
	evacHELOd enableAI "all"; 
}; 



//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////