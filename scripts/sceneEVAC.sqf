// scene where EVAC calls 
sleep 2; 
player sideChat "Hunter-One to Thunder, enemy assault forces have been elimiated. Over."; 
//playSound
sleep 5;
officerBrief sideChat "Copy Hunter-One, dispatching evac now. Out."; 


// intital call between player and evac

waitUntil { evacHELOlanded == true }; // wait till evac variable true
evacHELOD sideChat "Ghost 2-1 to Delta, we are on the ground - load up!";
//playSound
sleep 4;
HO_SquadLead sideChat "Moving!";  

sleep 3; 
evacHELOD sideChat "Hunter-One keep defending, this might take a while.";
//playSound

// touch down call and saying defend us until we can set 

waitUntil { evacReturn == true }; // wait till evac lift of for 5 ish sec, then good to go for future 