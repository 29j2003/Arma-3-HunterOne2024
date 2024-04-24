// Everything related to the CSAT forces in the first part that are attacking Delta: 

////////////////////////////////////////////////////////////
// Activating CSAT forces: 
////////////////////////////////////////////////////////////

[] spawn
{
	// Variable: 
	missionNamespace setVariable ["csatTeamsGo", false];

		waitUntil {missionNamespace getVariable ["csatTeamsGo", true];}; 
		
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
		missionNamespace setVariable ["", true];
		
		// Activate GhostHandler: 
		execVM "scripts\p1\ghostFullHandler.sqf"; 
		
			// Delay: 
			sleep 8; 
			

	
}; 

