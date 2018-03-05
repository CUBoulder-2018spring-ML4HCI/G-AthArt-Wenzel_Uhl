import oscP5.*;
OscP5 oscP5;
OscP5 oscP6;

import netP5.*;
NetAddress dest;
float i = 0;
float ii = 0;
float iii = 0;
float j = 0;
float jj = 0;
float jjj = 0;
void setup() {
  oscP5 = new OscP5(this,6450); //listen for OSC messages on port 12000 (Wekinator default)
  //oscP6 = new OscP5(this, 6451);
  
  //now combine P5 and P6 and send to dest.
  dest = new NetAddress("127.0.0.1",6448); //send messages back to Wekinator on port 6448, localhost (this machine) (default)
}







void oscEvent(OscMessage theOscMessage) {
  if (theOscMessage.checkAddrPattern("/bit1") == true) {
      if(theOscMessage.checkTypetag("fff")) {
      i = theOscMessage.get(0).floatValue();
      ii = theOscMessage.get(1).floatValue();
      iii = theOscMessage.get(2).floatValue();
      println("received1");
    }
    }
    if (theOscMessage.checkAddrPattern("/bit0") == true) {
      if(theOscMessage.checkTypetag("fff")) {
      j = theOscMessage.get(0).floatValue();
      jj = theOscMessage.get(1).floatValue();
      jjj = theOscMessage.get(2).floatValue();
      println("received0");
      }
    }
    OscMessage msg = new OscMessage("/wek/inputs");
    msg.add(j - i);
    msg.add(jj - ii);
    msg.add(jjj - iii);
    oscP5.send(msg, dest);
    
}