params ["_floater", "_caller", "_actionId"];


_alreadyReleased = _floater getVariable ["alreadyReleased", false];

if !(_alreadyReleased) then 
{
	_floater setVariable ["alreadyReleased", true];

	[_floater, _actionId] remoteExec ["removeAction", 0];

	sleep 1.1;
	
	_clampedFront = _floater getVariable ["clamped_front", objNull];
	_clampedRear = _floater getVariable ["clamped_rear", objNull];

	_boatPos = getPos _floater;
	_boatFront = vectorDir _floater;
	_boatUp = vectorUp _floater;
	_boatSide = vectorNormalized (_boatFront vectorCrossProduct _boatUp);
	
	if (!isNull _clampedFront) then 
	{
		_moveToPos1 = (_boatPos vectorAdd (_boatFront vectorMultiply 20)) vectorAdd (_boatSide vectorMultiply 10);
		
		[[_clampedFront, _moveToPos1], "bub\bub_vm_cl_detachFromFloater.sqf"] remoteExec ["execVM", _clampedFront];
	};
	
	sleep 1;
	
	if (!isNull _clampedRear) then 
	{	
		_moveToPos2 = (_boatPos vectorAdd (_boatFront vectorMultiply 20)) vectorAdd (_boatSide vectorMultiply -10);
		
		[[_clampedRear, _moveToPos2], "bub\bub_vm_cl_detachFromFloater.sqf"] remoteExec ["execVM", _clampedRear];
	};
	
};

