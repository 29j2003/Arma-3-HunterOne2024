// scene where EVAC calls 
sleep 2; 
player sideChat "Hunter-One to Thunder, enemy assault forces have been eliminated. Over."; 
//playSound
sleep 5;
officerBrief sideChat "Copy Hunter-One, dispatching evac now. Out."; 


// intital call between player and evac
evacHELOlanded == true; 
// wait till evac variable true


evacHELOD sideChat "Ghost 2-1 to Delta, we are on the ground - load up!";
//playSound
sleep 4;
HO_SquadLead sideChat "Moving!";  

sleep 3; 
evacHELOD sideChat "Hunter-One keep defending, this might take a while.";
//playSound

// touch down call and saying defend us until we can set 
evacReturn == true; 
sleep 2; 
evacHELOD sideChat "Ghost 2-1 to Thunder, returning back to base.";
sleep 4; 
officerBrief sideChat "Copy Ghost 2-1, medical personal is already informed."; 