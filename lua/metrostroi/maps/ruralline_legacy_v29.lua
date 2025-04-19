local Map = game.GetMap():lower() or ""
if Map:find("gm_metro_ruralline_v29") then
    Metrostroi.PlatformMap = "ruralline_legacy"
    Metrostroi.CurrentMap = "ruralline_legacy"
else
    return
end

Metrostroi.AddANSPAnnouncer("[ENG]LVP Announcer 1989 | Legacy announcer by Concord", {
    -- Global sounds
    ann_start = {"subway_announcers/global-sounds/mireo_gong_01.mp3", 1.24},
    click = {"subway_announcers/global-sounds/rri-click.mp3", 0.31},
    click1 = {"subway_announcers/asnp/click.mp3", 0.30},
    click2 = {"subway_announcers/asnp/click2.mp3", 0.10},
    announcer_ready = {"subway_announcers/global-sounds/mireo_gong_01.mp3", 1.24},
    drt_cls = {"subway_announcers/global-sounds/doors_closing/tape-doors.mp3", 4.25},
    -- Station sounds
    arr_market_street = {"subway_announcers/legacy_announcers_v29/concord-announcer/arr_market_street.mp3", 1.827000},
    next_market_street = {"subway_announcers/legacy_announcers_v29/concord-announcer/next_market_street.mp3", 2.583900},
    arr_aviation_university = {"subway_announcers/legacy_announcers_v29/concord-announcer/arr_aviation_university.mp3", 2.322900},
    next_aviation_university = {"subway_announcers/legacy_announcers_v29/concord-announcer/next_aviation_university.mp3", 3.053700},
    arr_city_hall = {"subway_announcers/legacy_announcers_v29/concord-announcer/arr_city_hall.mp3", 1.696500},
    next_city_hall = {"subway_announcers/legacy_announcers_v29/concord-announcer/next_city_hall.mp3", 2.427300},
    arr_white_forest = {"subway_announcers/legacy_announcers_v29/concord-announcer/arr_white_forest.mp3", 1.983600},
    arr_white_forest_last = {"subway_announcers/legacy_announcers_v29/concord-announcer/arr_white_forest_last.mp3", 4.071600},
    next_white_forest = {"subway_announcers/legacy_announcers_v29/concord-announcer/next_white_forest.mp3", 2.714400},
    arr_urban_park = {"subway_announcers/legacy_announcers_v29/concord-announcer/arr_urban_park.mp3", 1.827000},
    next_urban_park = {"subway_announcers/legacy_announcers_v29/concord-announcer/next_urban_park.mp3", 2.557800},
    arr_rocklake = {"subway_announcers/legacy_announcers_v29/concord-announcer/arr_rocklake.mp3", 3.915000},
    next_rocklake = {"subway_announcers/legacy_announcers_v29/concord-announcer/next_rocklake.mp3", 2.583900},
}, {
    {
        LED = {3, 8, 5, 5, 4, 5},
        Name = "MT-4 Market St. Line",
        Loop = false,
        spec_last = {"announcer_ready"},
        spec_wait = {"announcer_ready"},
        {
            151,
            "Market St.",
            arrlast = {{nil}, {"arr_market_street", "click"}},
            dep = {{"drt_cls", 0.5, "next_aviation_university", "click"}, {nil}},
            have_inrerchange = true,
            right_doors = true,
        },
        {
            153,
            "Aviation Uni.",
            arr = {{"arr_aviation_university"}, {"arr_aviation_university", "click"}},
            dep = {{"drt_cls", 0.5, "next_city_hall"}, {"drt_cls", 0.5, "next_market_street", "click"}},
            right_doors = true,
        },
        {
            154,
            "Lakeview Cth",
            arr = {{"arr_city_hall"}, {"arr_city_hall", "click"}},
            dep = {{"drt_cls", 0.5, "next_white_forest", "click"}, {"drt_cls", 0.5, "next_aviation_university", "click"}},
            right_doors = true,
        },
        {
            155,
            "White Forest",
            arr = {{"arr_white_forest"}, {"arr_white_forest", "click"}},
            arrlast = {{"arr_white_forest_last"}, {"arr_white_forest_last", "click"}},
            dep = {{"drt_cls", 0.5, "next_urban_park"}, {"drt_cls", 0.5, "next_city_hall", "click"}},
            ignorelast = true,
            right_doors = true,
        },
        {
            156,
            "Urban Park",
            arr = {{"arr_urban_park"}, {"arr_urban_park", "click"}},
            dep = {{"drt_cls", 0.5, "next_rocklake"}, {"drt_cls", 0.5, "next_white_forest", "click"}},
            have_inrerchange = true,
            right_doors = true,
        },
        {
            157,
            "Rocklake",
            arrlast = {{"arr_rocklake", "click"}, {nil}},
            dep = {{nil,}, {"drt_cls", 0.5, "next_urban_park", "click"}},
            have_inrerchange = true,
            right_doors = true,
        }
    }
})

