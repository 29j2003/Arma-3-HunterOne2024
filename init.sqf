// Init.sqf stat executes right at the beginning: 

// execute Intro script: 
//execVM "scripts\p1\introPlayer.sqf"; 

// executes first task: 
execVM "scripts\p1\01_taskBrief.sqf"; 

// execute Ambient stuff:
execVM "scripts\p1\ambientStuff.sqf"; 
execVM 'scripts\p1\paSystem.sqf'; 

// Hide Layer: 
{
    _x enableSimulation false;
    _x hideObject true;
} forEach (getMissionLayerEntities "SupportObjective" select 0);


// Change Animation for the officer: 
officerBrief switchMove "Acts_Kore_IdleNoWeapon_loop"; 