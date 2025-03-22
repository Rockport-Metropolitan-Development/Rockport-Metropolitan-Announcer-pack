local Map = game.GetMap() or ""

if Map:find("gm_metro_ruralline_v29") then
	Metrostroi.PlatformMap = "ruralline_legacy"
	Metrostroi.CurrentMap = "ruralline_legacy"
	
else
	return
end

Metrostroi.AddCISConfig("Lakeview Transport MT-4", {
	{
		LED = {4,8,4,5,5,4},
		Name = "Market street - Rocklake",
		Loop = false,
		BlockDoors = true,
		Line = 1,
		Color = Color(134, 99, 64),
		English = true,
		{151, "Market street"},
		{153, "Aviation university"},
		{154, "Lakeview City hall"},
		{155, "White forest"},
		{156, "Urban park"},
		{157, "Rocklake"},
	}
})