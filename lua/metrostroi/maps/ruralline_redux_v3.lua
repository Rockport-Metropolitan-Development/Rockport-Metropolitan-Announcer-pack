local Map = game.GetMap():lower() or ""
if Map:find("gm_metro_ruralline_v3") then
    Metrostroi.PlatformMap = "ruralline_redux"
    Metrostroi.CurrentMap = "ruralline_redux"
    print("======Loaded announcers for Ruralline_v3======")
else
    return
end

-- V3 ASNP announcers.
print("RMDT Announcer loader: Valentin's announcer & routes (V3)")
--[[ 
- 0.2s between English & German voices.
- 0.5s ~ 1.0s before doors closing beeps.
- 1.0s after doors closed beeps before next station announcer.
- 2.0s between special announcements when leaving stations.
]]
-- //TODO Check on V3 platfroms what require "mind the gap" warning.

-- Stations what need mind the gap:  aviation, White, Urban, 
Metrostroi.AddANSPAnnouncer("[ENG + GER] LVP announcer 1995 | Valentin", {
    asnp = true,
    -- Announcer starting files
    ann_start = {"subway_announcers/global-sounds/mireo_gong_01.mp3", 1.24},
    click = {"subway_announcers/global-sounds/rri-click.mp3", 0.31},
    click1 = {"subway_announcers/asnp/click.mp3", 0.30},
    click2 = {"subway_announcers/asnp/click2.mp3", 0.10},
    announcer_ready = {"subway_announcers/global-sounds/mireo_gong_01.mp3", 1.24},
    -- Doors closing
    dro_cls = {"subway_announcers/global-sounds/doors_closing/old-doors.mp3", 4.54},
    -- Special announcer files
    doors_both = {"subway_announcers/v3_announcers/valentin_announcer/special/doors_both.mp3", 2.50},
    doors_both_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/doors_both_ger.mp3", 2.25},
    doors_closing = {"subway_announcers/v3_announcers/valentin_announcer/special/doors_closing.mp3", 2.34},
    doors_closing_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/doors_closing_ger.mp3", 1.54},
    doors_left = {"subway_announcers/v3_announcers/valentin_announcer/special/doors_left.mp3", 2.77},
    doors_left_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/doors_left_ger.mp3", 1.48},
    doors_right = {"subway_announcers/v3_announcers/valentin_announcer/special/doors_right.mp3", 2.91},
    doors_right_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/doors_right_ger.mp3", 1.55},
    mind_gap = {"subway_announcers/v3_announcers/valentin_announcer/special/mind_gap.mp3", 3.36},
    mind_gap_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/mind_gap_ger.mp3", 4.91},
    mind_gap_step = {"subway_announcers/v3_announcers/valentin_announcer/special/mind_gap_step.mp3", 4.31},
    mind_gap_step_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/mind_gap_step_ger.mp3", 5.93},
    mind_step = {"subway_announcers/v3_announcers/valentin_announcer/special/mind_gap_step.mp3", 3.62},
    mind_step_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/mind_gap_step_ger.mp3", 5.34},
    nx_st = {"subway_announcers/v3_announcers/valentin_announcer/special/next_is.mp3", 1.79},
    nx_st_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/next_is_ger.mp3", 1.47},
    platform_both = {"subway_announcers/v3_announcers/valentin_announcer/special/platform_both.mp3", 2.30},
    platform_both_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/platform_both_ger.mp3", 2.37},
    platform_left = {"subway_announcers/v3_announcers/valentin_announcer/special/platform_left.mp3", 1.78},
    platform_left_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/platform_left_ger.mp3", 2.37},
    platform_right = {"subway_announcers/v3_announcers/valentin_announcer/special/platform_right.mp3", 1.93},
    platform_right_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/platform_right_ger.mp3", 2.47},
    ravenholm_closed = {"subway_announcers/v3_announcers/valentin_announcer/special/ravenholm_closed.mp3", 3.62},
    ravenholm_closed_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/ravenholm_closed_ger.mp3", 5.92},
    trhm = {"subway_announcers/v3_announcers/valentin_announcer/special/terminates_here.mp3", 1.83},
    trhm_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/terminates_here_ger.mp3", 1.69},
    ths = {"subway_announcers/v3_announcers/valentin_announcer/special/this_is.mp3", 1.02},
    ths_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/this_is_ger.mp3", 0.66},
    unss = {"subway_announcers/v3_announcers/valentin_announcer/special/unscheduled_stop.mp3", 4.64},
    unss_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/unscheduled_stop_ger.mp3", 4.60},
    welc = {"subway_announcers/v3_announcers/valentin_announcer/special/welcome.mp3", 2.75},
    welc_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/welcome_ger.mp3", 4.23},
    welc_lvp = {"subway_announcers/v3_announcers/valentin_announcer/special/welcome_lvp.mp3", 3.95},
    welc_lvp_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/welcome_lvp_ger.mp3", 5.51},
    welc_rpm = {"subway_announcers/v3_announcers/valentin_announcer/special/welcome_rpm.mp3", 4.25},
    welc_rpm_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/welcome_rpm_ger.mp3", 5.48},
    -- Station files
    market = {"subway_announcers/v3_announcers/valentin_announcer/stations/market_street.mp3", 1.33},
    market_ger = {"subway_announcers/v3_announcers/valentin_announcer/stations/market_street_ger.mp3", 1.42},
    aviation_ger = {"subway_announcers/v3_announcers/valentin_announcer/stations/aviation_university_ger.mp3", 3.00},
    aviation = {"subway_announcers/v3_announcers/valentin_announcer/stations/aviation_university.mp3", 1.90},
    city = {"subway_announcers/v3_announcers/valentin_announcer/stations/city_hall.mp3", 1.10},
    city_ger = {"subway_announcers/v3_announcers/valentin_announcer/stations/city_hall_ger.mp3", 1.11},
    white = {"subway_announcers/v3_announcers/valentin_announcer/stations/white_forest.mp3", 1.28},
    white_ger = {"subway_announcers/v3_announcers/valentin_announcer/stations/white_forest_ger.mp3", 1.17},
    urban = {"subway_announcers/v3_announcers/valentin_announcer/stations/urban_park.mp3", 1.03},
    urban_ger = {"subway_announcers/v3_announcers/valentin_announcer/stations/urban_park_ger.mp3", 1.04},
    rocklake = {"subway_announcers/v3_announcers/valentin_announcer/stations/rocklake.mp3", 0.97},
    rocklake_ger = {"subway_announcers/v3_announcers/valentin_announcer/stations/rocklake_ger.mp3", 1.16},
}, {
    {
        LED = {3, 8, 5, 5, 4, 5},
        Name = "MT-4 Market St. Line",
        Loop = false,
        spec_last = {"ann_start", "dro_cls"},
        spec_wait = {"unss", 0.5, "unss_ger"},
        BlockDoors = true,
        {
            400,
            "Market St.",
            arrlast = {{nil}, {"ann_start", "ths", "market", "doors_right", 0.2, "ths_ger", "market_ger", "doors_right_ger", 0.2, "trhm", 0.2, "trhm_ger", 0.1, "click"}},
            dep = {{"doors_closing", 0.2, "doors_closing_ger", 0.5, "dro_cls", 1.0, "welc_lvp", "nx_st", "aviation", "platform_left", 0.5, "welc_lvp_ger", "nx_st_ger", "aviation_ger", "platform_left_ger", 1.0, "ravenholm_closed", 0.5, "ravenholm_closed_ger", 0.1, "click"}, {nil}},
            have_inrerchange = true,
            right_doors = true,
        },
        {
            402,
            "Aviation Uni.",
            arr = {{"ann_start", "ths", "aviation", "doors_left", 0.2, "ths_ger", "aviation_ger", "doors_left_ger", 0.1, "click"}, {"ann_start", "ths", "aviation", "doors_left", 0.2, "ths_ger", "aviation_ger", "doors_left_ger", 0.1, "click"}},
            dep = {{"doors_closing", 0.2, "doors_closing_ger", 0.5, "dro_cls", 1.0, "nx_st", "city", "platform_right", 0.2, "nx_st_ger", "city_ger", "platform_right_ger", 0.1, "click"}, {"doors_closing", 0.2, "doors_closing_ger", 0.5, "dro_cls", 2.0, "nx_st", "market", "platform_right", 0.2, "nx_st_ger", "market_ger", "platform_right_ger", 2.0, "ravenholm_closed", 0.5, "ravenholm_closed_ger", 0.1, "click"}},
            arrlast = {{nil}, {"ann_start", "ths", "aviation", "doors_left", 0.2, "ths_ger", "aviation_ger", "doors_left_ger", 0.2, "trhm", 0.2, "trhm_ger", 0.1, "click"}},
            not_last = {2, "trhm", 0.2, "trhm_ger", "aviation"},
        },
        {
            403,
            "Lakeview Cth",
            arr = {{"ann_start", "ths", "city", "doors_right", 0.2, "ths_ger", "city_ger", "doors_right_ger", 0.1, "click"}, {"ann_start", "ths", "city", "doors_right", 0.2, "ths_ger", "city_ger", "doors_right_ger", 0.1, "click"}},
            dep = {{"doors_closing", 0.2, "doors_closing_ger", 0.5, "dro_cls", 1.0, "nx_st", "white", "platform_right", 0.2, "nx_st_ger", "white_ger", "platform_right_ger", 0.1, "click"}, {"doors_closing", 0.2, "doors_closing_ger", 0.5, "dro_cls", 1.0, "nx_st", "aviation", "platform_left", 0.2, "nx_st_ger", "aviation_ger", "platform_left_ger", 0.1, "click"}},
            right_doors = true,
        },
        {
            404,
            "White Forest",
            arr = {{"ann_start", "ths", "white", "doors_right", 0.2, "ths_ger", "white_ger", "doors_right_ger", 0.1, "click"}, {"ann_start", "ths", "white", "doors_right", 0.2, "ths_ger", "white_ger", "doors_right_ger", 0.1, "click"}},
            dep = {{"doors_closing", 0.2, "doors_closing_ger", 0.5, "dro_cls", 1.3, "nx_st", "urban", "platform_right", 0.2, "nx_st_ger", "urban_ger", "platform_right_ger", 0.1, "click"}, {"doors_closing", 0.2, "doors_closing_ger", 0.5, "dro_cls", 1.0, "nx_st", "city", "platform_right", 0.2, "nx_st_ger", "city_ger", "platform_right_ger", 0.1, "click"}},
            arrlast = {{"ann_start", "ths", "white", "doors_both", 0.5, "white_ger", "doors_both_ger", 0.2, "trhm", 0.2, "trhm_ger", "click"}, {"ann_start", "ths", "white", "doors_right", 0.5, "white_ger", "doors_right_ger", 0.2, "trhm", 0.2, "trhm_ger", 0.1, "click"}},
            not_last = {2, "trhm", 0.2, "trhm_ger", "white"},
            right_doors = true,
        },
        {
            405,
            "Urban Park",
            arr = {{"ann_start", "ths", "urban", "doors_right", 0.2, "ths_ger", "urban_ger", "doors_right_ger", 0.1, "click"}, {"ann_start", "ths", "urban", "doors_right", 0.2, "ths_ger", "urban_ger", "doors_right_ger", "mind_gap_step_ger", 0.1, "click"}},
            dep = {{"doors_closing", 0.2, "doors_closing_ger", 0.5, "dro_cls", 2.0, "nx_st", "rocklake", "platform_right", 0.2, "nx_st_ger", "rocklake_ger", "platform_right_ger", 0.1, "click"}, {"doors_closing", 0.2, "doors_closing_ger", 0.5, "dro_cls", 1.5, "nx_st", "white", "platform_right", 0.2, "nx_st_ger", "white_ger", "platform_right_ger", 0.1, "click"}},
            arrlast = {{"ann_start", "ths", "urban", "doors_right", 0.5, "urban_ger", "doors_right_ger", 0.2, "trhm", 0.2, "trhm_ger", 0.1, "click"}, {nil}},
            not_last = {2, "trhm", 0.2, "trhm_ger", "urban"},
            have_inrerchange = true,
            right_doors = true,
        },
        {
            406,
            "Rocklake",
            arrlast = {{"ann_start", "ths", "rocklake", "doors_right", 0.5, "rocklake_ger", "doors_right_ger", 0.2, "trhm", 0.2, "trhm_ger", 0.1, "click"}, {nil}},
            dep = {{nil}, {"doors_closing", 0.2, "doors_closing_ger", 0.5, "dro_cls", 1.0, "welc_lvp", "nx_st", "urban", "platform_right", 0.2, "welc_lvp_ger", "nx_st_ger", "urban_ger", "platform_right_ger", 0.1, "click"}},
            have_inrerchange = true,
            right_doors = true,
        }
    }
})

