//your variable declarations here
Star[] Space= new Star[200];
Spaceship fly=new Spaceship();
public void setup() 
{
  //your code here
  size(600,600);
  for(int i=0; i<Space.length;i++)
  Space[i]=new Star();
}
public void draw() 
{
  background(0);
  for(int i=0; i<Space.length;i++)
  Space[i].show();
  //your code here
  

fly.show();
fly.move();
}
public void keyPressed(){
  if(key=='h'||key=='H'){
  fly.Hyperspace(); 
 }
   if(key=='d'||key=='D'){
   
   fly.turn(15);
 }
   if(key=='a'||key=='A'){
   
   fly.turn(-15);
 }
   if(key=='w'||key=='W'){
  fly.accelerate(0.1);
 }
   if(key=='s'||key=='S'){
  fly.accelerate(-0.1);
 } 
  
}
  
