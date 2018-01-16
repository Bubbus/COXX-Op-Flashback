params ["_veh", "_pos"];

_veh setDir 0;
sleep 0.1;

_veh setPos [0,0,50];
detach _veh;
sleep 0.1;

_veh setVehiclePosition [_pos, [], 20, "NONE"];