Metrostroi.AddANSPAnnouncer("[ENG] LVP announcer 1995 | Trocki", {
    asnp = true,
    -- Announcer starting files
    ann_start = {"subway_announcers/global-sounds/mireo_gong_01.mp3", 1.24},
    click = {"subway_announcers/global-sounds/rri-click.mp3", 0.31},
    click1 = {"subway_announcers/asnp/click.mp3", 0.30},
    click2 = {"subway_announcers/asnp/click2.mp3", 0.10},
    announcer_ready = {"subway_announcers/global-sounds/mireo_gong_01.mp3", 1.24},
    -- Doors closing
    dro_cls = {"subway_announcers/global-sounds/doors_closing/old-doors.mp3", 4.54},
    --dro_cls = {"subway_announcers/global-sounds/doors_closing/futr-doors.mp3",2.40},
    --dro_cls = {"subway_announcers/global-sounds/doors_closing/tape-doors.mp3",4.25},
    -- Normal Announcer files
    spc1 = {"subway_announcers/legacy_announcers_v29/trocki_announcer/special_1.mp3", 4.15},
    fault = {"subway_announcers/legacy_announcers_v29/trocki_announcer/special_2.mp3", 4.60},
    tis = {"subway_announcers/legacy_announcers_v29/trocki_announcer/this_is_station.mp3", 1.41},
    eol = {"subway_announcers/legacy_announcers_v29/trocki_announcer/end_of_line.mp3", 3.32},
    next_st = {"subway_announcers/legacy_announcers_v29/trocki_announcer/next_station.mp3", 2.17},
    market = {"subway_announcers/legacy_announcers_v29/trocki_announcer/market_street.mp3", 1.88},
    aviation = {"subway_announcers/legacy_announcers_v29/trocki_announcer/aviation.mp3", 2.12},
    city = {"subway_announcers/legacy_announcers_v29/trocki_announcer/city_hall.mp3", 1.75},
    white = {"subway_announcers/legacy_announcers_v29/trocki_announcer/white_forest.mp3", 1.85},
    urban = {"subway_announcers/legacy_announcers_v29/trocki_announcer/urban_park.mp3", 1.59},
    rocklake = {"subway_announcers/legacy_announcers_v29/trocki_announcer/rocklake.mp3", 1.38},
}, {
    {
        LED = {3, 8, 5, 5, 4, 5},
        Name = "MT-4 Market St. Line",
        Loop = false,
        spec_last = {"ann_start", "click"},
        spec_wait = {"ann_start", "fault"},
        BlockDoors = true,
        {
            151,
            "Market St.",
            arrlast = {{nil}, {"ann_start", "tis", "market", 0.3, "eol", 0.3, "spec1", "click"}},
            dep = {{"ann_start", "dro_cls", 1.0, "next_st", "aviation", "click"}, {nil}},
            have_inrerchange = true,
            right_doors = true,
        },
        {
            153,
            "Aviation Uni.",
            arr = {{"ann_start", "tis", "aviation", "click"}, {"ann_start", "tis", "aviation", "click"}},
            dep = {{"ann_start", "dro_cls", 1.0, "next_st", "city", "click"}, {"ann_start", "dro_cls", 1.0, "next_st", "market", "click"}},
            arrlast = {{"ann_start", "tis", "aviation", "eol", "spec1", "click"}, {"ann_start", "tis", "aviation", "eol", "spec1", "click"}},
            not_last = {2, "eol", "aviation"},
            right_doors = true,
        },
        {
            154,
            "Lakeview Cth",
            arr = {{"ann_start", "tis", "city", "click"}, {"ann_start", "tis", "city", "click"}},
            dep = {{"ann_start", "dro_cls", 0.5, "next_st", "white", "click"}, {"ann_start", "dro_cls", 0.5, "next_st", "aviation", "click"}},
            right_doors = true,
        },
        {
            155,
            "White Forest",
            arr = {{"ann_start", "tis", "white", "click"}, {"ann_start", "tis", "white", "click"}},
            dep = {{"ann_start", "dro_cls", 1.0, "next_st", "urban", "click"}, {"ann_start", "dro_cls", 1.0, "next_st", "city", "click"}},
            arrlast = {{"ann_start", "tis", "white", 0.3, "eol", 0.3, "spec1", "click"}, {"ann_start", "tis", "white", 0.3, "eol", 0.3, "spec1", "click"}},
            not_last = {2, "eol", "white"},
            right_doors = true,
        },
        {
            156,
            "Urban Park",
            arr = {{"ann_start", "tis", "urban", "click"}, {"ann_start", "tis", "urban", "click"}},
            dep = {{"ann_start", "dro_cls", 0.5, "next_st", "rocklake", "click"}, {"ann_start", "dro_cls", 0.5, "next_st", "white", "click"}},
            arrlast = {{"ann_start", "tis", "urban", 0.3, "eol", 0.3, "spec1", "click"}, {"ann_start", "tis", "urban", 0.3, "eol", 0.3, "spec1", "click"}},
            not_last = {2, "eol", "urban"},
            have_inrerchange = true,
            right_doors = true,
        },
        {
            157,
            "Rocklake",
            arrlast = {{"ann_start", "tis", "rocklake", "eol", "spec1", "click"}, {nil}},
            dep = {{nil}, {"ann_start", "dro_cls", 0.5, "next_st", "urban", "click"}},
            have_inrerchange = true,
            right_doors = true,
        }
    }
})

