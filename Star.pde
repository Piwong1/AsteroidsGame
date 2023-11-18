class Star //note that this class does NOT extend Floater
{
  //your code here
  private int myX,myY, myColor;
  Star(){
   myX= (int)(Math.random()*600);
   myY=(int)(Math.random()*600);
    myColor=color((int)(Math.random()*256), (int)(Math.random()*256),(int)(Math.random()*256));
    
  }
  public void show(){
   fill(myColor);
   noStroke();
    ellipse(myX,myY,4,4);
    
  }
}
