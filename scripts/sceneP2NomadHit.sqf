// Scene Script for Nomad Squad where they have a voice line each time they get hit to a specific %

waitUntil {  ({alive _x} count (units natoNOMADS)) < 10  }; // 80 percent
HO_SquadLead sideChat "";
//playSound 

waitUntil {  ({alive _x} count (units natoNOMADS)) < 7  }; // 60 percent
HO_SquadLead sideChat "";
//playSound 

waitUntil {  ({alive _x} count (units natoNOMADS)) < 5  }; // 40 percent
HO_SquadLead sideChat "";
//playSound 

waitUntil {  ({alive _x} count (units natoNOMADS)) < 3  }; // 20 percent
HO_SquadLead sideChat "";
//playSound 

waitUntil {  ({alive _x} count (units natoNOMADS)) == 1  }; // = 1 remaining (SL stays alive for Voice Line, then gets killed of if needed) 
HO_SquadLead sideChat "";
//playSound 
sleep 7; 

officerBrief sideChat "";
//playSound 
sleep 4; 

officerBrief sideChat "";
//playSound 
sleep 3;
officerBrief sideChat "";
//playSound 
sleep 5; 

[NomadDead, false, true, true, false] call BIS_fnc_endMission

