Bacteria[]colony;
Virus patho;
 void setup()   
 {      
 	size(500,500);
 	colony=new Bacteria[50];
 	for(int i=0; i<colony.length;i++)
 	{
 		colony[i] = new Bacteria();
 	}
 	patho=new Virus();
 }   
 void draw()   
 {    
 	background(224,255,255);
 	for(int i=0; i<colony.length;i++)
 	{
 		colony[i].move();
 		colony[i].show();
 	}
 	patho.move();
 	patho.show();
 }  
 class Bacteria    
 {     
 	int myX; int myY; int myColor;
 	Bacteria()
 	{
 		myX = (int)(Math.random()*501);
 		myY = (int)(Math.random()*501);
 		myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
 	}
 	void move()
 	{
 		myX = myX + (int)(Math.random()*7)-3;
 		myY = myY + (int)(Math.random()*7)-3;
 	}
 	void show()
 	{
 		fill(myColor);
 		ellipse(myX,myY,20,20);
 	}
 }
 class Virus
 {
 	int myX; int myY; Bacteria myTarget;
 	Virus()
 	{
 		myTarget = colony[(int)(Math.random()*51)];
 		myX = (int)(Math.random()*501);
 		myY = (int)(Math.random()*501);
 	}
 	void move()
 	{
 		if(myTarget.myX<myX)
 		{
 			myX = myX-1;
 		}
		else
		{
			myX = myX+1;
		}

		if(myTarget.myY<myY)
		{
 			myY = myY-1;
		}
		else
		{
			myY = myY+1;
		}
 	}
 	void show()
 	{
 		fill(255,0,0);
 		rect(myX,myY,10,10);
 	}
 }