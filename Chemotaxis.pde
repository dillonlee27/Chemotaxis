 //declare bacteria variables here   
 Bacteria [] greenColony;
 void setup()   
 {     
 	//initialize bacteria variables here
 	size(500,500);
 	greenColony = new Bacteria[300];
 	for (int m = 0; m < greenColony.length; m++)
 	{
 		greenColony[m] = new Bacteria();
 	}   
 }   
 void draw()   
 {    
 	
 	for(int m = 0; m < greenColony.length; m++)
 	{
 		greenColony[m].walk();
 		greenColony[m].show();
 	}  
 }
 class Bacteria    
 {     
 	//lots of java!
 	int myX, myY, myColor;
 	Bacteria()
 	{
 		myX = 250;
 		myY = 250;
 		myColor = (int)(Math.random()*256);		
 	}
 	void walk()
 	{
 		myX = myX + (int)(Math.random()*11)-5;
 		myY = myY + (int)(Math.random()*23)-11;
 	}
 	void show()
 	{
 		fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
 		ellipse(myX,myY,10,10);
 	}   
 }    