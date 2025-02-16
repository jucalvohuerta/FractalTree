private double fractionLength = .8; 
private int smallestBranch = 8; 
private double branchAngle = .2;
public void setup() 
{   
  size(640,480);    
  noLoop();
} 
public void draw() 
{   
  background(138, 209, 222);
  noStroke();
  fill(89, 56, 34);
  rect(0, 430, 700, 200);
  stroke(36, 59, 20);
  line(320,480,320,380);   
  drawBranches(320,380,100,3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  double angle1 = angle + branchAngle -0.8;
  double angle2 = angle - branchAngle+0.8;
  
  branchLength *= fractionLength;
  int endX1, endY1, endX2, endY2;
  endX1 = (int)(branchLength*Math.cos(angle1) + x);
  endY1 = (int)(branchLength*Math.sin(angle1) + y);
  endX2 = (int)(branchLength*Math.cos(angle2) + x);
  endY2 = (int)(branchLength*Math.sin(angle2) + y);
  
  line (x, y, endX1, endY1);
  line (x, y, endX2, endY2);

  if (branchLength > smallestBranch){
    drawBranches (endX1, endY1, branchLength-0.5, angle1);
    drawBranches (endX2, endY2, branchLength-0.5, angle2);
  }
} 
