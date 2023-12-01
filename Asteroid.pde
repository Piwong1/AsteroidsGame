//up
class Asteroid extends Floater
{
  private int multiplier;
  private double rotSpeed;
  public Asteroid(){
       corners=9;
       multiplier=(int)(Math.random()*3)+2;
     xCorners=new int[corners];
     yCorners=new int[corners];
     xCorners[0]=0*multiplier;
     yCorners[0]=2*multiplier;
      xCorners[1]=2*multiplier;
     yCorners[1]=3*multiplier;
      xCorners[2]=4*multiplier;
     yCorners[2]=0*multiplier;
     xCorners[3]=3*multiplier;
     yCorners[3]=-1*multiplier;
     xCorners[4]=2*multiplier;
     yCorners[4]=-3*multiplier;
     xCorners[5]=0*multiplier;
     yCorners[5]=-4*multiplier;
     xCorners[6]=-2*multiplier;
     yCorners[6]=-3*multiplier;
     xCorners[7]=-3*multiplier;
     yCorners[7]=-1*multiplier;
     xCorners[8]=-2*multiplier;
     yCorners[8]=3*multiplier;
     
      myColor=color(150,75,0);
      myCenterX=(int)(Math.random()*420)+2;
      myCenterY=(int)(Math.random()*420)+2;
      myXspeed=(int)(Math.random()*4)-2;
      myYspeed=(int)(Math.random()*4)-2;
      myPointDirection=0;
    rotSpeed=(Math.random()*3+1);
  
  

  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
    public float getX(){
  return (float)myCenterX;
  }
   public float getY(){
  return (float)myCenterY;
  }
}
