// Scene Script for Nomad Squad where they have a voice line each time they get hit to a specific %

waitUntil {  ({alive _x} count (units natoNOMADS)) < 6  }; // 80 percent
nomadSL sideChat "";
//playSound 


waitUntil {  ({alive _x} count (units natoNOMADS)) < 4  }; // 
nomadSL sideChat "";
//playSound 

waitUntil {  ({alive _x} count (units natoNOMADS)) < 2  }; // 20 percent
nomadSL sideChat "";
//playSound 

waitUntil {  ({alive _x} count (units natoNOMADS)) == 1  }; // = 1 remaining (SL stays alive for Voice Line, then gets killed of if needed) 
nomadSL sideChat "";
nomadSL allowDamage true; 

sleep 2; 
nomadSL setDamage 1;  
//playSound 
sleep 5; 

officerBrief sideChat "";
//playSound 
sleep 4; 

officerBrief sideChat "";
//playSound 
sleep 3;


[NomadDead, false, true, true, false] call BIS_fnc_endMission

