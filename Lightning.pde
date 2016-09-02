int startX = 150;
int startY = 00;
int endX = 0;
int endY = 150;

void setup()
{
  size(300,300);
  strokeWeight(2);
  background(0);
}

void draw()
{
	background(0);
	stroke((int)(Math.random()*256)+100, (int)(Math.random()*256)+100, (int)(Math.random()*256)+100);
	while (endX < 300)
	{
		endY = startY + (int)(Math.random()*10);
		endX = startX + (int)(Math.random()*19)-9;
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
	noStroke();
	walls(0, 0, 0);
}

void mousePressed()
{
	startY = 0;
	startX = (int)(Math.random()*220)+10;
	endY = 0;
	endX = 150;
	walls(30, 10, 90);
	//windowsill
	fill(100);
	rect(10, 200, 280, 20);
	//curtains
	fill(90, 10, 10);
	rect(0, 0, 30, 250);
	rect(270, 0, 30, 250);
	//flash
	fill(200, 200, 200, 100);
	rect(0, 0, 300, 300);
}

void walls(int r, int g, int b)
{
	fill(r, g, b);
	rect(0, 200, 300, 150);
	rect(0, 0, 20, 300);
	rect(280, 0, 20, 300);
}