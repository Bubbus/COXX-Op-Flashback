params ["_floater"];


_onReleaseClamps = 
{
	params ["_floater", "_caller", "_actionId"];

	[[_floater, _caller, _actionId], "bub\bub_vm_sv_releaseVehicleClamps.sqf"] remoteExec ["execVM", 2];
	
};


if (isServer) then 
{
	[
		_floater, 
		
		[
			"<t color='#FFFFAA'>Release vehicle clamps</t>
	<br/>
	<t color='#AAAA88'>(only use when beached)</t>", 
			_onReleaseClamps,
			nil, 
			6, 
			false, 
			true, 
			"", 
			'driver _target == _this;', 
			15
		]
		
	] remoteExec ["addAction", 0];
}

		