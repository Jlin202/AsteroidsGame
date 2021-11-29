class Star //note that this class does NOT extend Floater
{
  //your code here
  int myX, myY;
  Star(){
   myX = (int)(Math.random()*500);
   myY = (int)(Math.random()*500);
  }
  void show(){
    fill(247,221,152);
    ellipse(myX, myY,2,2);
  }
}
