// Briefing scene that plays out at the beginning 

// Dialog 
[] spawn
{
vehicleFlyBy01 enableSimulation true; 
vehicleFlyBy01 hideObject false; 

officerBrief disableAI "ALL"; 
[0, 99999, false, true] call BIS_fnc_cinemaBorder; 

line1 = ["Rollins", "Hope you are rested James – high-priority mission for you.", officerBrief, 3, 0, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 2; 

line1 = ["You", "What's the situation?", player, 2, 0, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 1;


line1 = ["Rollins", "At 0415, one of our sections got ambushed by CSAT forces during our offensive here:", officerBrief, 5, 0, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 2; 

line1 = ["Rollins", "They are currently pinned down from three different directions and are taking heavy fire.", officerBrief, 4, 0, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 2; 

line1 = ["Rollins", "An infantry squad is closing from the west,", officerBrief, 4, 0, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 2;    

line1 = ["Rollins", "While a mechanized unit is rolling down from the north,", officerBrief, 4, 0, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 2; 

line1 = ["Rollins", "And more foot-mobiles are coming from the east.", officerBrief, 4, 0, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 2; 

line1 = ["Rollins", "They've also spotted an anti-air group in the AO.", officerBrief, 3, 0, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 2; 

line1 = ["Rollins", "The exact position of it is unknown as of now.", officerBrief, 3, 0, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 2; 

line1 = ["You", "What about CSAT or AAF QRFs?", player, 3, 0, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 2; 

line1 = ["Rollins", "We have eyes on the ground to monitor any movements. We'll keep you updated.", officerBrief, 4, 0, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 2; 

line1 = ["Rollins", "Your objective is to provide CAS and secure the LZ until an evac arrives and extracts them.", officerBrief, 8, 0, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 4; 

line1 = ["Rollins", "You'll be deep in enemy territory, so watch your six.", officerBrief, 4, 0, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 2; 

line1 = ["Rollins", "Your Co-Pilot has been briefed and your Blackfoot is prepped and ready.", officerBrief, 4, 0, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 2; 

line1 = ["Rollins", "Gear up and get to your ‘bird. Our boys need you ASAP!", officerBrief, 4, 0, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 2; 

line1 = ["Rollins", "Good luck and godspeed. Dismissed.", officerBrief, 4, 0, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 1; 
Task02activ = true;
[1, 0, false, true] call BIS_fnc_cinemaBorder; 
sleep 1; 
line1 = ["You", "Sir.", player, 4, 0, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 1; 


};


// Map Animations
[] spawn
{
sleep 15;
openMap [true, false];

[5.0, 0.03, markerPos "natoDELTA"] call BIS_fnc_mapAnimAdd; 
["show", ["natoDELTA"]] call BIS_fnc_showMarkers;
["show", ["natoDELTAao"]] call BIS_fnc_showMarkers;
["natoDELTA", 2, 5] spawn BIS_fnc_blinkMarker; // blinks 10 times using 3 seconds intervals
sleep 4; 

["show", ["csatINF1"]] call BIS_fnc_showMarkers;
["show", ["csatINF2"]] call BIS_fnc_showMarkers;
["show", ["csatMECH"]] call BIS_fnc_showMarkers;
sleep 3; 

[2.0, 0.015, markerPos "csatINFwestPos"] call BIS_fnc_mapAnimAdd; 
["show", ["csatINFmain1"]] call BIS_fnc_showMarkers;
["csatINFmain1", getMarkerPos "csatINFwestPos", 6, 4] call BIS_fnc_moveMarker;
["csatINF1", getMarkerPos "csatINFPos1", 6, 4] call BIS_fnc_moveMarker;
sleep 6;

[2.0, 0.015, markerPos "csatMECHnorthPos"] call BIS_fnc_mapAnimAdd; 
["show", ["csatMECHmain"]] call BIS_fnc_showMarkers;
["csatMECHmain", getMarkerPos "csatMECHnorthPos", 6, 4] call BIS_fnc_moveMarker;
["csatMECH", getMarkerPos "csatMECHPos", 6, 4] call BIS_fnc_moveMarker;
sleep 6;

[2.0, 0.015, markerPos "csatINFeastPos"] call BIS_fnc_mapAnimAdd; 
["show", ["csatINFmain2"]] call BIS_fnc_showMarkers;
["csatINFmain2", getMarkerPos "csatINFeastPos", 6, 4] call BIS_fnc_moveMarker;
["csatINF2", getMarkerPos "csatINFPos2", 6, 4] call BIS_fnc_moveMarker;
sleep 6;

[2.0, 0.05, markerPos "natoDELTA"] call BIS_fnc_mapAnimAdd; 
sleep 2; 


sleep 12; 

[2.0, 0.1, markerPos "natoDELTA"] call BIS_fnc_mapAnimAdd; 
["markerRecon", 2, 5] spawn BIS_fnc_blinkMarker;
sleep 8; 


["show", ["markerCAS"]] call BIS_fnc_showMarkers;
["markerCAS", getMarkerPos "casPOS", 8, 4] call BIS_fnc_moveMarker;
sleep 3; 

["show", ["markerEVAC"]] call BIS_fnc_showMarkers;
["show", ["evacPOS"]] call BIS_fnc_showMarkers;
["markerEVAC", getMarkerPos "evacPOS", 8, 4] call BIS_fnc_moveMarker;
sleep 3;

["hide", ["markerCAS"]] call BIS_fnc_showMarkers;
sleep 3; 

["hide", ["markerEVAC"]] call BIS_fnc_showMarkers;
["hide", ["evacPOS"]] call BIS_fnc_showMarkers;
sleep 2; 

openMap [false, false];
};


sleep 7; 


// Officer Animations 
officerBrief switchMove "Acts_Kore_IdleNoWeapon_out";
[] spawn
{
	sleep 2.5;
	officerBrief switchMove "Acts_C_in1_briefing";
	sleep 20; 
	officerBrief switchMove "Acts_C_in1_briefing";
	sleep 74; 
	officerBrief switchMove "Acts_Kore_IdleNoWeapon_in"; 
	sleep 3.265; 
	officerBrief switchMove "Acts_Kore_IdleNoWeapon_loop"; 
};


