# This is Megafloats Server

var elev1 = func() {
  if (getprop("sim/multiplay/generic/float[0]") < 0.1) {
    interpolate("sim/multiplay/generic/float[0]", 4.2, 74);
  }
  if (getprop("sim/multiplay/generic/float[0]") > 4.0) {
    interpolate("sim/multiplay/generic/float[0]", 0, 84);
  }
}

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
  if (finalmessage == "LH5, open sesame") {
    print("request to open sesame");
    setprop("sim/multiplay/chat","LH5 Doors open!");
    setprop("sim/multiplay/generic/float[5]",1);
  }
  if (finalmessage == "LH6, open sesame") {
    print("request to open sesame");
    setprop("sim/multiplay/chat","LH6 Doors open!");
    setprop("sim/multiplay/generic/float[6]",1);
  }
  if (finalmessage == "LH7, open sesame") {
    print("request to open sesame");
    setprop("sim/multiplay/chat","LH7 Doors open!");
    setprop("sim/multiplay/generic/float[7]",1);
  }
  if (finalmessage == "LH8, open sesame") {
    print("request to open sesame");
    setprop("sim/multiplay/chat","LH8 Doors open!");
    setprop("sim/multiplay/generic/float[8]",1);
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
  if (finalmessage == "LH6, close sesame") {
    print("request to open sesame");
    setprop("sim/multiplay/chat","LH6 Doors closed!");
    setprop("sim/multiplay/generic/float[6]",0);
  }
  if (finalmessage == "LH7, close sesame") {
    print("request to open sesame");
    setprop("sim/multiplay/chat","LH7 Doors closed!");
    setprop("sim/multiplay/generic/float[7]",0);
  }
  if (finalmessage == "LH8, close sesame") {
    print("request to open sesame");
    setprop("sim/multiplay/chat","LH8 Doors closed!");
    setprop("sim/multiplay/generic/float[8]",0);
  }
  if (finalmessage == "elev1 up") {
    print("request to open sesame");
    setprop("sim/multiplay/chat","Elevator 1 Going Up");
    elev1();
  }
  if (finalmessage == "elev1 dn") {
    print("request to open sesame");
    setprop("sim/multiplay/chat","Elevator 1 Going Down");
    elev1();
  }
}

aeae = maketimer(0.5,mainloopyae);
aeae.start();
