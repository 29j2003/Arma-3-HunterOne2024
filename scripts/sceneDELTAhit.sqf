// Scene script for Delta Section/Squad/Platoon where it has mutiple waitUntils for each step when they get hurt, killed etc.

waitUntil {  ({alive _x} count (units natoSQUAD)) < 10  }; // 80 percent
HO_SquadLead sideChat "We’re sustaining losses!";
//playSound 

waitUntil {  ({alive _x} count (units natoSQUAD)) < 7  }; // 60 percent
HO_SquadLead sideChat "We’re being decimated out here!";
//playSound 

waitUntil {  ({alive _x} count (units natoSQUAD)) < 5  }; // 40 percent
HO_SquadLead sideChat "We’re at our breaking point!";
//playSound 

waitUntil {  ({alive _x} count (units natoSQUAD)) < 3  }; // 20 percent
HO_SquadLead sideChat "Immediate fire-support needed, or we’re done for!";
//playSound 

waitUntil {  ({alive _x} count (units natoSQUAD)) == 1  }; // = 1 remaining (SL stays alive for Voice Line, then gets killed of if needed) 
HO_SquadLead sideChat "They’ve broken through, multiple casualties - we’re goi—";
//playSound 
sleep 5; 

officerBrief sideChat "Thunder to Delta, report in!";
//playSound 
sleep 3; 

officerBrief sideChat "Delta do you read me!";
//playSound 
sleep 3;
officerBrief sideChat "Thunder to Hunter-One, contact to Delta has been lost.";
//playSound 
sleep 4; 

[DELTADEAD, false, true, true, false] call BIS_fnc_endMission
/* 
Delta bei Hit sachen: 

80%:We’re sustaining losses! (firefight sfx +) 

60%: We’re being decimated out here!  (firefight sfx +) 

40%: We’re at our breaking point! (firefight sfx und auch extra voice line ein gebacked in main line wo man nur hört: MEDICCCC!)

20%: Immediate fire-support needed, or we’re done for! (firefight sfx +) 

0% bzw. = 1 Unit: They’ve broken through, multiple casualties - we’re goi—static (firefight sfx und static sound und dazu noch CSAT stimmen ggf.)

Dann von HQ: Delta report in! Delta! 

Mission over
*/