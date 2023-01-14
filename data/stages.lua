-- Minlevel and multiplier are MANDATORY
-- Maxlevel is OPTIONAL, but is considered infinite by default
-- Create a stage with minlevel 1 and no maxlevel to disable stages
experienceStages = {
	{
		minlevel = 1,
		maxlevel = 8,
		multiplier = 500
	}, {
		minlevel = 9,
		maxlevel = 49,
		multiplier = 500
	}, {
		minlevel = 50,
		maxlevel = 100,
		multiplier = 400
	}, {
		minlevel = 101,
		maxlevel = 150,
		multiplier = 300
	}, {
		minlevel = 151,
		maxlevel = 200,
		multiplier = 150
	}, {
		minlevel = 201,
		maxlevel = 250,
		multiplier = 130
	}, {
		minlevel = 251,
		maxlevel = 300,
		multiplier = 50
	}, {
		minlevel = 301,
		maxlevel = 350,
		multiplier = 30
	}, {
		minlevel = 351,
		maxlevel = 400,
		multiplier = 15
	}, {
		minlevel = 401,
		maxlevel = 450,
		multiplier = 10
	}, {
		minlevel = 451,
		maxlevel = 500,
		multiplier = 8
	}, {
		minlevel = 501,
		maxlevel = 550,
		multiplier = 6
	}, {
		minlevel = 551,
		maxlevel = 600,
		multiplier = 4
	}, {
		minlevel = 601,
		maxlevel = 700,
		multiplier = 3
	}, {
		minlevel = 701,
		maxlevel = 1000,
		multiplier = 2
	}, {
		minlevel = 1001, 
		multiplier = 1
	}
}

skillsStages = {
	{
		minlevel = 1,
		maxlevel = 59,
		multiplier = 40
	}, {
		minlevel = 60,
		maxlevel = 69,
		multiplier = 16
	}, {
		minlevel = 70,
		maxlevel = 79,
		multiplier = 4
	}, {
		minlevel = 80,
		multiplier = 2
	},
}

magicLevelStages = {
	{
		minlevel = 1,
		maxlevel = 59,
		multiplier = 40
	}, {
		minlevel = 60,
		maxlevel = 69,
		multiplier = 16
	}, {
		minlevel = 70,
		maxlevel = 79,
		multiplier = 4
	}, {
		minlevel = 80,
		multiplier = 2
	},
}