-- Marius Announcer
Metrostroi.AddANSPAnnouncer("[ENG] LVP announcer 1995 | Marius", {
    asnp = true,
    -- Announcer starting files
    ann_start = {"subway_announcers/global-sounds/mireo_gong_01.mp3", 1.24},
    click = {"subway_announcers/global-sounds/rri-click.mp3", 0.31},
    click1 = {"subway_announcers/asnp/click.mp3", 0.30},
    click2 = {"subway_announcers/asnp/click2.mp3", 0.10},
    announcer_ready = {"subway_announcers/global-sounds/mireo_gong_01.mp3", 1.24},
    -- Doors closing
    --dro_cls = {"subway_announcers/global-sounds/doors_closing/old-doors.mp3",4.54},
    --dro_cls = {"subway_announcers/global-sounds/doors_closing/futr-doors.mp3",2.40},
    --dro_cls = {"subway_announcers/global-sounds/doors_closing/tape-doors.mp3",4.25},
    -- Normal Announcer files
    market = {"subway_announcers/v3_announcers/marius_mustang_announcer/normal/marketstreet.mp3", 9.49},
    aviation = {"subway_announcers/v3_announcers/marius_mustang_announcer/normal/aviationuniversity.mp3", 4.41},
    city = {"subway_announcers/v3_announcers/marius_mustang_announcer/normal/lakeviewcityhall.mp3", 3.97},
    white = {"subway_announcers/v3_announcers/marius_mustang_announcer/normal/whiteforest.mp3", 2.64},
    urban = {"subway_announcers/v3_announcers/marius_mustang_announcer/normal/urbanpark.mp3", 1.60},
    rocklake = {"subway_announcers/v3_announcers/marius_mustang_announcer/normal/rocklake.mp3", 2.87},
    -- Special announcers
    drc_cls = {"subway_announcers/v3_announcers/marius_mustang_announcer/special/doors_closing.mp3", 7.11},
    drc_lf = {"subway_announcers/v3_announcers/marius_mustang_announcer/special/exit_left.mp3", 3.44},
    drc_rh = {"subway_announcers/v3_announcers/marius_mustang_announcer/special/exit_right.mp3", 4.36},
    chime = {"subway_announcers/v3_announcers/marius_mustang_announcer/special/announcement_chime.mp3", 2.05},
    rh_pass = {"subway_announcers/v3_announcers/marius_mustang_announcer/special/no_stop_at_ravenholm.mp3", 9.12},
    terminal = {"subway_announcers/v3_announcers/marius_mustang_announcer/special/this_train_terminates_here.mp3", 3.92},
}, {
    {
        LED = {3, 8, 5, 5, 4, 5},
        Name = "MT-4 Market St. Line",
        Loop = false,
        spec_last = {"terminal", "click"},
        spec_wait = {"terminal", "click"},
        BlockDoors = true,
        {
            400,
            "Market St.",
            arrlast = {{nil}, {"chime", "market", "terminal", "drc_rh", 1.0, "click"}},
            dep = {{"drc_cls", 2.0, "rh_pass", 1.0, "click"}, {nil}},
            have_inrerchange = true,
            right_doors = true,
        },
        {
            402,
            "Aviation Uni.",
            arr = {{"chime", "aviation", "drc_lf", 1.0, "click"}, {"chime", "aviation", "drc_lf", 1.0, "click"}},
            dep = {{"drc_cls", 1.0, "click"}, {"drc_cls", 1.0, "click"}},
            arrlast = {{nil}, {"chime", "aviation", "terminal", "drc_lf", 1.0, "click"}},
            not_last = {2, "terminal", "aviation", 1.0, "click"},
        },
        {
            403,
            "Lakeview Cth",
            arr = {{"chime", "city", "drc_rh", 1.0, "click"}, {"chime", "city", "drc_rh", 1.0, "click"}},
            dep = {{"drc_cls", 1.0, "click"}, {"drc_cls", 1.0, "click"}},
            right_doors = true,
        },
        {
            404,
            "White Forest",
            arr = {{"chime", "white", "drc_rh", 1.0, "click"}, {"chime", "white", "drc_rh", 1.0, "click"}},
            dep = {{"drc_cls", 1.0, "click"}, {"drc_cls", 1.0, "click"}},
            arrlast = {{"chime", "white", "terminal", "drc_rh", 1.0, "click"}, {"chime", "white", "terminal", "drc_rh", 1.0, "click"}},
            not_last = {2, "terminal", "white", 1.0, "click"},
            right_doors = true,
        },
        {
            405,
            "Urban Park",
            arr = {{"chime", "urban", "drc_rh", 1.0, "click"}, {"chime", "urban", "drc_rh", 1.0, "click"}},
            dep = {{"drc_cls", 1.0, "click"}, {"drc_cls", 1.0, "click"}},
            arrlast = {{"chime", "urban", "terminal", "drc_rh", 1.0, "click"}, {"chime", "urban", "terminal", "drc_rh", 1.0, "click"}},
            not_last = {2, "terminal", "urban", 1.0, "click"},
            have_inrerchange = true,
            right_doors = true,
        },
        {
            406,
            "Rocklake",
            arrlast = {{"chime", "rocklake", "terminal", "drc_rh", 1.0, "click"}, {nil}},
            dep = {{nil}, {"drc_cls", 1.0, "click"}},
            have_inrerchange = true,
            right_doors = true,
        }
    }
})

