# small awe nasal. wip
setprop("controls/radar/dish/lastlaunch","");
setprop("controls/radar/dish/engagedcs","");
var engagedBy = func(callsign,num1) {
    setprop("controls/radar/dish/engagedcs",callsign);
}
var missileLaunch = func(cs) {
    data = datalink.get_data(cs); # get our data
    if (data.on_link() == 1){return 0;}
    setprop("sim/multiplay/generic/string[8]","MSLWARN:"~cs~": "~rand());
    setprop("controls/radar/dish/lastlaunch",cs);
    setprop("sim/multiplay/chat","Missile Launch Detected From: "~cs~"!");
    dish.pointto(cs);
}