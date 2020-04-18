int x=0;
int ransu=0;
int y=0;
int kabuka=1000;
int mochikabu=0;
int sikinn=50000;
void setup() {
  size(600, 600);
  background(0, 0, 0);
  textSize(25);
  text("Loading", 250, 250);
}
void draw() {
  x+=1;
  if (x>180) {
    y+=1;
    background(0, 0, 255);
    fill(255,0,0);
    text(kabuka, 100, 100);
    fill(255,255,0);
    text(sikinn, 500, 100);
    fill(255,255,255);
    text(mochikabu, 100, 500);
    if (y>56) {
      ransu=int(random(101))-50;
      kabuka+=ransu;
      y=0;
    }
  }
}
void keyPressed() {
  if (x>180) {
    if (keyCode == UP && sikinn>(kabuka-1)) {
      sikinn-=kabuka;
      mochikabu+=1;
    }
    if (keyCode == DOWN && mochikabu>0) {
      sikinn+=kabuka;
      mochikabu-=1;
    }
  }
}
