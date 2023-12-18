officerBrief disableAI "ALL"; 

vehicleFlyBy01 enableSimulation true; 
vehicleFlyBy01 hideObject false; 

[0, 99999, false, true] call BIS_fnc_cinemaBorder; 




// Acts_Briefing_Intro2_Major_2 03.065s (zeigt nach hinte) am ende nach brief? 
// Acts_Briefing_Intro3_Major_1 (ka Wie lang
// noch map Briefing hinzufügen


line1 = ["Rollins", "I hope you are well rested for this James.", officerBrief];
[[line1], "BLUFOR", 0.10, false] execVM "fn_simpleConv.sqf";
sleep 3; 
line1 = ["You", "Always.", player];
[[line1], "BLUFOR", 0.10, false] execVM "fn_simpleConv.sqf";
sleep 3.5; 

////////////////////////////////

openMap [true, false];
[5.0, 0.03, markerPos "natoDELTA"] call BIS_fnc_mapAnimAdd; 
["show", ["natoDELTA"]] call BIS_fnc_showMarkers;
["show", ["natoDELTAao"]] call BIS_fnc_showMarkers;
["natoDELTA", 2, 5] spawn BIS_fnc_blinkMarker; // blinks 10 times using 3 seconds intervals

line1 = ["Rollins", "At 0415, one of our sections got cut off during our ongoing offensive here:", officerBrief];
[[line1], "BLUFOR", 0.10, false] execVM "fn_simpleConv.sqf";
sleep 7; 

////////////////////////////////

["show", ["csatINF1"]] call BIS_fnc_showMarkers;
["show", ["csatINF2"]] call BIS_fnc_showMarkers;
["show", ["csatMECH"]] call BIS_fnc_showMarkers;

line1 = ["Rollins", "They are currently under attack from three different directions by CSAT forces.", officerBrief];
[[line1], "BLUFOR", 0.10, false] execVM "fn_simpleConv.sqf";
sleep 7.5; 

////////////////////////////////

[2.0, 0.015, markerPos "csatINFwestPos"] call BIS_fnc_mapAnimAdd; 
["show", ["csatINFmain1"]] call BIS_fnc_showMarkers;

["csatINFmain1", getMarkerPos "csatINFwestPos", 6, 4] call BIS_fnc_moveMarker;
["csatINF1", getMarkerPos "csatINFPos1", 6, 4] call BIS_fnc_moveMarker;

line1 = ["Rollins", "An infantry squad is advancing from the west,", officerBrief];
[[line1], "BLUFOR", 0.10, false] execVM "fn_simpleConv.sqf";
sleep 6; 

////////////////////////////////

[2.0, 0.015, markerPos "csatMECHnorthPos"] call BIS_fnc_mapAnimAdd; 
["show", ["csatMECHmain"]] call BIS_fnc_showMarkers;

["csatMECHmain", getMarkerPos "csatMECHnorthPos", 6, 4] call BIS_fnc_moveMarker;
["csatMECH", getMarkerPos "csatMECHPos", 6, 4] call BIS_fnc_moveMarker;

line1 = ["Rollins", "While a mechanized unit is pushing down from the north,", officerBrief];
[[line1], "BLUFOR", 0.10, false] execVM "fn_simpleConv.sqf";
sleep 6; 

////////////////////////////////

[2.0, 0.015, markerPos "csatINFeastPos"] call BIS_fnc_mapAnimAdd; 
["show", ["csatINFmain2"]] call BIS_fnc_showMarkers;

["csatINFmain2", getMarkerPos "csatINFeastPos", 6, 4] call BIS_fnc_moveMarker;
["csatINF2", getMarkerPos "csatINFPos2", 6, 4] call BIS_fnc_moveMarker;

line1 = ["Rollins", "And additional infantry from the east.", officerBrief];
[[line1], "BLUFOR", 0.10, false] execVM "fn_simpleConv.sqf";
sleep 6; 

////////////////////////////////

[2.0, 0.05, markerPos "natoDELTA"] call BIS_fnc_mapAnimAdd; 

line1 = ["Rollins", "They've also spotted an anti-air group in the vicinity.", officerBrief];
[[line1], "BLUFOR", 0.10, false] execVM "fn_simpleConv.sqf";
sleep 6; 

////////////////////////////////

line1 = ["Rollins", "The mission is to provide support to the troops and hold the area until evacuation arrives and extracts them.", officerBrief];
[[line1], "BLUFOR", 0.10, false] execVM "fn_simpleConv.sqf";
openMap [false, false];
sleep 12; 

////////////////////////////////

line1 = ["Rollins", "You'll be operating behind enemy lines, so proceed with caution.", officerBrief];
[[line1], "BLUFOR", 0.10, false] execVM "fn_simpleConv.sqf";
openMap [false, false];
sleep 7; 

////////////////////////////////

line1 = ["Rollins", "Your Co-Pilot has been briefed and the Blackfoot is prepped and ready to go.", officerBrief];
[[line1], "BLUFOR", 0.10, false] execVM "fn_simpleConv.sqf";
sleep 2; 

////////////////////////////////

officerBrief switchMove "Acts_Briefing_Intro2_Major_2";
sleep 4; 

////////////////////////////////

line1 = ["Rollins", "Gear up and help our boys in need!", officerBrief];
[[line1], "BLUFOR", 0.15, false] execVM "fn_simpleConv.sqf";
sleep 4; 

////////////////////////////////

line1 = ["Rollins", "Dismissed.", officerBrief];
[[line1], "BLUFOR", 0.15, false] execVM "fn_simpleConv.sqf";



sleep 3; 

////////////////////////////////

Task02activ = true;
[1, 0, false, true] call BIS_fnc_cinemaBorder; 
