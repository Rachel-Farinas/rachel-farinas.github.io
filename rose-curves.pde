// Rachel Farinas 
// 2022 Code/Art Algorithmic Art Submission
// Fluctuating rose curve
/**
  Note: the longer you watch, the more patterns you see
**/

float t; 
float d = 8;

void setup(){
  background(0, 0, 0); 
  size(1200, 1200);
  }
  
void draw(){

  background(0, 0, 0); // clears the window with each iteration
  translate(width/2, height/2);
  
  beginShape();
  noFill();
  strokeWeight(3);
  stroke(219, 227, 255);
  for(float theta = 1; theta < TWO_PI * d; theta += 0.003){
    
    float a = sin(t * 50) * 150;
    float c = sin(t * 30) * 100;
    float g = sin(t * 50) * 100;
    float i = sin(t * 2);
    float b = sin(t * 2) * 10;
    float m = sin(t + 2) * 10;
    float h = sin(t + 2) * 10;
    float r = a + a * cos(b * (theta + 60*i)) + c * cos(m * (theta + 60*i)) + g * cos(h * (theta + 60*i));
    float x = r * cos(theta);
    float y = r * sin(theta);
    vertex(x, y);
    
  }
  
  endShape();
  
  t += 0.0001;
}
