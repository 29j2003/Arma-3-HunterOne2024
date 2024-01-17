officerBrief disableAI "ALL"; 

vehicleFlyBy01 enableSimulation true; 
vehicleFlyBy01 hideObject false; 

[0, 99999, false, true] call BIS_fnc_cinemaBorder; 



line1 = ["Rollins", "I hope you are well rested for this James.", officerBrief, 2, 0, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 1; 

line1 = ["You", "Always.", player, 2, 0, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 0.5; 

////////////////////////////////

//openMap [true, true];
officerBrief switchMove "Acts_Kore_IdleNoWeapon_out";
[] spawn
{
	sleep 2.5;
	officerBrief switchMove "Acts_C_in1_briefing";
	sleep 55; 
	officerBrief switchMove "Acts_C_in1_briefing";
	sleep 19.365; 
	officerBrief switchMove "Acts_Kore_IdleNoWeapon_in"; 
	sleep 3.265; 
	officerBrief switchMove "Acts_Kore_IdleNoWeapon_loop"; 
};


sleep 1.5; 

line1 = ["Rollins", "At 0415, one of our sections got cut off during our ongoing offensive here:", officerBrief, 6, 0, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;

sleep 0.5; 

openMap [true, true];
[5.0, 0.03, markerPos "natoDELTA"] call BIS_fnc_mapAnimAdd; 
["show", ["natoDELTA"]] call BIS_fnc_showMarkers;
["show", ["natoDELTAao"]] call BIS_fnc_showMarkers;
["natoDELTA", 2, 5] spawn BIS_fnc_blinkMarker; // blinks 10 times using 3 seconds intervals
sleep 2; 

////////////////////////////////

["show", ["csatINF1"]] call BIS_fnc_showMarkers;
["show", ["csatINF2"]] call BIS_fnc_showMarkers;
["show", ["csatMECH"]] call BIS_fnc_showMarkers;


line1 = ["Rollins", "They are currently under attack from three different directions by CSAT forces.", officerBrief, 6, 0, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 2; 


////////////////////////////////

[2.0, 0.015, markerPos "csatINFwestPos"] call BIS_fnc_mapAnimAdd; 
["show", ["csatINFmain1"]] call BIS_fnc_showMarkers;

["csatINFmain1", getMarkerPos "csatINFwestPos", 6, 4] call BIS_fnc_moveMarker;
["csatINF1", getMarkerPos "csatINFPos1", 6, 4] call BIS_fnc_moveMarker;

line1 = ["Rollins", "An infantry squad is advancing from the west,", officerBrief, 5, 0, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 2; 

////////////////////////////////

[2.0, 0.015, markerPos "csatMECHnorthPos"] call BIS_fnc_mapAnimAdd; 
["show", ["csatMECHmain"]] call BIS_fnc_showMarkers;

["csatMECHmain", getMarkerPos "csatMECHnorthPos", 6, 4] call BIS_fnc_moveMarker;
["csatMECH", getMarkerPos "csatMECHPos", 6, 4] call BIS_fnc_moveMarker;


line1 = ["Rollins", "While a mechanized unit is pushing down from the north,", officerBrief, 5, 0, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 2; 


////////////////////////////////

[2.0, 0.015, markerPos "csatINFeastPos"] call BIS_fnc_mapAnimAdd; 
["show", ["csatINFmain2"]] call BIS_fnc_showMarkers;

["csatINFmain2", getMarkerPos "csatINFeastPos", 6, 4] call BIS_fnc_moveMarker;
["csatINF2", getMarkerPos "csatINFPos2", 6, 4] call BIS_fnc_moveMarker;

line1 = ["Rollins", "And additional infantry from the east.", officerBrief, 5, 0, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 2; 

////////////////////////////////

[2.0, 0.05, markerPos "natoDELTA"] call BIS_fnc_mapAnimAdd; 

line1 = ["Rollins", "They've also spotted an anti-air group in the vicinity.", officerBrief, 5, 0, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;

sleep 2; 

////////////////////////////////

line1 = ["Rollins", "The mission is to provide support to the troops and hold the area until evacuation arrives and	extracts them.", officerBrief, 8, 1, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;

sleep 2; 

////////////////////////////////

line1 = ["Rollins", "You'll be operating behind enemy lines, so proceed with caution.", officerBrief, 5, 0, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
openMap [false, false];
sleep 2; 

////////////////////////////////

// officerBrief switchMove "Acts_Briefing_Intro2_Major_2";
line1 = ["Rollins", "Your Co-Pilot has been briefed and your Blackfoot is prepped and ready.", officerBrief, 3, 0, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 2; 

////////////////////////////////

line1 = ["Rollins", "Gear up and help our boys in need!", officerBrief, 3, 0, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 2; 

////////////////////////////////

line1 = ["Rollins", "Dismissed.", officerBrief, 2, 0, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;


Task02activ = true;
sleep 1; 

////////////////////////////////


[1, 0, false, true] call BIS_fnc_cinemaBorder; 


//line1 = ["Rollins", "", officerBrief, 2, 1, "3D"];
//[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;





/* 
Animation set: 
Acts_Kore_IdleNoWeapon_loop 07.468s
Acts_Kore_IdleNoWeapon_out	02.333s 
Acts_C_in1_briefing 		19.365s 
*/ 