Metrostroi.AddANSPAnnouncer("[ENG] LVP announcer 1995 | Rekrut Kurbel", {
    asnp = true,
    -- Announcer ready sounds
    click1 = {"subway_announcers/asnp/boiko_new/click1.mp3", 0.5},
    click2 = {"subway_announcers/asnp/boiko_new/click2.mp3", 0.3},
    click3 = {"subway_announcers/asnp/boiko_new/click3.mp3", 0.3},
    announcer_ready = {"subway_announcers/v3_announcers/rk_announcer/RL_RK_announcer_ready.mp3", 3.657},
    -- Doors closing.
    doors_closing = {"subway_announcers/v3_announcers/rk_announcer/RL_RK_doors_closing.mp3", 2.612},
    -- Special announcers.
    next_station = {"subway_announcers/v3_announcers/rk_announcer/RL_RK_next_station.mp3", 1.405},
    station = {"subway_announcers/v3_announcers/rk_announcer/RL_RK_station.mp3", 1.033},
    platformL = {"subway_announcers/v3_announcers/rk_announcer/RL_RK_platformL.mp3", 1.985},
    platformR = {"subway_announcers/v3_announcers/rk_announcer/RL_RK_platformR.mp3", 1.939},
    terminates_at = {"subway_announcers/v3_announcers/rk_announcer/RL_RK_terminates_at.mp3", 1.788},
    terminates_here = {"subway_announcers/v3_announcers/rk_announcer/RL_RK_terminates_here.mp3", 4.287},
    spec_belongings = {"subway_announcers/v3_announcers/rk_announcer/RL_RK_spec_belongings.mp3", 4.941},
    spec_belongings2 = {"subway_announcers/v3_announcers/rk_announcer/RL_RK_spec_belongings2.mp3", 3.681},
    spec_emergency = {"subway_announcers/v3_announcers/rk_announcer/RL_RK_spec_emergency.mp3", 9.120},
    spec_handrails = {"subway_announcers/v3_announcers/rk_announcer/RL_RK_spec_handrails.mp3", 3.902},
    spec_terminus = {"subway_announcers/v3_announcers/rk_announcer/RL_RK_spec_terminus.mp3", 4.271},
    spec_train_depart = {"subway_announcers/v3_announcers/rk_announcer/RL_RK_spec_train_depart.mp3", 6.005},
    spec_train_stop = {"subway_announcers/v3_announcers/rk_announcer/RL_RK_spec_train_stop.mp3", 7.226},
    -- Stations.
    RL = {"subway_announcers/v3_announcers/rk_announcer/RL_RK_RL.mp3", 1.010},
    UP = {"subway_announcers/v3_announcers/rk_announcer/RL_RK_UP.mp3", 1.114},
    WF = {"subway_announcers/v3_announcers/rk_announcer/RL_RK_WF.mp3", 1.033},
    CH = {"subway_announcers/v3_announcers/rk_announcer/RL_RK_CH.mp3", 0.894},
    AV = {"subway_announcers/v3_announcers/rk_announcer/RL_RK_AV.mp3", 1.800},
    MS = {"subway_announcers/v3_announcers/rk_announcer/RL_RK_MS.mp3", 1.149},
}, {
    {
        LED = {3, 8, 5, 5, 4, 5},
        Name = "MT-4 Market St. Line",
        Loop = false,
        spec_last = {"spec_terminus", 0.1, "spec_belongings2"},
        spec_wait = {{"spec_train_stop"}, {"spec_train_depart"}},
        BlockDoors = true,
        {
            151,
            "Market St.",
            arrlast = {{nil}, {"station", "MS", "platformR", "terminates_here", 0.1, "spec_belongings"}, "MS"},
            dep = {{"doors_closing", 0.25, "next_station", "AV", 0.1, "spec_handrails"}, {nil}},
            have_inrerchange = true,
            right_doors = true,
        },
        {
            153,
            "Aviation Uni.",
            arr = {{"station", "AV", "platformR"}, {"station", "AV", "platformR"}},
            dep = {{"doors_closing", 0.25, "next_station", "CH"}, {"doors_closing", 0.25, "next_station", "MS", 0.1, "spec_handrails"}},
            arrlast = {{nil}, {"station", "AV", "platformR", "terminates_here", 0.1, "spec_belongings"}, "AV"},
            not_last = {2, "terminates_at", "AV"},
            right_doors = true,
        },
        {
            154,
            "Lakeview Cth",
            arr = {{"station", "CH", "platformR", 0.1, "spec_belongings"}, {"station", "CH", "platformR", 0.1, "spec_belongings"}},
            dep = {{"doors_closing", 0.25, "next_station", "WF", 0.1, "spec_emergency"}, {"doors_closing", 0.25, "next_station", "AV"}},
            right_doors = true,
        },
        {
            155,
            "White Forest",
            arr = {{"station", "WF", "platformR"}, {"station", "WF", "platformR"}},
            dep = {{"doors_closing", 0.25, "next_station", "UP"}, {"doors_closing", 0.25, "next_station", "CH", 0.1, "spec_emergency"}},
            arrlast = {{"station", "WF", "platformR", "terminates_here", 0.1, "spec_belongings"}, {"station", "WF", "platformR", "terminates_here", 0.1, "spec_belongings"}, "WF"},
            not_last = {2, "terminates_at", "WF"},
            right_doors = true,
        },
        {
            156,
            "Urban Park",
            arr = {{"station", "UP", "platformR"}, {"station", "UP", "platformR"}},
            dep = {{"doors_closing", 0.25, "next_station", "RL", 0.1, "spec_handrails"}, {"doors_closing", 0.25, "next_station", "WF"}},
            arrlast = {{"station", "UP", "platformR", "terminates_here", 0.1, "spec_belongings"}, {nil}},
            not_last = {2, "terminates_at", "UP"},
            have_inrerchange = true,
            right_doors = true,
        },
        {
            157,
            "Rocklake",
            arrlast = {{"station", "RL", "platformR", "terminates_here", 0.1, "spec_belongings"}, {nil}, "RL"},
            dep = {{nil}, {"doors_closing", 0.25, "next_station", "UP", 0.1, "spec_handrails"}},
            have_inrerchange = true,
            right_doors = true,
        }
    }
})

