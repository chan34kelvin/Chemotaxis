 //declare bacteria variables here   
 //declare bacteria variables here 
 Bacteria[] aLot;
 void setup()
 {
   size(500,500);
   aLot = new Bacteria[50];
   for(int i=0; i<aLot.length; i++){
     aLot[i] = new Bacteria();
   }

     //initialize bacteria variables here
 }
 void draw()
 {
   background((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
;
   fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   ellipse(250,250,500,500);
   for(int i = 0; i<aLot.length; i++){
     aLot[i].show();
     aLot[i].walk();
   }

     //move and show the bacteria
 }
 class Bacteria
 {
   int myX, myY;
   Bacteria(){
     myX = 250;
     myY = 250;
   }
   void walk(){
     if(mouseX > myX){
         myX = myX + (int)(Math.random()*10-1);
       }
       else if(mouseX < myX){
         myX = myX - (int)(Math.random()*10-1);
       }
     if(mouseY > myY){
        myY = myY + (int)(Math.random()*10-1);
      }
        else if(mouseY < myY){
          myY = myY - (int)(Math.random()*10-1);
        }
   }
   void show(){
     fill(255,255,0);
     rect(myX,myY,20,20,10);
     fill(255,0,255);
     rect(myX-10,myY-10,15,15,15);
     rect(myX+10,myY-10,15,15,15);
     fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
;
     ellipse(mouseX,mouseY,20,20);
     fill(0);
     rect(mouseX,mouseY,10,10);
   }
     //lots of java!
 }
