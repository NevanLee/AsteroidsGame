Spaceship bob = new Spaceship();
Star[] nightSky = new Star[200];
public void setup() 
{
  size(500,500);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i].show();
  }
}
public void keyPressed(){
  if(key == 'a'){
  bob.turn(-5);
  } else if(key == 'd'){
  bob.turn(5);
  } else if(key == 'w'){ //rocket
  bob.accelerate(0.3);
  } else if(key == 's'){
   bob.hyperspace();
  } 
}
