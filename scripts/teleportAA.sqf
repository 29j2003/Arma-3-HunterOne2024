// Randomiser Teleporter for the CSAT AA group, including their bike 
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
