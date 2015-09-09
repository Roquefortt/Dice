void setup()
{
	size(300, 300);
	background((int)(Math.random() * 50)+146,(int)(Math.random() *50)+146,(int)(Math.random() * 50)+146);
	noLoop();
}
void draw()
{
	Die dice = new Die(50, 50);
	dice.show();

	//dots on die
	for(int myY = 70; myY <= 250; myY = myY +55)
	{
		for(int myX = 70; myX <= 250; myX = myX + 55)
		{
			fill(255,0,0);
			ellipse(myX, myY, 5, 5);
		}
	}
}

void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY, num;

	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
	}
	void roll()
	{
		//your code here
/*		num = l;

		if (num ==1 )
		{
			num = (int)(Math.random()*7);
		}
*/
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
	}
}
