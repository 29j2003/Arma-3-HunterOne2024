// Function to create and animate a picture

titleCut ["", "BLACK FADED", 999];
enableEnvironment false;
playMusic "LeadTrack03_F_Tacops";

// Text 
sleep 1; 
["AAF forces have ambushed NATO peacekeepers on Stratis.",-1,-1,4,1,0,789] spawn BIS_fnc_dynamicText;
sleep 6; 

// First Picture:
createAnimatedPicture = {
    params ["_imageName", "_fadeDuration", "_zoomStart", "_zoomOutDuration", "_fadeOutDuration", "_pauseBeforeFadeOut", "_soundEffect"];

    // Create the picture control
    _ctrl = (findDisplay 46) ctrlCreate ["RscPicture", -1];
    _ctrl ctrlSetPosition [safezoneX + (1 - _zoomStart) * safezoneW/2, safezoneY + (1 - _zoomStart) * safeZoneH/2, _zoomStart * safeZoneW, _zoomStart * safeZoneH];
    _ctrl ctrlSetText _imageName;

    // Sets the fade to 0 (so it can actually fade in later) 
    _ctrl ctrlSetFade 1;
    _ctrl ctrlCommit 0;

    // Fade in effect
    _ctrl ctrlSetFade 0;
    _ctrl ctrlCommit _fadeDuration;


    // Delay before playing the sound
    sleep 0.5;

    // Effect for Sound that should play during the picture
    playsound3D [_soundEffect, player, false, getPosASL player, 1.0];

    // Zoom out effect
    for [{_zoom = _zoomStart}, {_zoom >= 0}, {_zoom = _zoom - 0.01}] do {
        _ctrl ctrlSetPosition [safezoneX + (1 - _zoom) * safezoneW/2, safezoneY + (1 - _zoom) * safeZoneH/2, _zoom * safeZoneW, _zoom * safeZoneH];
        _ctrl ctrlCommit _zoomOutDuration;
        sleep 0.03; // Adjust the duration of each iteration (0.03 seconds in this example)
    };
	
	// Short pause before fade out
    sleep _pauseBeforeFadeOut;

    // Fade out effect
    _ctrl ctrlSetFade 1;
    _ctrl ctrlCommit _fadeOutDuration;
    sleep _fadeOutDuration; // Adjust the duration of the fade-out effect

    // Delete the control
    ctrlDelete _ctrl;
};

["img\H01.jpg", 5, 1.5, 40, 5, 4, "a3\Sounds_F_Tacops\SFX\Missions\c03_1.wss"] call createAnimatedPicture;
// Example usage

sleep 1; 
["NATO retalitated.",-1,-1,4,1,0,789] spawn BIS_fnc_dynamicText;
sleep 6; 

["img\H02.jpg", 5, 1.5, 40, 5, 4, getMissionPath "sfx\firefightAAF01.ogg"] call createAnimatedPicture;

sleep 1; 
["NATO continues advancing, while CSAT and AAF forces are crumbeling.",-1,-1,4,1,0,789] spawn BIS_fnc_dynamicText; // altes: While end seems near after capturing the main airfield, fighting continues.
sleep 6; 

["img\H03.jpg", 5, 1.5, 40, 5, 4, getMissionPath ""] call createAnimatedPicture; // Bild von CSAT und AAF forces am flüchten? 

sleep 1; 
["But the fight hasn't been won yet.",-1,-1,4,1,0,789] spawn BIS_fnc_dynamicText; 
sleep 6; 

["img\H04.jpg", 5, 1.5, 40, 5, 4, getMissionPath ""] call createAnimatedPicture; // Bild von Hunter One-One? ODER ODER: Bild von NATO DELTA PLATOON/SEKTION/SQUAD was umzingelt ist ne'? 

sleep 1; 

// hier einfach dann Logo?
execVM "scripts\sceneINTRO.sqf"; 