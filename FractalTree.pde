private double fractionLength = .8; 
private int smallestBranch = 20; 
private double branchAngle = PI/9;  


public void setup() 
{   
	size(800,600);    
	noLoop(); 
} 

public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(400,600,400,450);   
	drawBranches(400, 450, 100, 1.5*PI);  //will add later 
} 

public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	//your code here    
	double angle1=angle-branchAngle;
	double angle2=angle+branchAngle;


	int endX1=(int)(branchLength*Math.cos(angle1)+x);
	int endY1=(int)(branchLength*Math.sin(angle1)+y);
	int endX2=(int)(branchLength*Math.cos(angle2)+x);
	int endY2=(int)(branchLength*Math.sin(angle2)+y);

	// stroke(r,g,b);
	line(x,y,endX1,endY1);
	line(x,y,endX2,endY2);

	if(branchLength>smallestBranch){
	// stroke(r+5, g-10, b+5);
	drawBranches(endX1,endY1,branchLength*fractionLength,angle1);
	drawBranches(endX2,endY2,branchLength*fractionLength,angle2);
	
	}
	
} 
