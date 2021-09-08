class JokeButton extends Button {
   JokeButton (int x,int y,int bwid,int bht,color bc, color tc, String lab) {
     super(x,y,bwid,bht,bc, tc,lab);
   }
   void doAction() {
 
     float r = random(1);
 
 posttalk = posttalklimit;
     
     //the stronger relationship the more likely to laugh
     if (rel<=0) {
       currentP = notFunny;
     }
     else if ((rel>0) && (rel<50) && (r<0.5))
       {
         currentP = notFunny;
       }
       else if ((rel>=50) && (rel<120) && (r<.2)){
         currentP = notFunny;
       }
       else if ((rel>=120) && (rel<170) && (r<.1)){
         currentP = notFunny;
       }
     else
      {
        currentP = laugh;
        rel = rel+3;
      }
   }

}