-- UPO / SARMAT Announcer
-- No Sarmat, due it's mixing up with the UPO.
Metrostroi.SetUPOAnnouncer({
    --Announcer Startup
    name = "UPO ruralline",
    tone = {"subway_announcers/sarmat_upo/tone.mp3", 1.1},
    click1 = {"subway_announcers/upo/click1.mp3", 0.3},
    click2 = {"subway_announcers/upo/click2.mp3", 0.1},
    --Stations
    AVI = {"subway_announcers/ballistic_announcer/stations/aviation_university.mp3", 2.27},
    CIT = {"subway_announcers/ballistic_announcer/stations/cityhall.mp3", 1.36},
    MAR = {"subway_announcers/ballistic_announcer/stations/market_street.mp3", 1.28},
    ROC = {"subway_announcers/ballistic_announcer/stations/rocklake.mp3", 1.10},
    URB = {"subway_announcers/ballistic_announcer/stations/urban_park.mp3", 1.33},
    WHI = {"subway_announcers/ballistic_announcer/stations/white_forest.mp3", 1.57},
    --Station Commands
    NEXIS = {"subway_announcers/ballistic_announcer/special-files/the_next_station_is.mp3", 2.32},
    THIIS = {"subway_announcers/ballistic_announcer/special-files/this_is.mp3", 1.33},
    TERHE = {"subway_announcers/ballistic_announcer/special-files/this_train_terminates_here.mp3", 2.22},
    --Warning Bell
    st_cm = {"subway_announcers/global-sounds/doors_closing/old-doors.mp3", 4.54},
}, {
    {
        151,
        "Market Street",
        arrlast = {nil, {"THIIS", "MAR", "TERHE"}},
        dep = {{"NEXIS", "AVI", 0.5, "st_cm"}, nil},
        tone = "tone",
        dist = 50,
        noises = {1, 2, 3},
        noiserandom = 0.2,
        right_doors = true
    },
    {
        153,
        "Aviation University",
        arr = {{"THIIS", "AVI"}, {"THIIS", "AVI"}},
        dep = {{"NEXIS", "CIT", 0.2, "st_cm"}, {"NEXIS", "MAR", 0.2, "st_cm"}},
        tone = "tone",
        dist = 50,
        noises = {1, 2, 3},
        noiserandom = 0.2,
        right_doors = true,
    },
    {
        154,
        "Lakeview Cth",
        arr = {{"THIIS", "CIT"}, {"THIIS", "CIT"}},
        dep = {{"NEXIS", "WHI", 0.2, "st_cm"}, {"NEXIS", "AVI", 0.2, "st_cm"}},
        tone = "tone",
        dist = 50,
        noises = {1, 2, 3},
        noiserandom = 0.2,
        right_doors = true
    },
    {
        155,
        "White Forest",
        arr = {{"THIIS", "WHI"}, {"THIIS", "WHI"}},
        dep = {{"NEXIS", "URB", 0.2, "st_cm"}, {"NEXIS", "CIT", 0.2, "st_cm"}},
        tone = "tone",
        dist = 50,
        noises = {1, 2, 3},
        noiserandom = 0.2,
        right_doors = true
    },
    {
        156,
        "Urban Park",
        arr = {{"THIIS", "URB"}, {"THIIS", "URB"}},
        dep = {{"NEXIS", "ROC", 0.2, "st_cm"}, {"NEXIS", "WHI", 0.2, "st_cm"}},
        tone = "tone",
        dist = 50,
        noises = {1, 2, 3},
        noiserandom = 0.2,
        right_doors = true
    },
    {
        157,
        "Rocklake",
        arrlast = {{"THIIS", "ROC", "TERHE"}, {nil}},
        dep = {nil, {"NEXIS", "URB", 0.2, "st_cm"}},
        tone = "tone",
        dist = 50,
        noises = {1, 2, 3},
        noiserandom = 0.2,
        right_doors = true
    }
})

