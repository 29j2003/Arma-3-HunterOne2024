// Scene where Delta enters Helo: 

// Delta: Boarding helo... (or something along that) 



// if AI gets stuck again do waitUntiL, which makes them teleport in and makes the vehicle locked after 80 seconds
waitUntiL {sleep 80 && !taskActivated Task08_END01}; 



if (!taskActivated Task08_END01) then { 
{_x moveInCargo evacHELO} foreach units group HO_SquadLead,
{_x assignAsCargo evacHELO} foreach units group HO_SquadLead,
evacHELO AllowCrewInImmobile true, 
evacHELO setVehicleLock "LOCKED" }; 
else { nil };