Metrostroi.AddANSPAnnouncer("[PL + ENG] LVP announcer 1995 | NorwayLCAndTrains", {
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
    market = {"subway_announcers/v3_announcers/norwaylcandtrains_announcer/station - market street.mp3", 12.10},
    aviation = {"subway_announcers/v3_announcers/norwaylcandtrains_announcer/station - aviation university.mp3", 5.48},
    city = {"subway_announcers/v3_announcers/norwaylcandtrains_announcer/station - lakeview city hall.mp3", 5.25},
    white = {"subway_announcers/v3_announcers/norwaylcandtrains_announcer/station - white forest.mp3", 4.43},
    urban = {"subway_announcers/v3_announcers/norwaylcandtrains_announcer/station - urban park.mp3", 4.55},
    rocklake = {"subway_announcers/v3_announcers/norwaylcandtrains_announcer/next - rocklake.mp3", 12.10},
    -- Special announcers
    nxt_market = {"subway_announcers/v3_announcers/norwaylcandtrains_announcer/next - market street.mp3", 6.15},
    nxt_aviation = {"subway_announcers/v3_announcers/norwaylcandtrains_announcer/next - aviation university.mp3", 7.00},
    nxt_city = {"subway_announcers/v3_announcers/norwaylcandtrains_announcer/next - lakeview city hall.mp3", 6.35},
    nxt_white = {"subway_announcers/v3_announcers/norwaylcandtrains_announcer/next - white forest.mp3", 5.61},
    nxt_urban = {"subway_announcers/v3_announcers/norwaylcandtrains_announcer/next - urban park.mp3", 5.72},
    nxt_rock = {"subway_announcers/v3_announcers/norwaylcandtrains_announcer/next - rocklake.mp3", 5.59},
}, {
    {
        LED = {3, 8, 5, 5, 4, 5},
        Name = "MT-4 Market St. Line",
        Loop = false,
        spec_last = {"ann_start", "click"},
        spec_wait = {"ann_start", "click"},
        BlockDoors = true,
        {
            400,
            "Market St.",
            arrlast = {{nil}, {"ann_start", "market", 0.3, "click"}},
            dep = {{"dro_cls", 1.0, "nxt_aviation", "click"}, {nil}},
            have_inrerchange = true,
            right_doors = true,
        },
        {
            402,
            "Aviation Uni.",
            arr = {{"ann_start", "aviation", "click"}, {"ann_start", "aviation", "click"}},
            dep = {{"dro_cls", 1.0, "nxt_city", "click"}, {"dro_cls", 1.0, "nxt_market", "click"}},
            arrlast = {{nil}, {"ann_start", "aviation", "click"}},
            not_last = {2, "terminal", "urban", 1.0, "click"},
        },
        {
            403,
            "Lakeview Cth",
            arr = {{"ann_start", "city", "click"}, {"ann_start", "city", "click"}},
            dep = {{"dro_cls", 1.0, "nxt_white", "click"}, {"dro_cls", 1.0, "nxt_aviation", "click"}},
            right_doors = true,
        },
        {
            404,
            "White Forest",
            arr = {{"ann_start", "white", "click"}, {"ann_start", "white", "click"}},
            dep = {{"dro_cls", 1.0, "nxt_urban", "click"}, {"dro_cls", 1.0, "nxt_city", "click"}},
            arrlast = {{"ann_start", "white", "click"}, {"ann_start", "white", "click"}},
            not_last = {2, "terminal", "urban", 1.0, "click"},
            right_doors = true,
        },
        {
            405,
            "Urban Park",
            arr = {{"ann_start", "urban", "click"}, {"ann_start", "urban", "click"}},
            dep = {{"dro_cls", 1.0, "nxt_rock", "click"}, {"dro_cls", 1.0, "next_white", "click"}},
            arrlast = {{"ann_start", "urban", "click"}, {"ann_start", "urban", "click"}},
            not_last = {2, "terminal", "urban", 1.0, "click"},
            have_inrerchange = true,
            right_doors = true,
        },
        {
            406,
            "Rocklake",
            arrlast = {{"ann_start", "rocklake", "click"}, {nil}},
            dep = {{nil}, {"dro_cls", 1.0, "nxt_urban", "click"}},
            have_inrerchange = true,
            right_doors = true,
        }
    }
})

