//calling classes 

Track track;
void setup()
{
  size(800,600);
  track = new Track();
}

void draw()
{
  int border = 75;
  stroke(255);
  rect(border, border, 750-border, 550-border,100);
}