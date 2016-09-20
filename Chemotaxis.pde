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
 	//move and show the bacteria 
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
 		myX = myX + (int)(Math.random()*4)-2;
 		myY = myY + (int)(Math.random()*4)-3;
 	}
 	void show()
 	{
 		fill(myColor,myColor,myColor);
 		ellipse(myX,myY,2,2);
 	}   
 }    