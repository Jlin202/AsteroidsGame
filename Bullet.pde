class Bullet extends Floater{
  public Bullet (Spaceship theShip){
    myCenterX=theShip.getX();
    myCenterY=theShip.getY();
    myPointDirection = theShip.getPointDirection();
    accelerate(4);
  }
  public void show(){
    fill(51,200,10);
    stroke(51,200,10);
    rect((float)myCenterX,(float)myCenterY,5,5);
  }
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myXspeed and myYspeed      
    myCenterX += myXspeed;    
    myCenterY += myYspeed;  
  }
  public double getCenterX()
  {
    return myCenterX;
  }
  public double getCenterY()
  {
    return myCenterY;
  }
}
