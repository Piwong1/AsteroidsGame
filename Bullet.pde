class Bullet extends Floater{
  public Bullet(Spaceship theShip){
   myCenterX=theShip.getX();
   myCenterY=theShip.getY();
   myXspeed=theShip.getXSpeed();
    myYspeed=theShip.getYSpeed();
    myPointDirection=theShip.getPoint();
    accelerate(6);
  }
  public void show(){
   ellipse((float)myCenterX,(float)myCenterY,10,10); 
    
    
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
   public void move(){
  
      
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     

   
}
}

  


  
