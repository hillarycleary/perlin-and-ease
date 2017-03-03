//a simple perlin noise program which can be used to animate images and shapes 

float perlin1;
float perlin2; 
float x1 = 0;
float y1 = 0;
float x2 = 0; 

void setup () {
  size(600, 600);
}


void draw () { 
  background(0); 
  
//adjust floats to alter speed of noise 
  perlin1 = sin(millis() * 0.001f * 0.5) * 100f; 
  perlin2 = sin(millis() * 0.01f * 0.5) * 10f; 
  perlin1 = sin(millis() * 0.007f * 0.5) * 10f; 
  
//use x1, y1, x2 for "easing" shapes
  x1+= (mouseX-x1) *.01f; 
  y1+= (mouseX-y1) *.01f;
  x2+= (mouseY-x2) * .01f;
  fill(255); 
  ellipse(x1, mouseY+perlin1, 50,50); 
  
  
}