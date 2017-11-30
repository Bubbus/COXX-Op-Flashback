if (!isServer) exitWith {};

setTimeMultiplier 1;

waitUntil 
{
	sleep 1; 
	
	_curTime = daytime;
	
	(_curTime >= 21.35)
	
};


[] call bub_fnc_doTimeTravel;