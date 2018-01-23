class Square{
  float c,x,y,size;
  
  Square(float rgb, float xPos, float yPos, float wh){
    c = rgb;
    x = xPos;
    y = yPos;
    size = wh;
  }
  
  void display(){
    fill(c);
    rect(x,y,size,size);
  }
  
}