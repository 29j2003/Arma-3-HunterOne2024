/* A function to resize a PIP window, for example the one that get's created by the LiveFeed. 
	[ [ 0, 0 ], 2 ] call fnc_resizePIP
	https://forums.bohemia.net/forums/topic/182321-increasing-bis_fnc_livefeed-display-size/
	
	created by Larrow 
	modified by 29/P4TCH3R 
*/ 

params ["_dispPos", "_scale"];

_display = uiNamespace getVariable "BIS_fnc_PIP_RscPIP";
_basePos = ctrlPosition ( _display displayCtrl 2300 );
_baseScale = ctrlScale ( _display displayCtrl 2300 );
_scaleDiff = _scale / _baseScale;

{
    _ctrl = _x;
    _pos = ctrlPosition _ctrl;
    _pos resize 2;
    {
        _diff = _x - ( _basePos select _forEachIndex );
        _newpos = ( _dispPos select _forEachIndex ) + ( _diff * _scaleDiff );
        _pos set [ _forEachIndex, _newpos ];
    } forEach _pos;
    _ctrl ctrlSetPosition _pos;
    _ctrl ctrlSetScale _scale;
    _ctrl ctrlCommit 0;
} forEach allControls _display;

