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
		line1 = ["Delta", "Hunter 1-1, this is Delta - Red smoke marks CSAT forces. Requesting immediate fire support, over!", HO_SquadLead, 4, 2, "UI"];
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

		line1 = ["Delta", "We’re sustaining losses!", HO_SquadLead, 3, 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;

	waitUntil {  ({alive _x} count (units natoSQUAD)) < 7  }; // 60 percent

		line1 = ["Delta", "We’re being decimated out here!", HO_SquadLead, 3, 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;

	waitUntil {  ({alive _x} count (units natoSQUAD)) < 5  }; // 40 percent

		line1 = ["Delta", "We’re at our breaking point!", HO_SquadLead, 3, 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;

	waitUntil {  ({alive _x} count (units natoSQUAD)) < 3  }; // 20 percent
		
// Vehicle SetDamage: 	
vehD02 setDamage 1; 

		line1 = ["Delta", "Immediate fire-support needed, or we’re done for!", HO_SquadLead, 4, 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;

	waitUntil {  ({alive _x} count (units natoSQUAD)) == 1  }; // = 1 remaining (SL stays alive for Voice Line, then gets killed of if needed) 

		line1 = ["Delta", "They’ve broken through, multiple casualties - we’re goi—", HO_SquadLead, 2, 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 0.5;

		line1 = ["Longbow", "Longbow to Delta, report in!", officerBrief, "\dubbing\RL\RL18.ogg", 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 0.5;

		line1 = ["Longbow", "Delta do you read me!", officerBrief, "\dubbing\RL\RL19.ogg", 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 0.5;

		line1 = ["Longbow", "Longbow to Hunter 1-1, contact to Delta has been lost.", officerBrief, "\vadubbingRL\RL20.ogg", 1, "UI"];
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

	if (!triggerActivated Task08_END01) then
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

}; 



//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////