-- RIU Announcers
Metrostroi.AddANSPAnnouncer("[ENG] LVP announcer 1995 | Rekrut Kurbel (Tape)", {
    riu = true,
    -- Announcer ready sounds
    click1 = {"subway_announcers/riu/boiko_new/click1.mp3", 0.5},
    click2 = {"subway_announcers/riu/boiko_new/click2.mp3", 0.3},
    click3 = {"subway_announcers/riu/boiko_new/click3.mp3", 0.3},
    click_start = {"subway_announcers/riu/boiko_new/click1.mp3", 0.5},
    click_end = {"subway_announcers/riu/boiko_new/click3.mp3", 0.3},
    announcer_ready = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_announcer_ready.mp3", 3.756},
    -- Doors closing.
    doors_closing = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_doors_closing.mp3", 2.537},
    -- Special announcers.
    next_station = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_next_station.mp3", 1.422},
    station = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_station.mp3", 1.080},
    platformL = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_platformL.mp3", 1.939},
    platformR = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_platformR.mp3", 1.985},
    terminates_at = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_terminates_at.mp3", 1.741},
    terminates_here = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_terminates_here.mp3", 4.319},
    spec_belongings = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_spec_belongings.mp3", 4.946},
    spec_belongings2 = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_spec_belongings2.mp3", 3.748},
    spec_emergency = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_spec_emergency.mp3", 9.091},
    spec_handrails = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_spec_handrails.mp3", 3.947},
    spec_terminus = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_spec_terminus.mp3", 4.110},
    spec_train_depart = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_spec_train_depart.mp3", 5.956},
    spec_train_stop = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_spec_train_stop.mp3", 7.256},
    -- Stations.
    RL = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_RL.mp3", 0.952},
    UP = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_UP.mp3", 1.115},
    WF = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_WF.mp3", 1.033},
    CH = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_CH.mp3", 0.859},
    AV = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_AV.mp3", 1.869},
    MS = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_MS.mp3", 1.051},
}, {
    {
        LED = {3, 8, 5, 5, 4, 5},
        Name = "MT-4 Market St. Line",
        Loop = false,
        spec_last = {"spec_terminus", 0.1, "spec_belongings2"},
        spec_wait = {{"spec_train_stop"}, {"spec_train_depart"}},
        BlockDoors = true,
        {
            151,
            "Market St.",
            arrlast = {{nil}, {"station", "MS", "platformR", "terminates_here", 0.1, "spec_belongings"}, "MS"},
            dep = {{"doors_closing", 0.25, "next_station", "AV", 0.1, "spec_handrails"}, {nil}},
            have_inrerchange = true,
            right_doors = true,
        },
        {
            153,
            "Aviation Uni.",
            arr = {{"station", "AV", "platformR"}, {"station", "AV", "platformR"}},
            dep = {{"doors_closing", 0.25, "next_station", "CH"}, {"doors_closing", 0.25, "next_station", "MS", 0.1, "spec_handrails"}},
            arrlast = {{"station", "AV", "platformR", "terminates_here", 0.1, "spec_belongings"}, {"station", "AV", "platformR", "terminates_here", 0.1, "spec_belongings"}, "AV"},
            not_last = {2, "terminates_at", "AV"},
            have_inrerchange = true,
            right_doors = true,
        },
        {
            154,
            "Lakeview Cth",
            arr = {{"station", "CH", "platformR", 0.1, "spec_belongings"}, {"station", "CH", "platformR", 0.1, "spec_belongings"}},
            dep = {{"doors_closing", 0.25, "next_station", "WF", 0.1, "spec_emergency"}, {"doors_closing", 0.25, "next_station", "AV"}},
            have_inrerchange = true,
            right_doors = true,
        },
        {
            155,
            "White Forest",
            arr = {{"station", "WF", "platformR"}, {"station", "WF", "platformR"}},
            dep = {{"doors_closing", 0.25, "next_station", "UP"}, {"doors_closing", 0.25, "next_station", "CH", 0.1, "spec_emergency"}},
            arrlast = {{"station", "WF", "platformR", "terminates_here", 0.1, "spec_belongings"}, {"station", "WF", "platformR", "terminates_here", 0.1, "spec_belongings"}, "WF"},
            not_last = {2, "terminates_at", "WF"},
            have_inrerchange = true,
            right_doors = true,
        },
        {
            156,
            "Urban Park",
            arr = {{"station", "UP", "platformR"}, {"station", "UP", "platformR"}},
            dep = {{"doors_closing", 0.25, "next_station", "RL", 0.1, "spec_handrails"}, {"doors_closing", 0.25, "next_station", "WF"}},
            arrlast = {{"station", "UP", "platformR", "terminates_here", 0.1, "spec_belongings"}, {"station", "UP", "platfromR", "terminates_here", 0.1, "spec_belongings"}, "UP"},
            not_last = {2, "terminates_at", "UP"},
            have_inrerchange = true,
            right_doors = true,
        },
        {
            157,
            "Rocklake",
            arrlast = {{"station", "RL", "platformR", "terminates_here", 0.1, "spec_belongings"}, {nil}, "RL"},
            dep = {{nil}, {"doors_closing", 0.25, "next_station", "UP", 0.1, "spec_handrails"}},
            have_inrerchange = true,
            right_doors = true,
        }
    }
})

