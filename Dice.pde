void setup()
{
	size(300, 300);
	noLoop();
}
void draw()
{
	Die dice = new Die(50, 50);
	dice.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY;

	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		//your code here
		rect(myX, myY, 50, 50);
	}
}
