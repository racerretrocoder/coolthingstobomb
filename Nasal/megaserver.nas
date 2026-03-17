# This is Megafloats Server
setprop("sim/multiplay/chat-history","");
var mainloopyae = func() {
    # scan the mpchat for any important commands xd
    # This code was inspired by OPRFs drone.nas
    setprop("sim/multiplay/visibility-range-nm",2000);
    var chathist = getprop("sim/multiplay/chat-history");
    var chatsplit = split("\n",chathist);
    print(chatsplit);
    var newmsg = chatsplit[size(chatsplit)-1];
    var newmsgsplit = split(": ",newmsg);
    var finalmessage = newmsgsplit[1];
    print(finalmessage);
    # this is command
    if (finalmessage == "LH1, open sesame") {
        print("request to open sesame");
        setprop("sim/multiplay/chat","LH1 Doors open!");
        setprop("sim/multiplay/generic/float[1]",1);
    }
    if (finalmessage == "LH2, open sesame") {
        print("request to open sesame");
        setprop("sim/multiplay/chat","LH2 Doors open!");
        setprop("sim/multiplay/generic/float[2]",1);
    }
    if (finalmessage == "LH3, open sesame") {
        print("request to open sesame");
        setprop("sim/multiplay/chat","LH3 Doors open!");
        setprop("sim/multiplay/generic/float[3]",1);
    }
    if (finalmessage == "LH4, open sesame") {
        print("request to open sesame");
        setprop("sim/multiplay/chat","LH4 Doors open!");
        setprop("sim/multiplay/generic/float[4]",1);
    }
    # close sesame
    if (finalmessage == "LH1, close sesame") {
        print("request to open sesame");
        setprop("sim/multiplay/chat","LH1 Doors closed!");
        setprop("sim/multiplay/generic/float[1]",0);
    }
    if (finalmessage == "LH2, close sesame") {
        print("request to open sesame");
        setprop("sim/multiplay/chat","LH2 Doors closed!");
        setprop("sim/multiplay/generic/float[2]",0);
    }
    if (finalmessage == "LH3, close sesame") {
        print("request to open sesame");
        setprop("sim/multiplay/chat","LH3 Doors closed!");
        setprop("sim/multiplay/generic/float[3]",0);
    }
    if (finalmessage == "LH4, close sesame") {
        print("request to open sesame");
        setprop("sim/multiplay/chat","LH4 Doors closed!");
        setprop("sim/multiplay/generic/float[4]",0);
    }
    if (finalmessage == "LH5, close sesame") {
        print("request to open sesame");
        setprop("sim/multiplay/chat","LH5 Doors closed!");
        setprop("sim/multiplay/generic/float[5]",0);
    }
}

aeae = maketimer(0.5,mainloopyae);
aeae.start();