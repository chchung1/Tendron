class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  private int r,g,b,o;

  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
  }
  public void show()
  {
    if (myNumSegments <= 50/12) {
      strokeWeight(4);
      r = 255;
      g = 143;
      b = 152;
      o = 85;
    } else if (myNumSegments <= 50/6) {
      strokeWeight(4);
      r = 255;
      g = 217;
      b = 168;
      o = 100;
    } else if (myNumSegments <= 50/3) {
      strokeWeight(3);
      r = 216;
      g = 255;
      b = 168;
      o = 205;
    } else if (myNumSegments == 50) {
      strokeWeight(2);
      r = 181;
      g = 255;
      b = 226;
      o = 255;
    }

    //your code here
    float startX, startY, endX, endY;

    startX = myX;
    startY = myY;

    endX = startX;
    endY = startY;

    for (int i = 0; i < myNumSegments; i++) {
      stroke(r+i*1, g+i*2, b-i*6,o);
      myAngle = myAngle + (Math.random()*0.4)-0.2;
      endX = startX + (float)(Math.cos(myAngle))*SEG_LENGTH; 
      endY = startY + (float)(Math.sin(myAngle))*SEG_LENGTH;
      line(startX, startY, endX, endY);
      startX=endX;
      startY=endY;
    }

    if (myNumSegments >= 3)
      new Cluster(myNumSegments/3, (int)endX, (int)endY);
  }
}

