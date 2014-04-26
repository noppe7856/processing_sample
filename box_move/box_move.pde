color COLOR_BG  = color(0);
int X_NUM = 10;
int Y_NUM = 10;
int BOX_NUM = X_NUM * Y_NUM;
RollBox[] box = new RollBox[BOX_NUM];
int SCREEN_WIDTH = 1000;
int SCREEN_HIGHT = 1000;
float z_roll = 0;
void setup()
{
  frameRate(60);
  smooth();
  
  size(SCREEN_WIDTH, SCREEN_HIGHT, P3D);

  int conter = 0;
  int x,y,z;
  for(int i = 0; i < X_NUM; i++)
  {
    for(int j = 0; j < Y_NUM; j++)
    {
      x = (SCREEN_WIDTH/(X_NUM+1)) * (i+1);
      y = (SCREEN_HIGHT/(Y_NUM+1)) * (j+1);
      z = 0;
      box[conter] = new RollBox(x, y, z, 50);
      conter++;
    }
  }
}
void draw()
{
  background(COLOR_BG);

  for( int i = 0; i < box.length; i++ )
  {
    box[i].update();
    box[i].print();
  }
  
}

class RollBox {
  int i = 0;
  float SPEED_ROLL_X = 0.05;
  float SPEED_ROLL_Y = 0.01;
  color COLOR_BOX = color(40,40,150);
  
  int m_boxSize;
  int m_x;
  int m_y;
  int m_z;
  
  RollBox(int x, int y, int z, int size)
  {
    m_x = x;
    m_y = y;
    m_z = z;
    m_boxSize = size;
  }
  
  void update()
  {
    pushMatrix();
    translate(m_x, m_y, m_z);
    rotateX(i*SPEED_ROLL_X);
    rotateY(i*SPEED_ROLL_Y);
    
    fill(COLOR_BOX,200);
    box(m_boxSize);
    i++;
    popMatrix();    
  }
  void print()
  {
    println("BOX="+m_x+","+m_y+","+m_z+",");
  }
}



