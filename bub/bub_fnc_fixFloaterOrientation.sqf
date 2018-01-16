params ["_veh", "_boat"];  

[_veh, _boat] spawn 
{
	_loop = true;
	
	while {true} do 
	{
		params ["_veh", "_boat"];  
		
		_rel = _boat getVariable ["alreadyReleased", false];
		
		if (_rel or {isNull attachedTo _veh}) then 
		{
			_loop = false
		}
		else 
		{
			[_veh, 0] remoteExec ["setDir", _veh];
		};
		
		sleep 1;
		
	}
	
}
