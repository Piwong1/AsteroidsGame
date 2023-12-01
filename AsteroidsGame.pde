////your variable declarations here
Star[] Space= new Star[200];
Spaceship fly=new Spaceship();
 ArrayList <Asteroid> roids;
 boolean wIsPressed=false;
boolean aIsPressed=false;
boolean dIsPressed=false;
boolean sIsPressed=false;
public void setup() 
{
  //your code here
  size(600,600);
  for(int i=0; i<Space.length;i++)
  Space[i]=new Star();
  roids=new ArrayList <Asteroid>();
  for(int i=0; i<20;i++)
roids.add(new Asteroid());
}
public void draw() 
{
  background(0);
  for(int i=0; i<Space.length;i++)
  Space[i].show();
  //your code here
  

fly.show();
fly.move();

for(int i=0; i<roids.size();i++){
  roids.get(i).show();
  roids.get(i).move();
  float d= dist(fly.getX(),fly.getY(),roids.get(i).getX(),roids.get(i).getY());
  if(d<10)
  roids.remove(i);
}
if(wIsPressed==true&& dIsPressed==true){
   fly.turn(2);
  fly.accelerate(0.05);
}
if(wIsPressed==true&& aIsPressed==true){
  fly.turn(-2);
  fly.accelerate(0.05);
}
if(wIsPressed==false&& dIsPressed==true){
   fly.turn(2);
}
if(wIsPressed==false&& aIsPressed==true){
  fly.turn(-2);
}
if(wIsPressed==true&& aIsPressed==false&&dIsPressed==false){
  fly.accelerate(0.05);
}
if(sIsPressed==true&& dIsPressed==true){
   fly.turn(2);
  fly.accelerate(-0.05);
}
if(sIsPressed==true&& aIsPressed==true){
  fly.turn(-2);
  fly.accelerate(-0.05);

}
if(sIsPressed==true&& aIsPressed==false&&dIsPressed==false){
  fly.accelerate(-0.05);
}
}
public void keyPressed(){
  if(key=='h'||key=='H'){
  fly.Hyperspace(); 
 }
   if(key=='d'||key=='D'){
   dIsPressed=true;

 }
   if(key=='a'||key=='A'){
     aIsPressed=true;
  
 }
   if(key=='w'||key=='W'){
     wIsPressed=true;

 }
   if(key=='s'||key=='S'){
  sIsPressed=true;
 } 
  
}
public void keyReleased(){

     if(key=='d'||key=='D'){
   dIsPressed=false;

 }
   if(key=='a'||key=='A'){
     aIsPressed=false;

 }
   if(key=='w'||key=='W'){
     wIsPressed=false;

 }
  if(key=='s'||key=='S'){
     sIsPressed=false;

 }
  
  
}
