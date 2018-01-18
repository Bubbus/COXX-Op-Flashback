if (isDedicated) exitWith {};


_units = 
[
	[
		"German Infantry",
		"inf", "opf_f", east,
		[
			[
				"German Rifleman",
				["rif"]
			],
		
			[
				"German MG Team",
				["ar", "aar", "aar"]
			],
		
			[
				"German Squad 6x",
				["sl","ar","aar","smg","rif","lat"]
			],
			
			[
				"German Squad 10x",
				["sl","ar","aar","aar","smg","rif","rif","rif","lat","lat"]
			],
			
			[
				"Hitler oh nooooo",
				["hitler"]
			]
		]
	], 
	
	[
		'"French" Infantry',
		"inf", "ind_f", independent,
		[
			[
				"French Rifleman",
				["rif"]
			],
		
			[
				"French MG Team",
				["ar", "rif", "rif"]
			],
		
			[
				"French Squad 6x",
				["smg","ar","rif","rif","rif","rif"]
			]
		]
	], 
	
	[
		"German Vehicles", 
		"veh", "opf_f", east,
		[
			[
				"Leichter 222 (Armoured Car)",
				"LIB_SdKfz222",
				["crew-smg","crew","crew"]
			],
		
			[
				"Puma (Tank Destroyer)",
				"LIB_SdKfz234_2",
				["crew-smg","crew","crew"]
			],
			
			[
				"StuG III",
				"LIB_StuG_III_G",
				["crew-smg","crew","crew"]
			],
			
			[
				"Panzer IV",
				"LIB_PzKpfwIV_H",
				["crew-smg","crew","crew"]
			],
			
			[
				"PaK 40 (Static AT)",
				"LIB_Pak40",
				["sl","smg","lat"]
			],
			
			[
				"GrWr 34 (Mortar)",
				"LIB_GrWr34",
				["sl","smg"]
			]
		]
	]
	
];

bub_zeus_unitsStructure = _units;