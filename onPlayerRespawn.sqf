if (local player) then { 
	player enableStamina false; 
 	player setCustomAimCoef 0.25;
	player setVariable ["BIS_noCoreConversations", true];
   	player setSpeaker "NoVoice";
};

if (isServer) exitWith {};

Waituntil{!isNull player};

while{true} do {
   sleep 0.5;
   
   if((isPlayer cursorTarget) && (alive cursorTarget) && (side cursorTarget == side player) && (player distance cursorTarget < 20)) then {
      _tag = name cursorTarget;
      cutText [_tag,"PLAIN"];
   };
};