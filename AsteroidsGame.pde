//your variable declarations here
Spaceship bob = new Spaceship();
Star[] nightSky = new Star[200];
public void setup() 
{
  //your code here
  size(500,500);
  for(int i =0; i<nightSky.length; i++){
   nightSky[i] = new Star(); 
    
  }
}
public void draw() 
{
  //your code here
  background(0);
  bob.show();
  bob.move();
  for(int i= 0; i< nightSky.length; i++)
  {
   nightSky[i].show(); 
  }
}

public void keyPressed(){
 if(key=='a'){
 bob.turn(-20);
}
 if(key=='w'){
 bob.accelerate(0.5);
}
 if(key=='4'){
  bob.hyperspace();
 }
 if(key=='d'){
  bob.turn(20); 
 }
}
