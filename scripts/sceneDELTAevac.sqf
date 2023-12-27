// if AI gets stuck again do waitUntiL, which makes them teleport in and makes the vehicle locked after 60/80 seconds
{_x assignAsCargo evacHELO} foreach units group HO_SquadLead;
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








