Bacteria[] garvin;


void setup() {
  size(500, 500);
  background(#95E0FA);
  garvin = new Bacteria [25];
  for (int i = 0; i < garvin.length; i++) {
    garvin[i] = new Bacteria();
  }
}

void draw() {
  noStroke();
  background(#95E0FA);
  for (int i = 0; i < garvin.length; i++) {
    garvin[i].move();
    garvin[i].show();
  }
}

void mousePressed(){
  for(int i = 0; i < garvin.length; i++){
   garvin[i].randomColor(); 
  }
}
class Bacteria {
  int myX, myY, size, myColor;

  Bacteria() {
    myColor = color((int)(Math.random()*255), (int)(Math.random()*100), (int)(Math.random()*50));
    myX = 250;
    myY = 250;
    size = 25;
  }

  void randomColor(){
    myColor = color((int)(Math.random()*255), (int)(Math.random()*100), (int)(Math.random()*50));
    size += 2;
  }
  void move() {
    if(mouseX > myX)
      myX += (int)(Math.random()*9) - 2;
    else
      myX += (int)(Math.random()*9) - 5;
    
    if(mouseY > myY)
      myY += (int)(Math.random()*9) - 2;
    else
      myY += (int)(Math.random()*9) - 5;
  }

  void show() {
    fill(myColor);
    ellipse(myX, myY, size, size);
  }
}

