class ResetButton extends Button {
   ResetButton (int x,int y,int bwid,int bht,color bc, color tc, String lab) {
    super(x,y,bwid,bht,bc, tc,lab);
   } 
  void doAction() {
   rel = 70;
   
   loop();
  }
}
