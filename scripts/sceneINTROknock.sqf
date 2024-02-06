// Acts_Pointing_Left 02.665s


// Acts_welcomeOnHUB03_AIWalk_4 03.066s

// KnockAnimMarker

// Animations 
[] spawn 
{

}; 


// Talking 
[] spawn 
{
line1 = ["You", "Morning Darwn.", player, 2, 1, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 3;

line1 = ["Dawrn", "Sorry for waking ya up James - but Rollins requested you.", introKNOCKER, 3, 1, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 4; 

line1 = ["You", "On my way - thanks.", player, 2, 1, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 3;
}; 
