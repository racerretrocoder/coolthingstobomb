# Phoenix
#  dish
setprop("controls/test1",5);
myRadar = radar.Radar.new();
myRadar.init();

setprop("controls/ky58/mode",2); # P, C, LD, RV
setprop("controls/ky58/type",3); # 1, 2, 3, 4, 5, 6, Z
setprop("controls/ky58/main",2); # OFF, ON, TD
# LD 4 TD

var pointto = func(callsign) {
    var mpid = misc.smallsearch(callsign);
    var heading = getprop("ai/models/multiplayer[" ~ mpid ~ "]/radar/bearing-deg");
    setprop("orientation/heading-deg",heading); # hehe xd
}

setprop("controls/dish/callsign","none");
var pointtosys = func() {
    var callsign = getprop("controls/dish/callsign");
    var mpid = misc.smallsearch(callsign);
    var heading = getprop("ai/models/multiplayer[" ~ mpid ~ "]/radar/bearing-deg");
    setprop("orientation/heading-deg",heading); # hehe xd
}
pointtimer = maketimer(0.1,pointtosys);
pointtimer.start();