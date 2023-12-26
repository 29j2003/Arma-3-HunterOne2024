// scene where Delta boards helicopter and gets out of AO

// Ghost 2-1: All in - returining back to base. Ghost 2-1 Out. 
// Thunder: Copy, medical personal is on standby. 



// if AI gets stuck again waitUntiL, which makes them teleport in and makes the vehicle locked after 80 seconds

waitUntiL {sleep 80;}



if (taskActivated Task08_END01) then { {_x moveInAny evacHELO} foreach units group HO_SquadLead;
{_x moveInCargo evacHELO} foreach units group HO_SquadLead;
{_x assignAsCargo evacHELO} foreach units group HO_SquadLead;

evacHELO AllowCrewInImmobile true; 
evacHELO setVehicleLock "LOCKED" } else { nil };