-- Tankict announcer
--[[  Disabled for now.
Metrostroi.AddANSPAnnouncer("[ENG + RU] LVP announcer 1995 | Tankict", {
    asnp = true,
    -- Announcer starting files
    ann_start = {"subway_announcers/global-sounds/mireo_gong_01.mp3", 1.24},
    click = {"subway_announcers/global-sounds/rri-click.mp3", 0.31},
    click1 = {"subway_announcers/asnp/click.mp3", 0.30},
    click2 = {"subway_announcers/asnp/click2.mp3", 0.10},
    announcer_ready = {"subway_announcers/global-sounds/mireo_gong_01.mp3", 1.24},
    dro_cls = {"subway_announcers/global-sounds/doors_closing/old-doors.mp3", 4.54},
    -- Normal Announcer files (english)

    -- Special announcers (English)

    -- Normal Announcer files (Russian)

    -- Special announcers (Russian)

}, {
    {
        LED = {3, 8, 5, 5, 4, 5},
        Name = "Line M52 MS - RL",
        Loop = false,
        spec_last = {"ann_start", "st_end", "st_end_ru", "click"},
        spec_wait = {"ann_start", "click"},
        BlockDoors = true,
        {
            400,
            "Market St.",
            arrlast = {{nil}, {"ann_start", "arrival_end", "market", 0.5, "arrival_end_ru", "market_ru", 0.3, "click"}},
            dep = {{"doors_close", 0.1, "doors_close_ru", 0.4, "dro_cls", 2.0, "nxt_st", "aviation", 0.3, "nxt_st_ru", "aviation_ru", 0.5, "train_goes", "rock", 0.3, "train_goes_ru", "rock_ru", 0.3, "click"}, {nil}},
            have_inrerchange = true,
            right_doors = true,
        },
        {
            402,
            "Aviation Uni.",
            arr = {{"ann_start", "arrival", "aviation", 0.5, "arrival_ru", "aviation_ru", 0.3, "click"}, {"ann_start", "arrival", "aviation", 0.5, "arrival_ru", "aviation_ru", 0.3, "click"}},
            dep = {{"doors_close", 0.1, "doors_close_ru", 0.4, "dro_cls", 1.0, "nxt_st", "city", 0.3, "nxt_st_ru", "city_ru", 0.3, "click"}, {"doors_close", 0.1, "doors_close_ru", 0.4, "dro_cls", 2.0, "nxt_st", "market", 0.3, "nxt_st_ru", "market_ru", 0.3, "click"}},
            arrlast = {{nil}, {"ann_start", "arrival_end", "aviation", 0.3, "arrival_end_ru", "aviation_ru", 0.3, "click"}},
            not_last = {2, "st_end", "aviation", 0.3, "st_end_ru", "aviation_ru", 0.3, "click"},
        },
        {
            902,
            "Lakeview Cth",
            arr = {{"ann_start", "arrival", "city", 0.3, "arrival_ru", "city_ru", 0.3, "click"}, {"ann_start", "arrival", "city", 0.3, "arrival_ru", "city_ru", 0.3, "click"}},
            dep = {{"doors_close", 0.1, "doors_close_ru", 0.4, "dro_cls", 1.0, "nxt_st", "white", 0.3, "nxt_st_ru", "white_ru", 0.3, "click"}, {"doors_close", 0.1, "doors_close_ru", 0.4, "dro_cls", 1.0, "nxt_st", "aviation", 0.3, "nxt_st_ru", "aviation_ru", 0.3, "click"}},
            right_doors = true,
        },
        {
            404,
            "White Forest",
            arr = {{"ann_start", "arrival", "white", "arrival_ru", "white_ru", 0.3, "click"}, {"ann_start", "arrival", "white", "arrival_ru", "white_ru", 0.3, "click"}},
            dep = {{"doors_close", 0.1, "doors_close_ru", 0.4, "dro_cls", 1.0, "nxt_st", "urban", 0.3, "nxt_st_ru", "city_ru", 0.3, "train_goes", "rock", 0.3, "train_goes_ru", "rock_ru", 0.3, "click"}, {"doors_close", 0.1, "doors_close_ru", 0.4, "dro_cls", 1.0, "nxt_st", "city", 0.3, "next_st", "city_ru", 0.3, "train_goes", "market", 0.3, "train_goes_ru", "market_ru", 0.3, "click"}},
            arrlast = {{"ann_start", "arrival_end", "white", 0.3, "arrival_end_ru", "white_ru", 0.3, "click"}, {"ann_start", "arrival_end", "white", 0.3, "arrival_end_ru", "white_ru", 0.3, "click"}},
            not_last = {2, "st_end", "white", 0.3, "st_end_ru", "white_ru", 0.3, "click"},
            right_doors = true,
        },
        {
            405,
            "Urban Park",
            arr = {{"ann_start", "arrival", "urban", 0.3, "arrival_ru", "urban_ru", 0.3, "click"}, {"ann_start", "arrival", "urban", 0.3, "urban_ru", "aviation_ru", 0.3, "click"}},
            dep = {{"doors_close", 0.1, "doors_close_ru", 0.4, "dro_cls", 2.0, "nxt_st", "rock", 0.3, "nxt_st_ru", "rock_ru", 0.3, "click"}, {"doors_close", 0.1, "doors_close_ru", 0.4, "dro_cls", 1.0, "nxt_st", "white", 0.3, "nxt_st_ru", "white_ru", 0.3, "click"}},
            arrlast = {{"ann_start", "arrival", "urban", 0.3, "arrival_ru", "urban_ru", 0.3, "click"}, {nil}},
            not_last = {2, "st_end", "urban", 0.3, "st_end_ru", "urban_ru", 0.3, "click"},
            have_inrerchange = true,
            right_doors = true,
        },
        {
            406,
            "Rocklake",
            arrlast = {{"ann_start", "arrival_end", "rock", 0.3, "arrival_end_ru", "rock_ru"}, {nil}},
            dep = {{nil}, {"doors_close", 0.1, "doors_close_ru", 0.4, "dro_cls", 2.0, "nxt_st", "urban", 0.3, "nxt_st_ru", "urban_ru", 0.3, "train_goes", "market", 0.3, "train_goes_ru", "market_ru", 0.3, "click"}},
            have_inrerchange = true,
            right_doors = true,
        }
    }
})
]]--

