// Script that checks if player has the needed items taken for Task02
playerGUN hideObject false; 
playerNVG hideObject false; 
playerHELMET hideObject false; 
playerVEST hideObject false; 


waitUntil {sleep 1; 
"NVGoggles_OPFOR" in (items player + assignedItems player) &&
player hasWeapon "SMG_01_F" &&
headgear player == "H_PilotHelmetHeli_B" &&
vest player isEqualTo "V_TacVest_blk" };

// after player has what he needs: 
player addMagazine ["30Rnd_45ACP_Mag_SMG_01", 30];
player addMagazine ["30Rnd_45ACP_Mag_SMG_01", 30];
TASK02done = true;