Metrostroi.SetRRIAnnouncer({
    -- Announcer ready sounds
    click_start = {"subway_announcers/riu/boiko_new/click1.mp3", 0.5},
    click_end = {"subway_announcers/riu/boiko_new/click3.mp3", 0.3},
    announcer_ready = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_announcer_ready.mp3", 3.756},
    -- Doors closing.
    doors_closing = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_doors_closing.mp3", 2.537},
    -- Special announcers.
    next_station = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_next_station.mp3", 1.422},
    station = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_station.mp3", 1.080},
    platformL = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_platformL.mp3", 1.939},
    platformR = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_platformR.mp3", 1.985},
    terminates_at = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_terminates_at.mp3", 1.741},
    terminates_here = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_terminates_here.mp3", 4.319},
    spec_belongings = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_spec_belongings.mp3", 4.946},
    spec_belongings2 = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_spec_belongings2.mp3", 3.748},
    spec_emergency = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_spec_emergency.mp3", 9.091},
    spec_handrails = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_spec_handrails.mp3", 3.947},
    spec_terminus = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_spec_terminus.mp3", 4.110},
    spec_train_depart = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_spec_train_depart.mp3", 5.956},
    spec_train_stop = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_spec_train_stop.mp3", 7.256},
    -- Stations.
    RL = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_RL.mp3", 0.952},
    UP = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_UP.mp3", 1.115},
    WF = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_WF.mp3", 1.033},
    CH = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_CH.mp3", 0.859},
    AV = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_AV.mp3", 1.869},
    MS = {"subway_announcers/v3_announcers/rk_announcer/riu/RL_RK_RIU_MS.mp3", 1.051},
}, {
    {
        Name = "MT-4 Market St. Line",
        Loop = false,
        spec_last = {"spec_terminus", 0.1, "spec_belongings2"},
        spec_wait = {{"spec_train_stop"}, {"spec_train_depart"}},
        {
            151,
            "Market St.",
            arrlast = {{nil}, {"station", "MS", "platformR", "terminates_here", 0.1, "spec_belongings"}, "MS"},
            dep = {{"doors_closing", 0.25, "next_station", "AV", 0.1, "spec_handrails"}, {nil}},
            have_inrerchange = true,
            right_doors = true,
        },
        {
            153,
            "Aviation Uni.",
            arr = {{"station", "AV", "platformR"}, {"station", "AV", "platformR"}},
            dep = {{"doors_closing", 0.25, "next_station", "CH"}, {"doors_closing", 0.25, "next_station", "MS", 0.1, "spec_handrails"}},
            arrlast = {{"station", "AV", "platformR", "terminates_here", 0.1, "spec_belongings"}, {"station", "AV", "platformR", "terminates_here", 0.1, "spec_belongings"}, "AV"},
            not_last = {2, "terminates_at", "AV"},
            have_inrerchange = true,
            right_doors = true,
        },
        {
            154,
            "Lakeview Cth",
            arr = {{"station", "CH", "platformR", 0.1, "spec_belongings"}, {"station", "CH", "platformR", 0.1, "spec_belongings"}},
            dep = {{"doors_closing", 0.25, "next_station", "WF", 0.1, "spec_emergency"}, {"doors_closing", 0.25, "next_station", "AV"}},
            have_inrerchange = true,
            right_doors = true,
        },
        {
            155,
            "White Forest",
            arr = {{"station", "WF", "platformR"}, {"station", "WF", "platformR"}},
            dep = {{"doors_closing", 0.25, "next_station", "UP"}, {"doors_closing", 0.25, "next_station", "CH", 0.1, "spec_emergency"}},
            arrlast = {{"station", "WF", "platformR", "terminates_here", 0.1, "spec_belongings"}, {"station", "WF", "platformR", "terminates_here", 0.1, "spec_belongings"}, "WF"},
            not_last = {2, "terminates_at", "WF"},
            have_inrerchange = true,
            right_doors = true,
        },
        {
            156,
            "Urban Park",
            arr = {{"station", "UP", "platformR"}, {"station", "UP", "platformR"}},
            dep = {{"doors_closing", 0.25, "next_station", "RL", 0.1, "spec_handrails"}, {"doors_closing", 0.25, "next_station", "WF"}},
            arrlast = {{"station", "UP", "platformR", "terminates_here", 0.1, "spec_belongings"}, {"station", "UP", "platfromR", "terminates_here", 0.1, "spec_belongings"}, "UP"},
            not_last = {2, "terminates_at", "UP"},
            have_inrerchange = true,
            right_doors = true,
        },
        {
            157,
            "Rocklake",
            arrlast = {{"station", "RL", "platformR", "terminates_here", 0.1, "spec_belongings"}, {nil}, "RL"},
            dep = {{nil}, {"doors_closing", 0.25, "next_station", "UP", 0.1, "spec_handrails"}},
            have_inrerchange = true,
            right_doors = true,
        }
    }
})

