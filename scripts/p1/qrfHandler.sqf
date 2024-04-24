// Full script for anything related with the QRF: 

////////////////////////////////////////////////////////////
// QRF activation: 
////////////////////////////////////////////////////////////
[] spawn 
{

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


// rremove the nearest teleporter from the array
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

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////