-- Rekrut Kurbel's custom announcer & routes
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
            400,
            "Market St.",
            arrlast = {{nil}, {"station", "MS", "platformR", "terminates_here", 0.1, "spec_belongings"}, "MS"},
            dep = {{"doors_closing", 0.25, "next_station", "AV", 0.1, "spec_handrails"}, {nil}},
            have_inrerchange = true,
            right_doors = true,
        },
        {
            402,
            "Aviation Uni.",
            arr = {{"station", "AV", "platformL"}, {"station", "AV", "platformL"}},
            dep = {{"doors_closing", 0.25, "next_station", "CH"}, {"doors_closing", 0.25, "next_station", "MS", 0.1, "spec_handrails"}},
            arrlast = {{nil}, {"station", "AV", "platformL", "terminates_here", 0.1, "spec_belongings"}, "AV"},
            not_last = {2, "terminates_at", "AV"},
        },
        {
            403,
            "Lakeview Cth",
            arr = {{"station", "CH", "platformR", 0.1, "spec_belongings"}, {"station", "CH", "platformR", 0.1, "spec_belongings"}},
            dep = {{"doors_closing", 0.25, "next_station", "WF", 0.1, "spec_emergency"}, {"doors_closing", 0.25, "next_station", "AV"}},
            right_doors = true,
        },
        {
            404,
            "White Forest",
            arr = {{"station", "WF", "platformR"}, {"station", "WF", "platformR"}},
            dep = {{"doors_closing", 0.25, "next_station", "UP"}, {"doors_closing", 0.25, "next_station", "CH", 0.1, "spec_emergency"}},
            arrlast = {{"station", "WF", "platformR", "terminates_here", 0.1, "spec_belongings"}, {"station", "WF", "platformR", "terminates_here", 0.1, "spec_belongings"}, "WF"},
            not_last = {2, "terminates_at", "WF"},
            right_doors = true,
        },
        {
            405,
            "Urban Park",
            arr = {{"station", "UP", "platformR"}, {"station", "UP", "platformR"}},
            dep = {{"doors_closing", 0.25, "next_station", "RL", 0.1, "spec_handrails"}, {"doors_closing", 0.25, "next_station", "WF"}},
            arrlast = {{"station", "UP", "platformR", "terminates_here", 0.1, "spec_belongings"}, {nil}},
            not_last = {2, "terminates_at", "UP"},
            have_inrerchange = true,
            right_doors = true,
        },
        {
            406,
            "Rocklake",
            arrlast = {{"station", "RL", "platformR", "terminates_here", 0.1, "spec_belongings"}, {nil}, "RL"},
            dep = {{nil}, {"doors_closing", 0.25, "next_station", "UP", 0.1, "spec_handrails"}},
            have_inrerchange = true,
            right_doors = true,
        }
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
            400,
            "Market St.",
            arrlast = {{nil}, {"station", "MS", "platformR", "terminates_here", 0.1, "spec_belongings"}, "MS"},
            dep = {{"doors_closing", 0.25, "next_station", "AV", 0.1, "spec_handrails"}, {nil}},
            have_inrerchange = true,
            right_doors = true,
        },
        {
            402,
            "Aviation Uni.",
            arr = {{"station", "AV", "platformL"}, {"station", "AV", "platformL"}},
            dep = {{"doors_closing", 0.25, "next_station", "CH"}, {"doors_closing", 0.25, "next_station", "MS", 0.1, "spec_handrails"}},
            arrlast = {{"station", "AV", "platformL", "terminates_here", 0.1, "spec_belongings"}, {"station", "AV", "platformL", "terminates_here", 0.1, "spec_belongings"}, "AV"},
            not_last = {2, "terminates_at", "AV"},
            have_inrerchange = true,
        },
        {
            403,
            "Lakeview Cth",
            arr = {{"station", "CH", "platformR", 0.1, "spec_belongings"}, {"station", "CH", "platformR", 0.1, "spec_belongings"}},
            dep = {{"doors_closing", 0.25, "next_station", "WF", 0.1, "spec_emergency"}, {"doors_closing", 0.25, "next_station", "AV"}},
            have_inrerchange = true,
            right_doors = true,
        },
        {
            404,
            "White Forest",
            arr = {{"station", "WF", "platformR"}, {"station", "WF", "platformR"}},
            dep = {{"doors_closing", 0.25, "next_station", "UP"}, {"doors_closing", 0.25, "next_station", "CH", 0.1, "spec_emergency"}},
            arrlast = {{"station", "WF", "platformR", "terminates_here", 0.1, "spec_belongings"}, {"station", "WF", "platformR", "terminates_here", 0.1, "spec_belongings"}, "WF"},
            not_last = {2, "terminates_at", "WF"},
            have_inrerchange = true,
            right_doors = true,
        },
        {
            405,
            "Urban Park",
            arr = {{"station", "UP", "platformR"}, {"station", "UP", "platformR"}},
            dep = {{"doors_closing", 0.25, "next_station", "RL", 0.1, "spec_handrails"}, {"doors_closing", 0.25, "next_station", "WF"}},
            arrlast = {{"station", "UP", "platformR", "terminates_here", 0.1, "spec_belongings"}, {"station", "UP", "platfromR", "terminates_here", 0.1, "spec_belongings"}, "UP"},
            not_last = {2, "terminates_at", "UP"},
            have_inrerchange = true,
            right_doors = true,
        },
        {
            406,
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
            400,
            "Market St.",
            arrlast = {{nil}, {"station", "MS", "platformR", "terminates_here", 0.1, "spec_belongings"}, "MS"},
            dep = {{"doors_closing", 0.25, "next_station", "AV", 0.1, "spec_handrails"}, {nil}},
            have_inrerchange = true,
        },
        {
            402,
            "Aviation Uni.",
            arr = {{"station", "AV", "platformL"}, {"station", "AV", "platformL"}},
            dep = {{"doors_closing", 0.25, "next_station", "CH"}, {"doors_closing", 0.25, "next_station", "MS", 0.1, "spec_handrails"}},
            arrlast = {{"station", "AV", "platformL", "terminates_here", 0.1, "spec_belongings"}, {"station", "AV", "platformL", "terminates_here", 0.1, "spec_belongings"}, "AV"},
            not_last = {2, "terminates_at", "AV"},
            have_inrerchange = true,
        },
        {
            403,
            "Lakeview Cth",
            arr = {{"station", "CH", "platformR", 0.1, "spec_belongings"}, {"station", "CH", "platformR", 0.1, "spec_belongings"}},
            dep = {{"doors_closing", 0.25, "next_station", "WF", 0.1, "spec_emergency"}, {"doors_closing", 0.25, "next_station", "AV"}},
            have_inrerchange = true,
        },
        {
            404,
            "White Forest",
            arr = {{"station", "WF", "platformR"}, {"station", "WF", "platformR"}},
            dep = {{"doors_closing", 0.25, "next_station", "UP"}, {"doors_closing", 0.25, "next_station", "CH", 0.1, "spec_emergency"}},
            arrlast = {{"station", "WF", "platformR", "terminates_here", 0.1, "spec_belongings"}, {"station", "WF", "platformR", "terminates_here", 0.1, "spec_belongings"}, "WF"},
            not_last = {2, "terminates_at", "WF"},
            have_inrerchange = true,
        },
        {
            405,
            "Urban Park",
            arr = {{"station", "UP", "platformR"}, {"station", "UP", "platformR"}},
            dep = {{"doors_closing", 0.25, "next_station", "RL", 0.1, "spec_handrails"}, {"doors_closing", 0.25, "next_station", "WF"}},
            arrlast = {{"station", "UP", "platformR", "terminates_here", 0.1, "spec_belongings"}, {"station", "UP", "platfromR", "terminates_here", 0.1, "spec_belongings"}, "UP"},
            not_last = {2, "terminates_at", "UP"},
            have_inrerchange = true,
        },
        {
            406,
            "Rocklake",
            arrlast = {{"station", "RL", "platformR", "terminates_here", 0.1, "spec_belongings"}, {nil}, "RL"},
            dep = {{nil}, {"doors_closing", 0.25, "next_station", "UP", 0.1, "spec_handrails"}},
            have_inrerchange = true,
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
        400,
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
        402,
        "Aviation University",
        arr = {{"THIIS", "AVI"}, {"THIIS", "AVI"}},
        dep = {{"NEXIS", "CIT", 0.2, "st_cm"}, {"NEXIS", "MAR", 0.2, "st_cm"}},
        tone = "tone",
        dist = 50,
        noises = {1, 2, 3},
        noiserandom = 0.2,
    },
    {
        403,
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
        404,
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
        405,
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
        406,
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

-- Old / Legacy versions (semi-supportive of V3)
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
        spec_last = {"announcer_ready", "gong"},
        spec_wait = {"red_signal"},
        {
            400,
            "Market St.",
            arrlast = {{nil}, {"arr_market_street", "click2"}},
            dep = {{"drt_cls", 0.5, "next_aviation_university"}, {nil}},
        },
        {
            402,
            "Aviation Uni.",
            arr = {{"arr_aviation_university"}, {"arr_aviation_university"}},
            dep = {{"drt_cls", 0.5, "next_city_hall"}, {"drt_cls", 0.5, "next_market_street"}},
        },
        --arrlast = No support as back then turning around at AV was not possible.
        -- //TODO mb add from other announcer a support here....
        {
            403,
            "Lakeview Cth",
            arr = {{"arr_city_hall"}, {"arr_city_hall"}},
            dep = {{"drt_cls", 0.5, "next_white_forest"}, {"drt_cls", 0.5, "next_aviation_university"}},
        },
        {
            404,
            "White Forest",
            arr = {{"arr_white_forest"}, {"arr_white_forest"}},
            arrlast = {{"arr_white_forest_last"}, {"arr_white_forest_last", "click2"}},
            dep = {{"drt_cls", 0.5, "next_urban_park"}, {"drt_cls", 0.5, "next_city_hall"}},
            ignorelast = true,
        },
        {
            405,
            "Urban Park",
            arr = {{"arr_urban_park"}, {"arr_urban_park"}},
            dep = {{"drt_cls", 0.5, "next_rocklake"}, {"drt_cls", 0.5, "next_white_forest"}},
        },
        --arrlast = No support as back then turning around at AV was not possible.
        -- //TODO mb add from other announcer a support here....
        {
            406,
            "Rocklake",
            arrlast = {{"arr_rocklake", "click2"}, {nil}},
            dep = {{nil,}, {"drt_cls", 0.5, "next_urban_park"}},
        }
    }
})

