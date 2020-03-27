import processing.net.*;

Server server;

void setup() {
  server = new Server(this, 5204);
  //size(600,600);
}

void draw() {
  
}

void clientEvent(Server ss,Client client){
  println("Re connected");
  println("First!");
  String h = str((int (random(360))));
  String s = str((int (random(60,100))));
  String b = str((int(random(50,100))));
  String hsb = h + ',' + s + ',' + b +',';
  int qs = 0;//int(random(4));
  hsb += str(qs);
  println(hsb);
  ss.write(hsb); 
  println("come");
}
void serverEvent(Server ss,Client client){
  println("connected");
  println("First!");
  String h = str((int (random(360))));
  String s = str((int (random(60,100))));
  String b = str((int(random(50,100))));
  String hsb = h + ',' + s + ',' + b +',';
  int qs = int(random(4));
  hsb += str(qs);
  println(hsb);
  ss.write(hsb); 
}
