class Spaceship extends Floater  
{   
    //your code here
    public Spaceship(){
      //9 variables initialized 
      myColor= color(255,255,255);
      myCenterY=250;
      myCenterX=250;
      myXspeed = myYspeed = 0;
      myPointDirection = 0;
      corners= 7;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0]= -13;
      yCorners[0]= 6;
      xCorners[1]= -13;
      yCorners[1]= -8;
      xCorners[2]= -9;
      yCorners[2]= -11;
      xCorners[3]= 0;
      yCorners[3]= -11;
      xCorners[4]= 18;
      yCorners[4]= 9;
      xCorners[5]= 0;
      yCorners[5]= 9;
      xCorners[6]= -8;
      yCorners[6]= 9;
      }
      public void setXspeed(double x){
      myXspeed = x; 
      }
      public void setYspeed(double y){
       myYspeed = y; 
      }
      public void hyperspace(){
        myCenterX = Math.random()*501;
        myCenterY = Math.random()*501;
        myPointDirection = Math.random()*361;
        myXspeed = myYspeed = 0;
      }
      public double getX(){return myCenterX;}
      public double getY(){return myCenterY;}
      public double getPointDirection(){return myPointDirection;}
}
