// PA System playback, picks random line and plays it:
// playSound ""; 

missionNamespace setVariable ["paSystemOn", false];

	// playSound3D [getMissionPath "mySound.ogg", player]; // to play a mission directory sound

	// Array:
    _line01 = {playSound3D [getMissionPath "dubbing\PA\PA03.ogg", paSpeaker01, false, [0,0,0], 2, 1, 100] && playSound3D [getMissionPath "dubbing\PA\PA03.ogg", paSpeaker02, false, [0,0,0], 2, 1, 100]}; 
    _line02 = {playSound3D [getMissionPath "dubbing\PA\PA04.ogg", paSpeaker01, false, [0,0,0], 2, 1, 100] && playSound3D [getMissionPath "dubbing\PA\PA04.ogg", paSpeaker02, false, [0,0,0], 2, 1, 100]};
    _line03 = {playSound3D [getMissionPath "dubbing\PA\PA05.ogg", paSpeaker01, false, [0,0,0], 2, 1, 100] && playSound3D [getMissionPath "dubbing\PA\PA05.ogg", paSpeaker02, false, [0,0,0], 2, 1, 100]}; 
    _line04 = {playSound3D [getMissionPath "dubbing\PA\PA06.ogg", paSpeaker01, false, [0,0,0], 2, 1, 100] && playSound3D [getMissionPath "dubbing\PA\PA06.ogg", paSpeaker02, false, [0,0,0], 2, 1, 100]};
    _line05 = {playSound3D [getMissionPath "dubbing\PA\PA07.ogg", paSpeaker01, false, [0,0,0], 2, 1, 100] && playSound3D [getMissionPath "dubbing\PA\PA07.ogg", paSpeaker02, false, [0,0,0], 2, 1, 100]};
	_line06 = {playSound3D [getMissionPath "dubbing\PA\PA08.ogg", paSpeaker01, false, [0,0,0], 2, 1, 100] && playSound3D [getMissionPath "dubbing\PA\PA08.ogg", paSpeaker02, false, [0,0,0], 2, 1, 100]}; 
    _line07 = {playSound3D [getMissionPath "dubbing\PA\PA09.ogg", paSpeaker01, false, [0,0,0], 2, 1, 100] && playSound3D [getMissionPath "dubbing\PA\PA09.ogg", paSpeaker02, false, [0,0,0], 2, 1, 100]};
    _line08 = {playSound3D [getMissionPath "dubbing\PA\PA10.ogg", paSpeaker01, false, [0,0,0], 2, 1, 100] && playSound3D [getMissionPath "dubbing\PA\PA10.ogg", paSpeaker02, false, [0,0,0], 2, 1, 100]};


    _lineArray = [_line01, _line02, _line03, _line04, _line05, _line06, _line07, _line08];

waitUntil {missionNamespace getVariable ["paSystemOn", false];};

while { count _lineArray > 0 } do
{

    _usedLine = selectRandom _lineArray; // selectRandom to pick a random line
	_usedLine; // hint to display (mainly for debugging and testing) 
	
    _usedLineIndex = _lineArray find _usedLine;  // Find the index of _usedLine


    _lineArray deleteAt _usedLineIndex;  // Delete the element at the found index

    sleep (5 + random 15); 
};