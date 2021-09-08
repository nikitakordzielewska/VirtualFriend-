class Button
{
  int x0,y0;   
  int bw, bh; 
  color bcol; //background
  color tcol; // text
  String label;
  
  Button (int x,int y,int bwid,int bht,color bc, color tc, String lab)
  {
    x0 = x;
    y0 = y;
    bw = bwid;
    bh = bht;
    bcol = bc;
    label = lab;
    tcol = tc;
  }
  boolean isOver(int x,int y)
  {
  
    if (x>x0 && x<(x0+bw) && y>y0 && y<(y0+bh) ) 
     {
       return true;
     }
    else 
     {
       return false;
     }
  }
  void display()
  {
     fill(bcol);
     rect(x0,y0,bw,bh);
     fill(tcol);
     textAlign(CENTER,CENTER);
     text (label,x0+bw/2,y0+bh/2-2);
  }
  void doAction() {
  }
}
