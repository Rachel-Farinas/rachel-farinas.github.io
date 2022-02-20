// Rachel Farinas 
// 2022 Code/Art Algorithmic Art Submission
// Fluctuating rose curves
/**
  Note: the longer you watch, the more patterns you see!
**/

float t; 
float d = 8;

void setup(){
  background(0, 0, 0); // sets background color to black
  size(950, 950); // sets canvas size
  }
  
void draw(){

  background(0, 0, 0); // clears the window with each iteration
  translate(width/2, height/2);
  
  beginShape(); // begin drawing shape
  noFill(); // remove fill color from shape
  strokeWeight(2); // set thickness of lines
  stroke(200, 212, 255); // sets color of stroke
  
  // interval for the curves; angle increases by small increments
  for(float theta = 1; theta < TWO_PI * d; theta += 0.003){
    
    // changes all the variables in the rose curve formula so that it changes each iteration
    float a = sin(t * 50) * 100;
    float c = sin(t * 30) * 75;
    float g = sin(t * 50) * 75;
    float i = sin(t * 2);
    float b = sin(t * 2) * 10;
    float m = sin(t + 2) * 10;
    float h = sin(t + 2) * 10;
    // formula for fluctating rose curves - three separate curves combined to add compelxity
    float r = a + a * cos(b * (theta + 60*i)) + c * cos(m * (theta + 60*i)) + g * cos(h * (theta + 60*i));
    float x = r * cos(theta); // formula for the x coordinate, derived from the formula of a rose curve
    float y = r * sin(theta); // formula for the y coordinate, derived from the formula of a rose curve
    vertex(x, y); // central point
    
  }
  
  endShape(); // stop drawing shape
  
  t += 0.0001; // small increments to generate the curves slowly
}
