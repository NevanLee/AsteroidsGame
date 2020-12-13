Spaceship bob = new Spaceship();
ArrayList <Asteroid> sam = new ArrayList<Asteroid>();
Star[] nightSky = new Star[200];
public void setup() 
{
  size(500,500);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
  for(int i = 0; i < 10; i++){
    sam.add(new Asteroid());
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
  for(int i = 0; i < sam.size(); i++){
    sam.get(i).move();
    sam.get(i).show();
    float d = dist(bob.getX(), bob.getY(), sam.get(i).getX(), sam.get(i).getY());
    if (d < 5){
      sam.remove(i);
    }
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
