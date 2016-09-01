int startX = 200;
int startY = 00;
int endX = 0;
int endY = 200;

void setup()
{
  size(400,400);
  strokeWeight(2);
  background(0);
}

void draw()
{
	background(0);
	stroke((int)(Math.random()*256)+100, (int)(Math.random()*256)+100, (int)(Math.random()*256)+100);
	while (endX < 400)
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
	startX = (int)(Math.random()*250)+20;
	endY = 0;
	endX = 150;
	walls(30, 10, 90);
	fill(100);
	rect(10, 200, 280, 20);	
	fill((int)(Math.random()*256)+100, (int)(Math.random()*256)+100, (int)(Math.random()*256)+100, 100);
	rect(0, 0, 300, 300);
}

void walls(int r, int g, int b)
{
	fill(r, g, b);
	rect(0, 200, 300, 150);
	rect(0, 0, 20, 300);
	rect(280, 0, 20, 300);
}