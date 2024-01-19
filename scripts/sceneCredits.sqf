cutText ["", "BLACK FADED", 9999];

// disable Sounds besides music 
0 fadeSound 0;
sleep 0.5;
15 fadeMusic 1;

// playMusic
[] spawn {playMusic "LeadTrack01_F_6th_Anniversary_Remix"; };
// Black Screen titleCut 

[] spawn {sleep 135; 10 fadeMusic 0; sleep 15;  endMission "END1"; }; 

sleep 2; 
// Credits: 
[] spawn {
["
<t size='2.0' font='RobotoCondensedBold' >Hunter One - Credits		<br/> <br/> <br/><br/> </t>

<t font='RobotoCondensedBold' size='1.5'>created by</t><br/>
<t font='RobotoCondensedBold' size='1.5'>Team Valkyrie <br/> <br/> <br/> <br/><br/></t><br/>



<t font='RobotoCondensedBold' size='1.2' underline='1'>Design		 			</t><br/><br/>
<t font='RobotoCondensedBold'>29/P4TCH3R		 		</t><br/><br/><br/><br/>

<t font='RobotoCondensedBold' size='1.2' underline='1'>Programming		 			</t><br/><br/>
<t font='RobotoCondensedBold'>29/P4TCH3R		 		</t><br/>
<t font='RobotoCondensedBold'>Doggifast		 		</t><br/><br/><br/><br/>

<t font='RobotoCondensedBold' size='1.2' underline='1'>QA		 			</t><br/><br/>
<t font='RobotoCondensedBold'>Frexax		 		</t><br/>
<t font='RobotoCondensedBold'>Shadows		 		</t><br/>
<t font='RobotoCondensedBold'>BotUseless		 	</t><br/><br/><br/><br/>

<t font='RobotoCondensedBold' size='1.2' underline='1'>Support		 			</t><br/><br/>
<t font='RobotoCondensedBold'>Polpox		 		</t><br/><br/><br/><br/><br/><br/>

<t size='2.0' font='RobotoCondensedBold' >Voice Actors		</t><br/><br/>

<t font='RobotoCondensedBold'>T as T		 		</t><br/><br/>
<t font='RobotoCondensedBold'>Y as T		 		</t><br/><br/>
<t font='RobotoCondensedBold'>X as T		 		</t><br/><br/>
<t font='RobotoCondensedBold'>D as T		 		</t><br/><br/>
<t font='RobotoCondensedBold'>H as T		 		</t><br/><br/>
<t font='RobotoCondensedBold'>J as T		 		</t><br/><br/>
<t font='RobotoCondensedBold'>K as T		 		</t><br/><br/>
<t font='RobotoCondensedBold'>Ö as T		 		</t><br/><br/>
<t font='RobotoCondensedBold'>Ä as T		 		</t><br/><br/>
<t font='RobotoCondensedBold'>Q as T		 		</t><br/><br/>
<t font='RobotoCondensedBold'>R as T		 		</t><br/><br/>
<t font='RobotoCondensedBold'>Z as T		 		</t><br/><br/>
<t font='RobotoCondensedBold'>U as T		 		</t><br/><br/>
<t font='RobotoCondensedBold'>I as T		 		</t><br/><br/>
<t font='RobotoCondensedBold'>O as T		 		</t><br/><br/>
<t font='RobotoCondensedBold'>P as T		 		</t><br/><br/><br/><br/><br/><br/>

<t size='2.0' font='RobotoCondensedBold' >Special Thanks to</t><br/><br/>

<t font='RobotoCondensedBold'>R3V0		 		</t><br/>
<t font='RobotoCondensedBold'>for 3denEnhanced	</t><br/><br/>

<t font='RobotoCondensedBold'>LSD		 </t><br/>
<t font='RobotoCondensedBold'>for ZEC and ZEI	</t><br/><br/>

",-1, 1.5,135,1,-25,789] spawn BIS_fnc_dynamicText;
sleep 135; 
["<t size='3.0' font='RobotoCondensedBold' >Thanks for playing! </t>",-1,-1,5,1,0,789] spawn BIS_fnc_dynamicText;
}; 

