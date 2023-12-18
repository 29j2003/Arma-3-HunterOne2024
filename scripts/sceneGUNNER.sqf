// Scene script for the Gunner AI (Co-Pilot) 

// say here: 

// ANIM here: 

playerVehicle setVehicleLock "LOCKEDPLAYER";
coPilot doWatch player; 
sleep 2; 
[] spawn
{
	coPilot disableAI "ANIM"; 
	coPilot switchMove "Acts_NATOCommanderArrival_Larkin_2"; sleep 1.832; 
	coPilot switchMove "Acts_NATOCommanderArrival_Larkin_3"; sleep 9; 
	coPilot switchMove "Acts_NATOCommanderArrival_Larkin_4"; sleep 0.832; 
	coPilot switchMove "";
	coPilot enableAI "ANIM"; 		
};

[] spawn
{
	line1 = ["Frost", "Morning LT!", coPilot];
	[[line1], "BLUFOR", 0.10, false] execVM "fn_simpleConv.sqf";
	sleep 4; 
	line1 = ["Frost", "She is gunned up and ready to go.", coPilot];
	[[line1], "BLUFOR", 0.10, false] execVM "fn_simpleConv.sqf";
 	sleep 5; 
	line1 = ["You", "Then let's get a move on.", player];
	[[line1], "BLUFOR", 0.10, false] execVM "fn_simpleConv.sqf";
	sleep 5; 
	line1 = ["Frost", "Yes sir!", coPilot];
	[[line1], "BLUFOR", 0.10, false] execVM "fn_simpleConv.sqf";
};

// Order to get in helo: 
coPilot assignAsGunner playerVehicle; 
[coPilot] orderGetIn true;
// Join group of player: 

waitUntil {coPilot in playerVehicle}; 
playerVehicle setVehicleLock "UNLOCKED";

waitUntil {player in playerVehicle};
[coPilot] joinSilent player;


//line1 = ["Officer", "I hope you are well rested James.", officerBrief];
//[[line1], "BLUFOR", 0.15, false] execVM "fn_simpleConv.sqf";



