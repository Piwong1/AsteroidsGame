////your variable declarations here
Star[] Space= new Star[200];
Spaceship fly=new Spaceship();
 ArrayList <Asteroid> roids;
 ArrayList <Bullet> shots=new ArrayList<Bullet>();
 boolean wIsPressed=false;
boolean aIsPressed=false;
boolean dIsPressed=false;
boolean sIsPressed=false;
int hit=0;
boolean IsDead=false;
int score=0;
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
  for(int i=0;i<shots.size();i++){
   shots.get(i).move();
   shots.get(i).show();
    if(shots.get(i).getX()<0||shots.get(i).getY()<0||shots.get(i).getX()>600||shots.get(i).getY()>600){
      shots.remove(i);
      i--;
    }
   // int j=0;
    //int k=0;
   // while(k<shots.size()&&j<roids.size()){
     // double distance=dist((float)shots.get(k).getX(),(float)shots.get(k).getY(),roids.get(j).getX(),roids.get(j).getY());
     // if (distance<25){
      // roids.remove(j);
       //shots.remove(k); 
       //if(hit>=150)
      // IsDead=true;
      
      // if(IsDead==false)
      //} else{
       // j++;
     // }
      
   // }
  }
  for (int i = 0; i<roids.size(); i++)
  {
    for (int j = 0; j<shots.size(); j++)
    {
      double distance = dist((float)shots.get(j).getX(), (float)shots.get(j).getY(), (float)roids.get(i).getX(), (float)roids.get(i).getY());
      if (distance<15)
      {
        roids.remove(i);
        shots.remove(j);
        j=shots.size();
        i--;
        if(hit>=150)
       IsDead=true;
      
      if(IsDead==false)
      score+=100;
      if(roids.size()==0&&IsDead==false){
        for(int k=0; k<20;k++)
roids.add(new Asteroid());
        
      }
      }
    }
  }

fly.show();
fly.move();

for(int i=0; i<roids.size();i++){
  roids.get(i).show();
  roids.get(i).move();

  float d= dist((float)fly.getX(),(float)fly.getY(),roids.get(i).getX(),roids.get(i).getY());
  if(d<10){
  roids.remove(i);
  i--;
  hit=hit+25;
}
  

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


stroke(255);
noFill();
rect(20,20,150,30);
fill(255,0,0);
if(hit<=150)
rect(20,20,150-hit,30);

if(hit>=150){
fill(255);
textSize(24);
text("You Lose",250,300);
}
fill(255);
textSize(20);
text("Your Score: "+score,450,20);


}

//healthbar




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
if(key=='v'||key=='V'){
 shots.add(new Bullet(fly)); 
 
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
