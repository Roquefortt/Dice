void setup()
{
  size(300,300);
  noLoop();
  textAlign(CENTER);
}

void draw()
{
   background((int)(Math.random() * 50)+146,(int)(Math.random() *50)+146,(int)(Math.random() * 50)+146);
   int sum = 0;
   
 //y for loop causes issues
   for (int y = 45; y <250; y = y +55)
   {
     for (int x = 45; x <250; x = x +55)
     {
       Die dice  = new Die(x,y);
       dice.show();
       dice.roll();
       if(dice.value < 7)
       {
         sum = sum + dice.value;
       }
     }
   }
   text("Total: " + sum, 150, 30);
}

void mousePressed()
{
  redraw();
}

class Die
{
  int value;
  int myX, myY;
  Die(int x, int y)
  {
    value = (int)(Math.random()*6)+1;
    myX = x;
    myY = y;
  }
  
//dots
void roll()
  {
     noStroke();
     fill(255,0,0);
     
     if (value == 1)
     {
          ellipse(myX+25, myY+25, 5, 5);       
     }
     
     if (value == 2)
     {
          ellipse(myX+19, myY+25, 5, 5);
          ellipse(myX+31, myY+25, 5, 5);       
     }

     if (value == 3)
     {
          ellipse(myX+25, myY+15, 5, 5);
          ellipse(myX+25, myY+25, 5, 5);          
          ellipse(myX+25, myY+35, 5, 5);       
     }

     if (value == 4)
     {
          ellipse(myX+19, myY+20, 5, 5);
          ellipse(myX+31, myY+20, 5, 5);
          ellipse(myX+19, myY+30, 5, 5);
          ellipse(myX+31, myY+30, 5, 5);       
     }

     if (value == 5)
     {
          fill(255,0,0);
          ellipse(myX+15, myY+15, 5, 5);
          ellipse(myX+35, myY+15, 5, 5);
          ellipse(myX+15, myY+37, 5, 5);
          ellipse(myX+35, myY+37, 5, 5);
          ellipse(myX+25, myY+25, 5, 5);       
     }

     if (value == 6)
     {
          ellipse(myX+31, myY+15, 5, 5);
          ellipse(myX+19, myY+15, 5, 5);
          ellipse(myX+31, myY+25, 5, 5);
          ellipse(myX+19, myY+25, 5, 5);
          ellipse(myX+31, myY+35, 5, 5);
          ellipse(myX+19, myY+35, 5, 5);        
     }     
  }

//dice
  void show()
  {
     stroke((int)(Math.random() * 100)+156,(int)(Math.random() *100)+156,(int)(Math.random() * 100)+156);
     fill((int)(Math.random() * 100)+156,(int)(Math.random() *100)+156,(int)(Math.random() * 100)+156);
     rect(myX, myY, 50, 50);
  }
}
