// PA System playback, picks random line and plays it:
// playSound ''; 
// execVM 'scripts\p1\paSystem.sqf'; 

missionNamespace setVariable ['paSystemOn', false];

waitUntil {missionNamespace getVariable ['paSystemOn', true]};



[] spawn {
    // Define an array of sound filenames (may need some re-adjusting) 
    _soundFiles = [
        "dubbing\PA\PA03.ogg",
        "dubbing\PA\PA04.ogg",
        "dubbing\PA\PA05.ogg",
        "dubbing\PA\PA06.ogg",
        "dubbing\PA\PA07.ogg",
        "dubbing\PA\PA08.ogg",
        "dubbing\PA\PA09.ogg",
        "dubbing\PA\PA10.ogg"
    ];

    while { count _soundFiles > 0 } do {
        // Randomly select a sound filename from the array
        _randomSound = selectRandom _soundFiles;

        // Play the selected sound with playSound3D 
        playSound3D [getMissionPath _randomSound, paSpeaker01, false, getPosASL paSpeaker01, 5, 1, 100];
        playSound3D [getMissionPath _randomSound, paSpeaker02, false, getPosASL paSpeaker02, 5, 1, 100];

        // Remove the selected sound from the array
        _soundFiles = _soundFiles - [_randomSound];

        // Wait for a random duration
        sleep (15 + random 45);
    };
};
