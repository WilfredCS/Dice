int x;
int y;
void setup()
{
  noLoop();
  size(310,310);
}
void draw()
{
  int dots=0;
  background(0,250,0);//your code here
  for(int y=0;y<300;y=y+101)
  {
    for(int x=0;x<300;x=x+101)
    {
  Die bob= new Die(x,y);
  bob.show();   
    if (bob.side == 1){
    dots=dots+1;
  }
  else if (bob.side == 2){
    dots=dots+2;
  }
  else if (bob.side == 3){
    dots=dots+3;
  }
  else if (bob.side == 4){
    dots=dots+4;
  }
  else if (bob.side == 5){
    dots=dots+5;
  }
  else if (bob.side == 6){
    dots=dots+6;
  }
  }
   }
  textSize(14);
text("Total: "+ dots, 10, 15);
    

  
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int die, myX, myY, side;//variable declarations here
  
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
    
  }
  void roll()
  {
    die=(int)((Math.random()*6)+1);//your code here
  }
  void show()
  {
    //your code here
    fill(255,0,0);
    rect(myX+25,myY+25,60,60,10);
    stroke(200);
    fill(0,0,255);
    side = (int)((Math.random()*6)+1);
    if(side==1){
      ellipse(myX+55,myY+55,20,20);
    }
    else if(side==2){
      ellipse(myX+55,myY+45,20,20);
      ellipse(myX+55,myY+70,20,20);
      }
    else if(side==3){
      ellipse(myX+55,myY+40,15,15);
      ellipse(myX+55,myY+55,15,15);
      ellipse(myX+55,myY+70,15,15);
    }
    else if(side==4){
      ellipse(myX+55,myY+40,10,10);
      ellipse(myX+55,myY+50,10,10);
      ellipse(myX+55,myY+60,10,10);
      ellipse(myX+55,myY+70,10,10);
    }
    else if(side==5){
      ellipse(myX+35,myY+55,10,10);
      ellipse(myX+45,myY+55,10,10);
      ellipse(myX+55,myY+55,10,10);
      ellipse(myX+65,myY+55,10,10);
      ellipse(myX+75,myY+55,10,10);
    }
    else if(side==6){
      ellipse(myX+30,myY+55,10,10);
      ellipse(myX+40,myY+55,10,10);
      ellipse(myX+50,myY+55,10,10);
      ellipse(myX+60,myY+55,10,10);
      ellipse(myX+70,myY+55,10,10);
      ellipse(myX+80,myY+55,10,10);
    }
  }
}
