//execVM "fn_introPictures.sqf";

execVM "scripts\sceneINTRO.sqf"; 

{
    _x enableSimulation false;
    _x hideObject true;
} forEach (getMissionLayerEntities "SupportObjective" select 0);


officerBrief switchMove "Acts_Kore_IdleNoWeapon_loop"; 