local Map = game.GetMap():lower() or ""

if Map:find("gm_metro_ruralline_v3") then
    Metrostroi.PlatformMap = "ruralline_legacy"
    Metrostroi.CurrentMap = "ruralline_legacy"
    print("Legacy version of the ruralline.")

else
    return
end

--[[
    Global Door alars duration times.
    miero_gong_01 : 1.24
    rri-click : 0.31
    old-doors (1995) : 4.54
    futr-doors (2005) : 2.40
    tape-doors  : 4.25
    
    GLobal way of code:
    Left side:  Market street ---> Rocklake
    Right side: Rocklake ----> Market Street

]]--

Metrostroi.SetRRIAnnouncer({
    -- Announcer starting files
    ann_start = {"subway_announcers/global-sounds/mireo_gong_01.mp3",1.24},
    click = {"subway_announcers/global-sounds/rri-click.mp3",0.31},
    click1 = {"subway_announcers/asnp/click.mp3", 0.30},
    click2 = {"subway_announcers/asnp/click2.mp3", 0.10},
    announcer_ready = {"subway_announcers/global-sounds/mireo_gong_01.mp3",1.24},
    -- Doors closing
    --dro_cls = {"subway_announcers/global-sounds/doors_closing/old-doors.mp3",4.54},
    --dro_cls = {"subway_announcers/global-sounds/doors_closing/futr-doors.mp3",2.40},
    dro_cls = {"subway_announcers/global-sounds/doors_closing/tape-doors.mp3",4.25},
    -- Special announcer files
    doors_both = {"subway_announcers/v3_announcers/valentin_announcer/special/doors_both.mp3",2.50},
    doors_both_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/doors_both_ger.mp3",2.25},
    doors_closing = {"subway_announcers/v3_announcers/valentin_announcer/special/doors_closing.mp3",2.34},
    doors_closing_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/doors_closing_ger.mp3",1.54},
    doors_left = {"subway_announcers/v3_announcers/valentin_announcer/special/doors_left.mp3",2.77},
    doors_left_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/doors_left_ger.mp3",1.48},
    doors_right = {"subway_announcers/v3_announcers/valentin_announcer/special/doors_right.mp3",2.91},
    doors_right_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/doors_right_ger.mp3",1.55},
    mind_gap = {"subway_announcers/v3_announcers/valentin_announcer/special/mind_gap.mp3",3.36},
    mind_gap_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/mind_gap_ger.mp3",4.91},
    mind_gap_step = {"subway_announcers/v3_announcers/valentin_announcer/special/mind_gap_step.mp3",4.31},
    mind_gap_step_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/mind_gap_step_ger.mp3",5.93},
    mind_step = {"subway_announcers/v3_announcers/valentin_announcer/special/mind_gap_step.mp3",3.62},
    mind_step_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/mind_gap_step_ger.mp3",5.34},
    nx_st = {"subway_announcers/v3_announcers/valentin_announcer/special/next_is.mp3",1.79},
    nx_st_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/next_is_ger.mp3",1.47},
    platform_both = {"subway_announcers/v3_announcers/valentin_announcer/special/platform_both.mp3",2.30},
    platform_both_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/platform_both_ger.mp3",2.37},
    platform_left = {"subway_announcers/v3_announcers/valentin_announcer/special/platform_left.mp3",1.78},
    platform_left_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/platform_left_ger.mp3",2.37},
    platform_right = {"subway_announcers/v3_announcers/valentin_announcer/special/platform_right.mp3",1.93},
    platform_right_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/platform_right_ger.mp3",2.47},
    ravenholm_closed = {"subway_announcers/v3_announcers/valentin_announcer/special/ravenholm_closed.mp3",3.62},
    ravenholm_closed_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/ravenholm_closed_ger.mp3",5.92},
    trhm = {"subway_announcers/v3_announcers/valentin_announcer/special/terminates_here.mp3",1.83},
    trhm_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/terminates_here_ger.mp3",1.69},
    ths = {"subway_announcers/v3_announcers/valentin_announcer/special/this_is.mp3",1.02},
    ths_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/this_is_ger.mp3",0.66},
    unss = {"subway_announcers/v3_announcers/valentin_announcer/special/unscheduled_stop.mp3",4.64},
    unss_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/unscheduled_stop_ger.mp3",4.60},
    welc = {"subway_announcers/v3_announcers/valentin_announcer/special/welcome.mp3",2.75},
    welc_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/welcome_ger.mp3",4.23},
    welc_lvp = {"subway_announcers/v3_announcers/valentin_announcer/special/welcome_lvp.mp3",3.95},
    welc_lvp_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/welcome_lvp_ger.mp3",5.51},
    welc_rpm = {"subway_announcers/v3_announcers/valentin_announcer/special/welcome_rpm.mp3",4.25},
    welc_rpm_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/welcome_rpm_ger.mp3",5.48},
    -- Station files
    market = {"subway_announcers/v3_announcers/valentin_announcer/stations/market_street.mp3",1.33},
    market_ger = {"subway_announcers/v3_announcers/valentin_announcer/stations/market_street_ger.mp3",1.42},
    aviation_ger = {"subway_announcers/v3_announcers/valentin_announcer/stations/aviation_university_ger.mp3",3.00},
    aviation = {"subway_announcers/v3_announcers/valentin_announcer/stations/aviation_university.mp3",1.90},
    city = {"subway_announcers/v3_announcers/valentin_announcer/stations/city_hall.mp3",1.10},
    city_ger = {"subway_announcers/v3_announcers/valentin_announcer/stations/city_hall_ger.mp3",1.11},
    white = {"subway_announcers/v3_announcers/valentin_announcer/stations/white_forest.mp3",1.28},
    white_ger = {"subway_announcers/v3_announcers/valentin_announcer/stations/white_forest_ger.mp3",1.17},
    urban = {"subway_announcers/v3_announcers/valentin_announcer/stations/urban_park.mp3",1.03},
    urban_ger = {"subway_announcers/v3_announcers/valentin_announcer/stations/urban_park_ger.mp3",1.04},
    rocklake = {"subway_announcers/v3_announcers/valentin_announcer/stations/rocklake.mp3",0.97},
    rocklake_ger = {"subway_announcers/v3_announcers/valentin_announcer/stations/rocklake_ger.mp3",1.16},
    --aprilpoint = {"subway_announcers/v3_announcers/valentin_announcer/stations/april_point.mp3",1.14},  V4 announcer
    --svs = {"subway_announcers/v3_announcers/valentin_announcer/stations/saddle_valley.mp3,1.13}, V4 announcer
    --svs_ger = {"subway_announcers/v3_announcers/valentin_announcer/stations/saddle_valley_ger.mp3,1.20}, V4 announcer
    --rpc = {"subway_announcers/v3_announcers/valentin_announcer/stations/}, V4 announcer
    --rpc_ger = {"subway_announcers/v3_announcers/valentin_announcer/stations/}, V4 announcer
    },
    {
        {
            LED = {3,8,5,5,4,5},
            Name = "Line M52 MS-RL",
            Loop = false,
            spec_last = {"ann_start", "dro_cls"},
            spec_wait = {"unss",0.5,"unss_ger"},
            {
            900,"Market Street",
                arrlast = {{nil},{"ann_start","ths","market","doors_right","trhm",0.5,"ths_ger","market_ger","doors_right_ger","trhm_ger","click"}},
                dep = {{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"welc_lvp","nx_st","aviation","platform_left",0.1,"ravenholm_closed",0.5,"welc_lvp_ger","nx_st_ger","aviation_ger","platform_left_ger",0.1,"ravenholm_closed_ger","click"},{nil}},
                have_inrerchange = true,
            },
            {
                902,"Aviation university",
                arr = {{"ann_start","ths","aviation","doors_left","mind_gap_step",0.5,"ths_ger","aviation_ger","doors_left_ger","mind_gap_step_ger","click"},{"ann_start","ths","aviation","doors_left","mind_gap_step",0.5,"ths_ger","aviation_ger","doors_left_ger","mind_gap_step_ger","click"}},
                dep = {{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","city","platform_right",0.2,"nx_st_ger","city_ger","platform_right_ger","click"},{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","market","platform_right",0.2,"ravenholm_closed",0.5,"nx_st_ger","market_ger","platform_right_ger",0.2,"ravenholm_closed_ger","click"}},
                arrlast = {{"ann_start","ths","aviation","doors_left","trhm",0.5,"ths_ger","aviation_ger","doors_left_ger","trhm_ger"},{"ann_start","ths","aviation","doors_left","trhm",0.5,"ths_ger","aviation_ger","doors_left_ger","trhm_ger"}},
            },
            {
                903,"Lakeview City Hall",
                arr = {{"ann_start","ths","city","doors_right","mind_gap_step",0.5,"ths_ger","city_ger","doors_right_ger","mind_gap_step_ger","click"},{"ann_start","ths","city","doors_right","mind_gap_step",0.5,"ths_ger","city_ger","doors_right_ger","mind_gap_step_ger","click"}},
                dep = {{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","white","platform_right",0.2,"nx_st_ger","white_ger","platform_right_ger","click"},{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","aviation","platform_left",0.2,"nx_st_ger","aviation_ger","platform_left_ger","click"}},
            },
            {
                904,"White Forest",
                arr = {{"ann_start","ths","white","doors_right","mind_gap_step",0.5,"ths_ger","white_ger","doors_right_ger","mind_gap_step_ger","click"},{"ann_start","ths","white","doors_right","mind_gap_step",0.5,"ths_ger","white_ger","doors_right_ger","mind_gap_step_ger","click"}},
                dep = {{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","urban","platform_right",0.2,"nx_st_ger","urban_ger","platform_right_ger","click"},{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","city","platform_right",0.2,"nx_st_ger","city_ger","platform_right_ger","click"}},
                arrlast = {{"ann_start","ths","white","doors_both","trhm",0.5,"ths_ger","white_ger","doors_both_ger","trhm_ger","click"},{"ann_start","ths","white","doors_right","trhm",0.5,"ths_ger","white_ger","doors_right_ger","trhm_ger","click"}},
            },
            {
                905,"Urban Park",
                arr = {{"ann_start","ths","urban","doors_right","mind_gap_step",0.5,"ths_ger","urban_ger","doors_right_ger","mind_gap_step_ger","click"},{"ann_start","ths","urban","doors_right","mind_gap_step",0.5,"ths_ger","urban_ger","doors_right_ger","mind_gap_step_ger","click"}},
                dep = {{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","rocklake","platform_right",0.2,"nx_st_ger","rocklake_ger","platform_right_ger","click"},{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","white","platform_right",0.2,"nx_st_ger","white_ger","platform_right_ger","click"}},
                arrlast = {{"ann_start","ths","urban","doors_right","trhm",0.5,"ths_ger","urban_ger","doors_right_ger","trhm_ger","click"},{"ann_start","ths","urban","doors_right","trhm",0.5,"ths_ger","urban_ger","doors_right_ger","trhm_ger","click"}},
            },
            {
                906,"Rocklake",
                arrlast = {{"ann_start","ths","rocklake","doors_right","trhm",0.5,"ths_ger","rocklake_ger","doors_right_ger","trhm_ger","click"},{nil}},
                dep = {{nil},{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"welc_lvp","nx_st","urban","platform_right",0.2,"welc_lvp_ger","nx_st_ger","urban_ger","platform_right_ger","click"}},
                have_inrerchange = true,
            },
        },
        {
            LED = {3,8,5,5,4,5},
            Name = "Line M52A MS-WF",
            Loop = false,
            spec_last = {"ann_start", "dro_cls"},
            spec_wait = {"unss",0.5,"unss_ger"},
            {
                900,"Market Street",
                arrlast = {{nil},{"ann_start","ths","market","doors_right","trhm",0.2,"ths_ger","market_ger","doors_right_ger","trhm_ger","click"}},
                dep = {{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"welc_lvp","nx_st","aviation","platform_left",0.2,"ravenholm_closed",0.5,"welc_lvp_ger","nx_st_ger","aviation_ger","platform_left_ger",0.2,"ravenholm_closed_ger","click"},{nil}},
                have_inrerchange = true,
            },
            {
                902,"Aviation university",
                arr = {{"ann_start","ths","aviation","doors_left","mind_gap_step",0.5,"ths_ger","aviation_ger","doors_left_ger","mind_gap_step_ger","click"},{"ann_start","ths","aviation","doors_left","mind_gap_step",0.5,"ths_ger","aviation_ger","doors_left_ger","mind_gap_step_ger","click"}},
                dep = {{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","city","platform_right",0.5,"nx_st_ger","city_ger","platform_right_ger","click"},{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","market","platform_right",0.2,"ravenholm_closed",0.5,"nx_st_ger","market_ger","platform_right_ger",0.2,"ravenholm_closed_ger","click"}},
            },
            {
                903,"Lakeview City Hall",
                arr = {{"ann_start","ths","city","doors_right","mind_gap_step",0.5,"ths_ger","city_ger","doors_right_ger","mind_gap_step_ger","click"},{"ann_start","ths","city","doors_right","mind_gap_step",0.5,"ths_ger","city_ger","doors_right_ger","mind_gap_step_ger","click"}},
                dep = {{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","white","platform_right",0.5,"nx_st_ger","white_ger","platform_right_ger","click"},{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","aviation","platform_left",0.5,"nx_st_ger","aviation_ger","platform_left_ger","click"}},
            },
            {
                904,"White Forest",
                arrlast = {{"ann_start","ths","white","doors_both","trhm",0.5,"ths_ger","white_ger","doors_both_ger","trhm_ger","click"},{nil}},
                dep = {{nil},{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","city","platform_right",0.5,"nx_st_ger","city_ger","platform_right_ger","click"}},
                ignorelast = true,
            },
        },
        {
            LED = {3,8,5,5,4,5},
            Name = "Line M52B WF-RL",
            Loop = false,
            spec_last = {"ann_start", "dro_cls"},
            spec_wait = {"unss",0.5,"unss_ger"},
            {
                904,"White Forest",
                arrlast = {{nil},{"ann_start","ths","white","doors_right","trhm",0.5,"ths_ger","white_ger","doors_right_ger","trhm_ger","click"}},
                dep = {{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","urban","platform_right",0.5,"nx_st_ger","urban_ger","platform_right_ger","click"},{nil}},
            },
            {
                905,"Urban Park",
                arr = {{"ann_start","ths","urban","doors_right","mind_gap_step",0.5,"ths_ger","urban_ger","doors_right_ger","mind_gap_step_ger","click"},{"ann_start","ths","urban","doors_right","mind_gap_step",0.5,"ths_ger","urban_ger","doors_right_ger","mind_gap_step_ger","click"}},
                dep = {{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","rocklake","platform_left",0.5,"nx_st_ger","rocklake_ger","platform_left_ger","click"},{"ann_start","doors_closing","doors_closing_ger","dorcl",5.0,"nx_st","white","platform_right",0.5,"nx_st_ger","white_ger","platform_right_ger","click"}},
            },
            {
                906,"Rocklake",
                arrlast = {{"ann_start","ths","rocklake","doors_right","trhm",0.5,"ths_ger","rocklake_ger","doors_right_ger","trhm_ger","click"},{nil}},
                dep = {{nil},{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"welc_lvp","nx_st","urban","platform_right",0.5,"welc_lvp_ger","nx_st_ger","urban_ger","platform_right_ger","click"}},
                have_inrerchange = true,
            }
        }
    }
)