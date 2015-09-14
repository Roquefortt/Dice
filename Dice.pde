void setup()
{
	size(300, 300);
	noLoop();
	textAlign(CENTER);
}
void draw()
{
	background((int)(Math.random() * 50)+146,(int)(Math.random() *50)+146,(int)(Math.random() * 50)+146);
	int numDots = 0; 

	Die dice = new Die(50, 50);
	dice.show();

	numDots = numDots + (int)(Math.random()*16)+1;


	//dots on die
	for(int myY = 70; myY <= 250; myY = myY +55)
	{
		for(int myX = 70; myX <= 250; myX = myX + 55)
		{
			fill(255,0,0);
			ellipse(myX, myY, 5, 5);
		}
	}

	text("Total: " + numDots, 150, 25);

	System.out.println(numDots);
}

void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY;	

	boolean one = true;

	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
	}
	void roll()
	{
		//your code here
		if ((int)Math.random() <= 1 )
		{
			one = true;
		}

		else if ((int)Math.random() > 1 )
		{
			one = false;
		}

	}
	void show()
	{
		//your code here
		for(int myY = 45; myY <= 250; myY = myY +55)
		{
			for(int myX = 45; myX <= 250; myX = myX + 55)
			{
				stroke((int)(Math.random() * 100)+156,(int)(Math.random() *100)+156,(int)(Math.random() * 100)+156);
				fill((int)(Math.random() * 100)+156,(int)(Math.random() *100)+156,(int)(Math.random() * 100)+156);
				rect(myX, myY, 50, 50);
			}
		}

//fix
		if (one == true)
		{
			fill(255,0,0);
			ellipse(myX, myY, 5, 5);
			numDots = 1;
		}

		else 
		{
			fill(255,0,0);
			ellipse(myX-5, myY+5, 5, 5);
		}

	}
}
