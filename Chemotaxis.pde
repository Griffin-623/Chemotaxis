Walker[] georgia=new Walker[20];
int x = mouseX;
 int y = mouseY;
void setup(){
size(500,500);
for(int i=0; i<georgia.length;i++){
   georgia[i] = new Walker();

}
}

class Walker{
int myX, myY,Color1,Color2,Color3;
Walker(){
 Color1=(int)(Math.random()*256);
   Color2=(int)(Math.random()*256);
   Color3=(int)(Math.random()*256);
myX = (int)(Math.random()*500);
myY =(int)(Math.random()*500);
}
void walk(){
if(mouseX>myX){
  myX = myX +(int)(Math.random()*5) ;
}else{
myX = myX -(int)(Math.random()*5);
}
if(mouseY>myY){
  myY = myY + (int)(Math.random()*5);
}else{
myY = myY -(int)(Math.random()*5);
}


}
void show(){
  
 
  
  fill(Color1,Color2,Color3);
  ellipse(myX,myY,15,15);
}


}
void draw(){
background(255);
  x = mouseX;
  y = mouseY;
  fill(242,242,12);
 
  ellipse(x,y,30,30);
  
for(int i=0; i<georgia.length;i++){
  
  georgia[i].show();
   georgia[i].walk();
}
 
}
