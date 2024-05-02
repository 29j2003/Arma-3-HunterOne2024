// AAF AA handler, that teleports the units to their location once activated: 


_teleportPosAA01 = getPos AA01; 
_teleportPosAA02 = getPos AA01; 
_teleportPosAA03 = getPos AA01; 

_teleportArray = [_teleport1AA, _teleport2AA, _teleport3AA];
_selectedTeleport = selectRandom _teleportArray; 

_dir = getDir (nearestObject [_selectedTeleport, ""]);
_offsetUnit = 2; 

// Teleport for the units: 
{
    private _unitPos = _selectedTeleport vectorAdd [(_forEachIndex * _offsetUnit), (_forEachIndex * _offsetUnit), 0];
    _x setPos _unitPos;
    _x setDir _dir;
} forEach units csatAA;

// Teleport for the quadbike: 
csatBike setPos (_selectedTeleport vectorAdd [_offsetUnit * (count units csatAA), _offsetUnit * (count units csatAA), 0]);
csatBike setDir _dir;