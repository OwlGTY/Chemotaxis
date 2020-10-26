Bacteria [] bact = new Bacteria[5]; //Creates an array of Phantoms, with 5 being declared.
 void setup()   
 {     
   size(500,500);
   background(25);
   for(int i = 0; i < bact.length; i++) //instantiates each Phantom based on the given array value (which is 5).
    {
    bact[i] = new Bacteria();
    }  
 }   
 void draw()//Initiates the Phantom to show and move based off of the amount of instantiations.
 { 
   background(25);
   for(int i = 0; i < bact.length;i++)
  {
   bact[i].show();
   bact[i].move();
  }
}  
 class Bacteria    
 {     
   int x, y, myColor; //declares variables of Phantoms
   
   Bacteria(){ //Spawns the Phantom anywhere on the screen, and the color is randomized to be generally purple-bluish.
     x = (int)(Math.random()*500); 
     y = (int)(Math.random()*500);
     myColor = color((int)(Math.random()*20)+50,(int)(Math.random()*20)+50,(int)(Math.random()*20)+70);
   }
   
   void move(){ //The Phantoms will generally move faster when the cursor is at a larger x or y value, but slowly move around the screen.
     if (mouseX > x)
       x = x + (int)(Math.random()*10)-3;
     if (mouseY > y)
       y = y + (int)(Math.random()*10)-3; 
    else
       x = x + (int)(Math.random()*10)-5;
       y = y + (int)(Math.random()*10)-5;
   }
   
   void show(){ //forms the Phantom
     fill(myColor);
     rect(x,y,20,20);
     rect(x-30,y+5,30,8);
     rect(x+20,y+5,30,8);
     fill(50);
   }
 } 
