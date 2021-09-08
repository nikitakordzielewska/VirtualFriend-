class TalkButton extends Button {
   TalkButton (int x,int y,int bwid,int bht,color bc, color tc, String lab) {
     super(x,y,bwid,bht,bc,tc,lab);
   }
  void doAction() { 
     rel = rel +10;

   } 
}
