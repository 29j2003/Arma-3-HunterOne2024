// Scene script for Delta Section/Squad/Platoon where it has mutiple waitUntils for each step when they get hurt, killed etc.

waitUntil {  ({alive _x} count (units natoSQUAD)) < 10  }; // 80 percent

line1 = ["Delta Lead", "We’re sustaining losses!", HO_SquadLead, 3, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;

waitUntil {  ({alive _x} count (units natoSQUAD)) < 7  }; // 60 percent

line1 = ["Delta Lead", "We’re being decimated out here!", HO_SquadLead, 3, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;

waitUntil {  ({alive _x} count (units natoSQUAD)) < 5  }; // 40 percent

line1 = ["Delta Lead", "We’re at our breaking point!", HO_SquadLead, 3, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;

waitUntil {  ({alive _x} count (units natoSQUAD)) < 3  }; // 20 percent

line1 = ["Delta Lead", "Immediate fire-support needed, or we’re done for!", HO_SquadLead, 4, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;

waitUntil {  ({alive _x} count (units natoSQUAD)) == 1  }; // = 1 remaining (SL stays alive for Voice Line, then gets killed of if needed) 

line1 = ["Delta Lead", "They’ve broken through, multiple casualties - we’re goi—", HO_SquadLead, 2, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 5; 

line1 = ["Thunder", "Thunder to Delta, report in!", officerBrief, 2, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 3; 

line1 = ["Thunder", "Delta do you read me!", officerBrief, 2, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 3;

line1 = ["Thunder", "Thunder to Hunter-One, contact to Delta has been lost.", officerBrief, 3, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 3; 

["DeltaDead", false, true, true, false] call BIS_fnc_endMission; 

