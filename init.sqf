// Init.sqf stat executes right at the beginning: 


missionNamespace setVariable ["Task01_Done", false];
missionNamespace setVariable ["Task02_Done", false];
missionNamespace setVariable ["Task03_Done", false];
missionNamespace setVariable ["Task04_Done", false];
missionNamespace setVariable ["Task05_Done", false];
missionNamespace setVariable ["Task06_Done", false];
missionNamespace setVariable ["Task07_Done", false];
missionNamespace setVariable ["Task08_Done", false];
missionNamespace setVariable ["Task09_Done", false];
missionNamespace setVariable ["Task10_Done", false];
missionNamespace getVariable ["Task11_Done", false];
missionNamespace getVariable ["Task12_Done", false];

missionNamespace getVariable ["Task12_Go", false];

// execute Intro script: 
execVM "scripts\introPlayer.sqf"; 

// executes first task: 
execVM "tasks\01_taskBrief.sqf"; 

// execute Ambient stuff:
execVM "scripts\ambientStuff.sqf"; 
execVM 'scripts\paSystem.sqf'; 

// Hide Layer: 
{
    _x enableSimulation false;
    _x hideObject true;
} forEach (getMissionLayerEntities "SupportObjective" select 0);


// Change Animation for the officer: 
officerBrief switchMove "Acts_Kore_IdleNoWeapon_loop"; 