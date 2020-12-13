class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 3;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
      myColor = color(255,255,255);
      myCenterX = myCenterY = 250;
      myXspeed = myYspeed = 0;
      myPointDirection = (int)(Math.random() * 360);
    }
    public void hyperspace(){
      bob.myXspeed = bob.myYspeed = 0;
      myPointDirection = (int)(Math.random() * 360);
      myCenterX = myCenterY = (int)(Math.random() * 400);
    }
    public float getX(){
      return myCenterX;
    }
    public float getY(){
      return myCenterY;
    }
}
