//RL13: “Thunder to Hunter 1, we are working on a resupply point near Charika.” 
//RL14: “The main airfield will be used in the meantime. Over.”
sleep 5; 
officerBrief sideChat "Thunder to Hunter-One, we are working on a resupply point near Charika."; 
//playSound
sleep 6; 
officerBrief sideChat "The main airfield will be used in the meantime. Over."; 
taskReArm = true; 
//playSound
sleep 6; 
player sideChat "Hunter-One copies, out."; 
//playSound

reArmNewOpen == true; 
sleep 1; 
officerBrief sideChat "Thunder to all Units. A new resupply point is now available near Charkia!"; 