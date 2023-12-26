// Scene where Delta enters Helo: 

// Delta: Boarding helo... (or something along that) 



// if AI gets stuck again do waitUntiL, which makes them teleport in and makes the vehicle locked after 80 seconds
sleep 60; 

if (!triggerActivated Task08_END01) then
{
	{_x moveInCargo evacHELO} foreach units group HO_SquadLead;	
	{_x assignAsCargo evacHELO} foreach units group HO_SquadLead;
	evacHELO AllowCrewInImmobile true; 
	evacHELO setVehicleLock "LOCKED"; 
}
else
{
	nil;			// will never get executed
};




Version #27

- fixed a error
- small typo fixes
- some timing changes 
- fixed 



