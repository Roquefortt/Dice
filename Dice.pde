void setup()
{
	size(300, 300);
	noLoop();
	textAlign(CENTER);
}
void draw()
{
	background((int)(Math.random() * 50)+146,(int)(Math.random() *50)+146,(int)(Math.random() * 50)+146);
	//int numDots = 0; 

	Die dice = new Die(50, 50);
	dice.show();

	/*numDots = numDots + (int)(Math.random()*16)+1;


	//dots on die
	for(int myY = 70; myY <= 250; myY = myY +55)
	{
		for(int myX = 70; myX <= 250; myX = myX + 55)
		{
			fill(255,0,0);
			ellipse(myX, myY, 5, 5);
		}
	}
*/
	//text("Total: " + numDots, 150, 25);

	//System.out.println(numDots);
}

void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY;	
	int numDots = 0;

	//boolean one = true;

	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
		numDots = (int)(Math.random()*7);
	}

	void roll()
	{
		//your code here
		redraw();

	}
	void show()
	{
		//your code here

		//dice
		for(int myY = 45; myY <= 250; myY = myY +55)
		{
			for(int myX = 45; myX <= 250; myX = myX + 55)
			{
				stroke((int)(Math.random() * 100)+156,(int)(Math.random() *100)+156,(int)(Math.random() * 100)+156);
				fill((int)(Math.random() * 100)+156,(int)(Math.random() *100)+156,(int)(Math.random() * 100)+156);
				rect(myX, myY, 50, 50);
			}
		}

		//dots on die
		if (numDots == 1)
		{
			for(int myY = 70; myY <= 250; myY = myY +55)
			{
				for(int myX = 70; myX <= 250; myX = myX + 55)
				{
					fill(255,0,0);
					ellipse(myX, myY, 5, 5);
				}
			}			
		}

		else if (numDots == 2)
		{

			for(int myY = 70; myY <= 250; myY = myY +55)
			{
				for(int myX = 70; myX <= 250; myX = myX + 55)
				{
					fill(255,0,0);
					ellipse(myX-6, myY, 5, 5);
					ellipse(myX+6, myY, 5, 5);
				}
			}			
		}

		else if (numDots == 3)
		{

			for(int myY = 70; myY <= 250; myY = myY +55)
			{
				for(int myX = 70; myX <= 250; myX = myX + 55)
				{
					fill(255,0,0);
					ellipse(myX, myY-10, 5, 5);
					ellipse(myX, myY, 5, 5);					
					ellipse(myX, myY+10, 5, 5);
				}
			}			
		}	

		else if (numDots == 4)
		{

			for(int myY = 70; myY <= 250; myY = myY +55)
			{
				for(int myX = 70; myX <= 250; myX = myX + 55)
				{
					fill(255,0,0);
					ellipse(myX-6, myY-5, 5, 5);
					ellipse(myX+6, myY-5, 5, 5);
					ellipse(myX-6, myY+5, 5, 5);
					ellipse(myX+6, myY+5, 5, 5);
				}
			}			
		}	
//fix placement
		else if (numDots == 5)
		{

			for(int myY = 70; myY <= 250; myY = myY +55)
			{
				for(int myX = 70; myX <= 250; myX = myX + 55)
				{
					fill(255,0,0);
					ellipse(myX-12, myY-10, 5, 5);
					ellipse(myX+12, myY-10, 5, 5);
					ellipse(myX-12, myY+12, 5, 5);
					ellipse(myX+12, myY+12, 5, 5);
					ellipse(myX, myY, 5, 5);
				}
			}			
		}	

		text("Total: " + numDots, 150, 25);
	}
}
