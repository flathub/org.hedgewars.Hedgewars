HedgewarsScriptLoad("/Scripts/TargetPractice.lua")

local params = {
	ammoType = amBazooka,
	gearType = gtShell,
	missionTitle = loc("Target Practice: Bazooka (hard)"),
	wind = 20,
	solidLand = true,
	artillery = true,
	map = "SB_Grassy",
	theme = "Castle",
	hog_x = 2112,
	hog_y = 935,
	targets = {
		{ x = 2660, y = 936 },
		{ x = 2857, y = 629 },
		{ x = 3044, y = 851 },
		{ x = 3200, y = 441 },
		{ x = 2931, y = 440 },
		{ x = 3264, y = 370 },
		{ x = 1880, y = 684 },
		{ x = 1392, y = 672 },
		{ x = 1587, y = 656 },
		{ x = 1300, y = 840 },
		{ x = 952, y = 814 },
		{ x = 862, y = 634 },
		{ x = 748, y = 794 },
		{ x = 639, y = 548 },
		{ x = 1730, y = 549 },
		{ x = 1466, y = 566 },
		{ x = 3716, y = 954 },
	},
	time = 180000,
	shootText = loc("You have launched %d bazookas."),
}

TargetPracticeMission(params)