-- Station texture plates.
-- 81-700 A type destination boards
Metrostroi.AddLastStationTex("700", 999, "metrostroi_skins/destination_am/999-blank") -- Blank Texture.
Metrostroi.AddLastStationTex("700", 998, "metrostroi_skins/destination_am/998-ofs") -- Not in service
Metrostroi.AddLastStationTex("700", 997, "metrostroi_skins/destination_am/997-museumtr") -- museum train
Metrostroi.AddLastStationTex("700", 998, "metrostroi_skins/destination_am/996-worktrain") -- Worktrain
Metrostroi.AddLastStationTex("700", 406, "metrostroi_skins/destination_am/906-rl") -- Rocklake
Metrostroi.AddLastStationTex("700", 405, "metrostroi_skins/destination_am/905-up") -- Urban Park
Metrostroi.AddLastStationTex("700", 403, "metrostroi_skins/destination_am/904-wf") -- White Froest
Metrostroi.AddLastStationTex("700", 402, "metrostroi_skins/destination_am/902-avi") -- Aviation Univcersity
Metrostroi.AddLastStationTex("700", 401, "metrostroi_skins/destination_am/901-raven") -- Ravenholm
Metrostroi.AddLastStationTex("700", 400, "metrostroi_skins/destination_am/900-ms") -- Market Street
-- 702 D Types destination boards.
Metrostroi.AddLastStationTex("702", 999, "metrostroi_skins/81-702_names/999-nis-d") -- Not in service
Metrostroi.AddLastStationTex("702", 998, "metrostroi_skins/81-702_names/998-blank-d") -- Blank Texture.
Metrostroi.AddLastStationTex("702", 400, "metrostroi_skins/81-702_names/900-ms-d") -- Market street
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
Metrostroi.AddLastStationTex("710", 400, "metrostroi_skins/81-710_names/900-ms") -- Market street
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
Metrostroi.AddLastStationTex("717", 400, "metrostroi_skins/81-717_schemes/900-ms") -- Market street
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
Metrostroi.AddLastStationTex("720", 400, "metrostroi_skins/81-717_schemes/900-ms") -- Market street
Metrostroi.AddLastStationTex("720", 901, "metrostroi_skins/81-717_schemes/901-raven") -- Ravenholm
Metrostroi.AddLastStationTex("720", 902, "metrostroi_skins/81-717_schemes/902-avi") -- Aviation university
Metrostroi.AddLastStationTex("720", 904, "metrostroi_skins/81-717_schemes/904-wf") -- White forest
Metrostroi.AddLastStationTex("720", 905, "metrostroi_skins/81-717_schemes/905-up") -- Urban park
Metrostroi.AddLastStationTex("720", 906, "metrostroi_skins/81-717_schemes/906-rl") -- rocklake
Metrostroi.AddPassSchemeTex("717_new", "Ruralline_1995", {"metrostroi_skins/81-717_schemes/717-ruralline_v3-map",})
Metrostroi.AddPassSchemeTex("720", "Ruralline_1995", {"metrostroi_skins/81-720_schemes/720-linemap-ruralline-v3-left", "metrostroi_skins/81-720_schemes/720-linemap-ruralline-v3-right",})
Metrostroi.AddPassSchemeTex("722", "Ruralline_1995", {"metrostroi_skins/81-722_schemes/ruralline_1995r", "metrostroi_skins/81-722_schemes/ruralline-1995",})
Metrostroi.TickerAdverts = {"DEAR PASSENGERS, WHEN LEAVING THE TRAIN, PLEASE DO NOT FORGET TO TAKE YOUR BELONGINGS WITH YOU.", "FROM THE 6TH OF JULY 1995 ONWARDS, THE USAGE OF THE LAKEVIEW SUBWAY WILL BE FREE OF CHARGE.", "THE REALIGNMENT OF THE MARKET STREET LINE BETWEEN WHITE FOREST AND ROCKLAKE IS ESTIMATED TO OPEN BY JUNE 1997. THE STATIONS WHITE FOREST AND URBAN PARK WILL BE CLOSED AND REPLACED.", "DEAR PASSENGERS, FOR YOUR OWN SAFETY, PLEASE HOLD ON TO THE HANDRAILS.", "FROM THE 6TH OF JULY 1995 ONWARDS, THE UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE.......................................", ".",}
print("RMDT Announcer loader: RPM Announcer has now loadded fully.")