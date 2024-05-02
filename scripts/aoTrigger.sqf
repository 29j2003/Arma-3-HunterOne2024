// This script places two triggers down for the player: 
///////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////

// Triggers for Area Warning and Area Leaving: 
[] spawn 
{
// Variable fallback: 
missionNamespace setVariable ["areaTriggerDone", false];

// Warning Area Trigger that will activate once the player leaves the AI by 100 meters:
_trgWarning = createTrigger ["EmptyDetector", getPos officerBrief];
_trgWarning attachTo [officerBrief, [0, 0, 0]];
_trgWarning setTriggerArea [10000, 10000, 0, false];
_trgWarning setTriggerActivation ["ANYPLAYER", "PRESENT", true];
_trgWarning setTriggerStatements ["!(player in thisList)", "line1 = ['Longbow', 'Hunter 1-1, this is Longbow. It seems your off course – return to the AO immediately. Over.', officerBrief, '\dubbing\RL\RL38.ogg', 1, 'UI'];
								 [[line1], 'BLUFOR', false, false] call HO_fnc_simpleConv;", ""];



// Ending Trigger that will activate once the player leaves the AI by 175 meters:
_trgAreaLeft = createTrigger ["EmptyDetector", getPos officerBrief];
_trgAreaLeft attachTo [officerBrief, [0, 0, 0]];
_trgAreaLeft setTriggerArea [12000, 12000, 0, false];
_trgAreaLeft setTriggerActivation ["ANYPLAYER", "PRESENT", true];
_trgAreaLeft setTriggerStatements ["!(player in thisList)", "['HunterDeserted', false, true, true, false] call BIS_fnc_endMission;", ""];



// WaitUntil that will delete both triggers when not needed anymore: 
waitUntil { missionNamespace getVariable ["areaTriggerDone", true] };

// Deleting triggers: 
deleteVehicle _trgWarning; 
deleteVehicle _trgAreaLeft; 
}; 
