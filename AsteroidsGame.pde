Spaceship bob = new Spaceship();
Star[] nightSky = new Star[200];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList<Bullet>();
public void setup() 
{
  //your code here
  size(500,500);
  for(int i =0; i<nightSky.length; i++){
   nightSky[i] = new Star(); 
  }
  for (int i = 0; i<10; i++)
  {
    rocks.add(new Asteroid());
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
  for(int i = 0; i<rocks.size(); i++)
  {
    rocks.get(i).move();
    rocks.get(i).show();
    float d = dist((int)bob.getX(), (int)bob.getY(), (int)rocks.get(i).getCenterX(), (int)rocks.get(i).getCenterY());
    if (d<10)
    {
      rocks.remove(i);
    }
  }
  for (int i = 0; i<shots.size(); i++)
  {
    shots.get(i).move();
    shots.get(i).show();
    for (int j = 0; j<rocks.size(); j++)
  {
    float d = dist((int)rocks.get(j).getCenterX(), (int)rocks.get(j).getCenterY(), (int)shots.get(i).getCenterX(), (int)shots.get(i).getCenterY());
    if (d<25)
    {
      shots.remove(i);
      rocks.remove(j);
      break;
    }
  }
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
 if(key=='f'){
 shots.add(new Bullet(bob));
 }
}
