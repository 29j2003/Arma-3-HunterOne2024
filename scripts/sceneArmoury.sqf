// Scene script for the Amoury between Amoury guy and player 
// Morning James, heard that you have been called to action - I've already got everything laid out. Take what you need. 


// Animations 
[] spawn 
{

}; 


// Talking 
[] spawn 
{
line1 = ["Mark", "Morning James. Already got your gear laid down for you.", ammoGUY, 3, 1, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 4; 

line1 = ["You", "Thanks Mark.", player, 2, 1, "3D"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;
sleep 3;
}; 