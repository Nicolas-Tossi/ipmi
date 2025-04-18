
//TP 1

PImage Mifoto;

void setup(){
size(800,400);
background(255);
Mifoto= loadImage ("autoretrato.jpg");
image(Mifoto,0,0,400,400);
}

void draw(){
fill(245, 225, 200);
ellipse(600,200,250,290);
//lentes
rect(610,100,100,100,50);
rect(490,100,100,100,50);
//ojos
fill(255);
rect(500,140,50,20,120);
rect(630,140,50,20,120);
//cachetes
noStroke(); 
fill(245,225,200);
ellipse(510,240,80,80);
ellipse(690,240,80,80);
//pelo
fill(95,43,13);
rect(500,49,200,70,100);
//color ojos
fill(152,155,25);
ellipse(525,150,25,10);
ellipse(650,150,25,10);
//oreja
fill(245, 225, 200);
ellipse(730,210,50,50);
//boca
fill(250,23,23);
arc(600,230,100,100,radians(0),radians(180));
//cuello
fill(245,225,200);
rect(560,330,100,100);
}
