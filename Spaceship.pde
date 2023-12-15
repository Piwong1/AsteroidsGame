class Spaceship extends Floater  
{   
    ////your code here
    public Spaceship() {
     corners=12;
     xCorners=new int[corners];
     yCorners=new int[corners];
     xCorners[0]=1*3;
     yCorners[0]=0*3;
      xCorners[1]=2*3;
     yCorners[1]=1*3;
      xCorners[2]=5*3;
     yCorners[2]=1*3;
     xCorners[3]=0*3;
     yCorners[3]=3*3;
     xCorners[4]=-3*3;
     yCorners[4]=8*3;
     xCorners[5]=-2*3;
     yCorners[5]=2*3;
     xCorners[6]=-4*3;
     yCorners[6]=0*3;
     xCorners[7]=-2*3;
     yCorners[7]=-2*3;
     xCorners[8]=-3*3;
     yCorners[8]=-8*3;
     xCorners[9]=0*3;
     yCorners[9]=-3*3;
     xCorners[10]=5*3;
     yCorners[10]=-1*3;
     xCorners[11]=2*3;
     yCorners[11]=-1*3;
      myColor=255;
      myCenterX=300;
      myCenterY=300;
      myXspeed=0;
      myYspeed=0;
      myPointDirection=0;
    }
   
    public void Hyperspace(){
     myYspeed=myXspeed=0;
     myCenterX=(int)(Math.random()*480+10);
     myCenterY=(int)(Math.random()*480+10);
     myPointDirection=(int)(Math.random()*361);
    }
       public double getX(){
  return myCenterX;
  }
   public double getY(){
  return myCenterY;
  }
   public double getPoint(){
     
    return myPointDirection; 
   }
     public double getXSpeed(){
     
    return myXspeed; 
   }
     public double getYSpeed(){
     
    return myYspeed; 
   }
}
