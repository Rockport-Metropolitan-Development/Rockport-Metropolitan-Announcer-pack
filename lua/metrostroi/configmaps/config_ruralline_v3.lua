local Map = game.GetMap():lower() or ""
if Map:find("gm_metro_ruralline_v3") then
	Metrostroi.PlatformMap = "ruralline_redux"
	Metrostroi.CurrentMap = "ruralline_redux"
else
	return
end

Metrostroi.AddCISConfig("Lakeview Transport MT-4", {
	{
		LED = {4, 4, 4, 2, 4, 4},
		Name = "Market street - Rocklake",
		Loop = false,
		BlockDoors = true,
		Line = 1,
		Color = Color(134, 99, 64),
		English = true,
		{400, "Market street"},
		{402, "Aviation university"},
		{403, "Lakeview City hall"},
		{404, "White forest"},
		{405, "Urban park"},
		{406, "Rocklake"},
	}
})