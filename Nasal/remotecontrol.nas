# Ai "Searcher"
# Created by Phoenix, Skid, and Uapilot
#
# This script is used to search for another pilots properties (Mainly the rotor prop)
# it can be used for counter messure detection. and more.
#
#   Uapilot
#
#   Converted into a Sam Control Center
#   Remotely control your Sams for less!
#   dont ever open up the targets windows and change the tgts for everysam ever again!
#


var search = func(){

# Search for nearby Control Centers

 var sam = "SAMCTRL";
 var mp0 = getprop("/ai/models/multiplayer[0]/sim/multiplay/generic/string[5]");
 var mp1 = getprop("/ai/models/multiplayer[1]/sim/multiplay/generic/string[5]");
 var mp2 = getprop("/ai/models/multiplayer[2]/sim/multiplay/generic/string[5]");
 var mp3 = getprop("/ai/models/multiplayer[3]/sim/multiplay/generic/string[5]");
 var mp4 = getprop("/ai/models/multiplayer[4]/sim/multiplay/generic/string[5]");
 var mp5 = getprop("/ai/models/multiplayer[5]/sim/multiplay/generic/string[5]");
 var mp6 = getprop("/ai/models/multiplayer[6]/sim/multiplay/generic/string[5]");
 var mp7 = getprop("/ai/models/multiplayer[7]/sim/multiplay/generic/string[5]");
 var mp8 = getprop("/ai/models/multiplayer[8]/sim/multiplay/generic/string[5]");      # If string 5 is "SAMCTRL" Then this MP is a Sam control center
 var mp9 = getprop("/ai/models/multiplayer[9]/sim/multiplay/generic/string[5]");
var mp10 = getprop("/ai/models/multiplayer[10]/sim/multiplay/generic/string[5]");
var mp11 = getprop("/ai/models/multiplayer[11]/sim/multiplay/generic/string[5]");
var mp12 = getprop("/ai/models/multiplayer[12]/sim/multiplay/generic/string[5]");
var mp13 = getprop("/ai/models/multiplayer[13]/sim/multiplay/generic/string[5]");
var mp14 = getprop("/ai/models/multiplayer[14]/sim/multiplay/generic/string[5]");
var mp15 = getprop("/ai/models/multiplayer[15]/sim/multiplay/generic/string[5]");
var mp16 = getprop("/ai/models/multiplayer[16]/sim/multiplay/generic/string[5]");
var mp17 = getprop("/ai/models/multiplayer[17]/sim/multiplay/generic/string[5]");
var mp18 = getprop("/ai/models/multiplayer[18]/sim/multiplay/generic/string[5]");

   if(mp0 == sam) # If our request callsign is the callsign on Multiplayer[0]; set 0 as our ID then run a function called tracked with a parameter that consists of 0.
    {

        var tracked = 0;
         update(tracked);

    }

 if(mp1 == sam)
    {

        var tracked = 1;
         update(tracked);

    }

       if(mp2 == sam)
    {

        var tracked = 2;
         update(tracked);

    }

       if(mp3 == sam)
    {

        var tracked = 3;
         update(tracked);

    }

       if(mp4 == sam)
    {

        var tracked = 4;
         update(tracked);

    }

       if(mp5 == sam)
    {

        var tracked = 5;
         update(tracked);

    }

       if(mp6 == sam)
    {

        var tracked = 6;
         update(tracked);

    }

       if(mp7 == sam)
    {

        var tracked = 7;
         update(tracked);

    }

       if(mp8 == sam)
    {

        var tracked = 8;
         update(tracked);

    }

       if(mp9 == sam)
    {

        var tracked = 9;
         update(tracked);

    }

       if(mp10 == sam)
    {

        var tracked = 10;
         update(tracked);

    }

       if(mp11 == sam)
    {

        var tracked = 11;
         update(tracked);

    }

       if(mp12 == sam)
    {

        var tracked = 12;
         update(tracked);

    }

       if(mp13 == sam)
    {

        var tracked = 13;
         update(tracked);

    }

       if(mp14 == sam)
    {

        var tracked = 14;
         update(tracked);

    }

       if(mp15 == sam)
    {

        var tracked = 15;
         update(tracked);

    }

       if(mp16 == sam)
    {

        var tracked = 16;
         update(tracked);

    }

       if(mp17 == sam)
    {

        var tracked = 17;
         update(tracked);

    }

       if(mp18 == sam)
    {

        var tracked = 18;
         update(tracked);

    }

else {
  print("There are no Sam control centers online");
   }


}


# Phoenix
# This reads the property assigned to flares on the selected MPid

# uapilot
# Now it reads the current target list and updates it every 5 seconds


var update = func(mpid){

    print(mpid); # We have our number
    print(getprop("ai/models/multiplayer[" ~ mpid ~ "]/sim/multiplay/generic/string[5]")); #threat is the right one. 
    var code = getprop("/ai/models/multiplayer[" ~ mpid ~ "]/sim/multiplay/generic/int[0]"); # Sam Control Center Remote Access Code
    var ourcode = getprop("instrumentation/datalink/channel"); # Our Sam Code
    if (code == ourcode){
        # This is our SAM Control center lets update from its list!
        # 
        # String 8 --> 19 targets
        setprop("enemies/e1", getprop("ai/models/multiplayer[" ~ mpid ~ "]/sim/multiplay/generic/string[8]"));
        setprop("enemies/e2", getprop("ai/models/multiplayer[" ~ mpid ~ "]/sim/multiplay/generic/string[9]"));
        setprop("enemies/e3", getprop("ai/models/multiplayer[" ~ mpid ~ "]/sim/multiplay/generic/string[10]"));
        setprop("enemies/e4", getprop("ai/models/multiplayer[" ~ mpid ~ "]/sim/multiplay/generic/string[11]"));
        setprop("enemies/e5", getprop("ai/models/multiplayer[" ~ mpid ~ "]/sim/multiplay/generic/string[12]"));
        setprop("enemies/e6", getprop("ai/models/multiplayer[" ~ mpid ~ "]/sim/multiplay/generic/string[13]"));
        setprop("enemies/e7", getprop("ai/models/multiplayer[" ~ mpid ~ "]/sim/multiplay/generic/string[14]"));
        setprop("enemies/e8", getprop("ai/models/multiplayer[" ~ mpid ~ "]/sim/multiplay/generic/string[15]"));
        setprop("enemies/e9", getprop("ai/models/multiplayer[" ~ mpid ~ "]/sim/multiplay/generic/string[16]"));
        setprop("enemies/e10", getprop("ai/models/multiplayer[" ~ mpid ~ "]/sim/multiplay/generic/string[17]"));
        setprop("enemies/e11", getprop("ai/models/multiplayer[" ~ mpid ~ "]/sim/multiplay/generic/string[18]"));
        setprop("enemies/e12", getprop("ai/models/multiplayer[" ~ mpid ~ "]/sim/multiplay/generic/string[19]"));
        print("Successfully Updated Sam Target List from sam controller: ");
        print(getprop("ai/models/multiplayer[" ~ mpid ~ "]/callsign"));

        # Should we reload?


    } else {
        print("The sam control center is not useing our control code! rejecting...");
    }



}


# Loop it every 3 seconds

timer_search = maketimer(3, search);
timer_search.start();

# Done