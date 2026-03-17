# Mobile Airpot Client Code.
# Phoenix

setprop("arpt/callsign","");
setprop("arpt/callsignold","everyone");
setprop("arpt/oldmessage","");
setprop("arpt/elevator1",0);
setprop("arpt/elevator2",0);
setprop("arpt/elevator3",0);
setprop("arpt/elevator4",0);
setprop("arpt/altitude-diff",15); # different altitude changes depending on aircraft
# misc.nas
var smallsearch = func(cs=nil) {
  var list = props.globals.getNode("/ai/models").getChildren("multiplayer");
  var total = size(list);
  var mpid = 0;
  for(var i = 0; i < total; i += 1) {
      if (cs != nil) {
      # were searching for someone...
      if (getprop("ai/models/multiplayer[" ~ i ~ "]/callsign") == cs) {
          # we have our number
          print(mpid);
          mpid = i;
          return mpid; # Bam!
      }
      var callsign = list[i].getNode("callsign").getValue();
      }
   }
}


var mainloopy = func(){
    var callsign = getprop("arpt/callsign"); # this is megafloat callsign
    var mpid = smallsearch(callsign);
    # negotiate
    if (getprop("ai/models/multiplayer[" ~ mpid ~ "]/sim/multiplay/generic/string[1]") == "CARPET" and getprop("sim/models/multiplayer[" ~ mpid ~ "]/sim/multiplay/callsign") == getprop("arpt/callsign")) {
        # this is a aiport
        # message code
        var thestring = getprop("ai/models/multiplayer[" ~ mpid ~ "]/sim/multiplay/generic/string[3]");
        var oldthestring = getprop("arpt/callsignold");
        if (thestring != oldthestring) {
            print("megafloat operator requested someone to spawn");
            var hiscallsign = getprop("sim/models/multiplayer[" ~ mpid ~ "]/sim/multiplay/callsign");
            screen.log.write("Megafloat operator: "~hiscallsign~" allowed "~thestring~" to spawn!");
            screen.log.write(""~thestring~" may now spawn at Megafloat");
            setprop("arpt/callsignold",thestring);
        }
        var message = getprop("ai/models/multiplayer[" ~ mpid ~ "]/sim/multiplay/generic/string[2]");
        var oldmessage = getprop("arpt/oldmessage");
        if (oldmessage != message) {
            # new message from atc!
            setprop("sim/messages/atc",message);
            setprop("arpt/oldmessage",message); # update it to prevent message being spammed
        }
    }
}

var request_to_land = func() {
    var callsign = getprop("arpt/callsign"); # this is megafloat callsign
    var mpid = smallsearch(callsign);
    # negotiate
    if (getprop("ai/models/multiplayer[" ~ mpid ~ "]/sim/multiplay/generic/string[1]") == "CARPET" and getprop("sim/models/multiplayer[" ~ mpid ~ "]/sim/multiplay/callsign") == getprop("arpt/callsign")) {
        # This is the mpcallsign
        if (getprop("ai/models/multiplayer[" ~ mpid ~ "]/sim/multiplay/generic/string[3]") == getprop("sim/multiplay/callsign")) {
            # permission!
            screen.log.write("Permission given to spawn at Megafloat.",0,1,0);
            screen.log.write("Spawning now...");
            var lat = getprop("ai/models/multiplayer[" ~ mpid ~ "]/position/latitude-deg");
            var lon = getprop("ai/models/multiplayer[" ~ mpid ~ "]/position/longitude-deg");
            var alt = getprop("ai/models/multiplayer[" ~ mpid ~ "]/position/altitude-ft"); # important
            #
            # now lets go to the megafloat
            #
            
            # stop engines
            setprop("controls/engines/engine[0]/throttle",0);
            setprop("controls/engines/engine[1]/throttle",0);
            setprop("controls/engines/engine[2]/throttle",0);
            setprop("controls/engines/engine[3]/throttle",0);
            setprop("controls/engines/engine[4]/throttle",0);
            setprop("controls/engines/engine[5]/throttle",0);
            setprop("controls/engines/engine[6]/throttle",0);
            setprop("controls/engines/engine[7]/throttle",0);
            
            setprop("controls/gear/brake-parking",1); # turn on brakes
            
            # now lets go
            setprop("velocities/airspeed-kt",0);
            setprop("velocities/mach",0); # stop moving
            setprop("position/latitude-deg",lat);
            setprop("position/longitude-deg",lon);
            setprop("position/altitude-ft",alt+getprop("arpt/altitude-diff")); # set altitutde
            screen.log.write("Welcome to Megafloat!",1,1,1);
            screen.log.write("Taxi off the spawner ASAP!! This is to keep spawn throughput high.",1,1,1);
        }    
    }
}