int barWidth = 20;
int lastBar = -1;
int spacing = 1000;
int ORIGINX = 10;
int ORIGINY = 10;
int step = 50;

void setup() {
  size(640, 480);
  smooth();
  noFill();
  strokeWeight(0.1);
}

void draw() {
background(204);
int N = 5;
for(int i = 0; i<N; i++){
   for(int j = 0; j<N; j++){
     for(int k = 0; k<N; k++){
       for(int l = 0; l<N; l++){
         line(ORIGINX + (i*spacing), ORIGINY + (j*spacing), ORIGINX + (k*spacing), ORIGINY + (l*spacing));
       }
     }
  }
}
ORIGINX = mouseX - ((spacing * N)/2) + spacing/2;
ORIGINY = mouseY - ((spacing * N)/2) + spacing/2;
loop();
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      spacing = spacing + step;
    } else if (keyCode == DOWN) {
      spacing = spacing - step;
    } 
  }
}