-- Station texture plates.
-- 81-700 A type destination boards
Metrostroi.AddLastStationTex("700", 999, "metrostroi_skins/destination_am/999-blank") -- Blank Texture.
Metrostroi.AddLastStationTex("700", 998, "metrostroi_skins/destination_am/998-ofs") -- Not in service
Metrostroi.AddLastStationTex("700", 997, "metrostroi_skins/destination_am/997-museumtr") -- museum train
Metrostroi.AddLastStationTex("700", 998, "metrostroi_skins/destination_am/996-worktrain") -- 
Metrostroi.AddLastStationTex("700", 906, "metrostroi_skins/destination_am/906-rl") -- Market street
Metrostroi.AddLastStationTex("700", 905, "metrostroi_skins/destination_am/905-up") -- Ravenholm
Metrostroi.AddLastStationTex("700", 904, "metrostroi_skins/destination_am/904-wf") -- Aviation university
Metrostroi.AddLastStationTex("700", 902, "metrostroi_skins/destination_am/902-avi") -- White forest
Metrostroi.AddLastStationTex("700", 901, "metrostroi_skins/destination_am/901-raven") -- Urban park
Metrostroi.AddLastStationTex("700", 900, "metrostroi_skins/destination_am/900-ms") -- rocklake
-- 702 D Types destination boards.
Metrostroi.AddLastStationTex("702", 999, "metrostroi_skins/81-702_names/999-nis-d") -- Not in service
Metrostroi.AddLastStationTex("702", 998, "metrostroi_skins/81-702_names/998-blank-d") -- Blank Texture.
Metrostroi.AddLastStationTex("702", 900, "metrostroi_skins/81-702_names/900-ms-d") -- Market street
Metrostroi.AddLastStationTex("702", 901, "metrostroi_skins/81-702_names/901-raven-d") -- Ravenholm
Metrostroi.AddLastStationTex("702", 902, "metrostroi_skins/81-702_names/902-avi-d") -- Aviation university
Metrostroi.AddLastStationTex("702", 904, "metrostroi_skins/81-702_names/904-wh-d") -- White forest
Metrostroi.AddLastStationTex("702", 905, "metrostroi_skins/81-702_names/905-up-d") -- Urban park
Metrostroi.AddLastStationTex("702", 906, "metrostroi_skins/81-702_names/906-rl-d") -- rocklake
-- 710
Metrostroi.AddLastStationTex("710", 999, "metrostroi_skins/81-717_names/999-blank") -- Blank
Metrostroi.AddLastStationTex("710", 998, "metrostroi_skins/81-710_names/998-ofs") -- Out Of Service
Metrostroi.AddLastStationTex("710", 997, "metrostroi_skins/81-710_names/997-museumtr") -- Museum Train
Metrostroi.AddLastStationTex("710", 996, "metrostroi_skins/81-710_names/996-worktrain") -- Work Train
Metrostroi.AddLastStationTex("710", 900, "metrostroi_skins/81-710_names/900-ms") -- Market street
Metrostroi.AddLastStationTex("710", 901, "metrostroi_skins/81-710_names/901-raven") -- Ravenholm
Metrostroi.AddLastStationTex("710", 902, "metrostroi_skins/81-710_names/902-avi") -- Aviation university
Metrostroi.AddLastStationTex("710", 904, "metrostroi_skins/81-710_names/904-wf") -- White forest
Metrostroi.AddLastStationTex("710", 905, "metrostroi_skins/81-710_names/905-up") -- Urban park
Metrostroi.AddLastStationTex("710", 906, "metrostroi_skins/81-710_names/906-rl") -- rocklake
--717
Metrostroi.AddLastStationTex("717", 999, "metrostroi_skins/81-717_schemes/999-blank") -- Blank
Metrostroi.AddLastStationTex("717", 998, "metrostroi_skins/81-717_schemes/998-ofs") -- Out Of Service
Metrostroi.AddLastStationTex("717", 997, "metrostroi_skins/81-717_schemes/997-museumtr") -- Museum Train
Metrostroi.AddLastStationTex("717", 996, "metrostroi_skins/81-717_schemes/996-worktrain") -- Work Train
Metrostroi.AddLastStationTex("717", 900, "metrostroi_skins/81-717_schemes/900-ms") -- Market street
Metrostroi.AddLastStationTex("717", 901, "metrostroi_skins/81-717_schemes/901-raven") -- Ravenholm
Metrostroi.AddLastStationTex("717", 902, "metrostroi_skins/81-717_schemes/902-avi") -- Aviation university
Metrostroi.AddLastStationTex("717", 904, "metrostroi_skins/81-717_schemes/904-wf") -- White forest
Metrostroi.AddLastStationTex("717", 905, "metrostroi_skins/81-717_schemes/905-up") -- Urban park
Metrostroi.AddLastStationTex("717", 906, "metrostroi_skins/81-717_schemes/906-rl") -- rocklake
--720
Metrostroi.AddLastStationTex("720", 999, "metrostroi_skins/81-717_schemes/999-blank") -- Blank
Metrostroi.AddLastStationTex("720", 998, "metrostroi_skins/81-717_schemes/998-ofs") -- Out Of Service
Metrostroi.AddLastStationTex("720", 997, "metrostroi_skins/81-717_schemes/997-museumtr") -- Museum Train
Metrostroi.AddLastStationTex("720", 996, "metrostroi_skins/81-717_schemes/996-worktrain") -- Work Train
Metrostroi.AddLastStationTex("720", 900, "metrostroi_skins/81-717_schemes/900-ms") -- Market street
Metrostroi.AddLastStationTex("720", 901, "metrostroi_skins/81-717_schemes/901-raven") -- Ravenholm
Metrostroi.AddLastStationTex("720", 902, "metrostroi_skins/81-717_schemes/902-avi") -- Aviation university
Metrostroi.AddLastStationTex("720", 904, "metrostroi_skins/81-717_schemes/904-wf") -- White forest
Metrostroi.AddLastStationTex("720", 905, "metrostroi_skins/81-717_schemes/905-up") -- Urban park
Metrostroi.AddLastStationTex("720", 906, "metrostroi_skins/81-717_schemes/906-rl") -- rocklake
Metrostroi.AddPassSchemeTex("717_new", "Ruralline_1995", {"metrostroi_skins/81-717_schemes/717-ruralline_v3-map",})
Metrostroi.AddPassSchemeTex("720", "Ruralline_1995", {"metrostroi_skins/81-720_schemes/720-linemap-ruralline-v3-left", "metrostroi_skins/81-720_schemes/720-linemap-ruralline-v3-right",})
Metrostroi.AddPassSchemeTex("722", "Ruralline_1995", {"metrostroi_skins/81-722_schemes/ruralline_1995r", "metrostroi_skins/81-722_schemes/ruralline-1995",})
Metrostroi.TickerAdverts = {"DEAR PASSENGERS, WHEN LEAVING THE TRAIN, PLEASE DO NOT FORGET TO TAKE YOUR BELONGINGS WITH YOU.", "FROM THE 6TH OF JULY 1995 ONWARDS, THE USAGE OF THE LAKEVIEW SUBWAY WILL BE FREE OF CHARGE.", "THE REALIGNMENT OF THE MARKET STREET LINE BETWEEN WHITE FOREST AND ROCKLAKE IS ESTIMATED TO OPEN BY JUNE 1997. THE STATIONS WHITE FOREST AND URBAN PARK WILL BE CLOSED AND REPLACED.", "DEAR PASSENGERS, FOR YOUR OWN SAFETY, PLEASE HOLD ON TO THE HANDRAILS.", "FROM THE 6TH OF JULY 1995 ONWARDS, THE UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE.......................................", ".",}