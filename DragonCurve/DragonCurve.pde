color c;
ArrayList<Line> lines = new ArrayList();

void setup(){
  size(600,600);
  lines.add(new Line(150,height/2.4,width-75,height/2.4));
}

void draw(){
  
  background(255);
 
  for(Line l : lines){    
    l.display();
  }
}

void mouseClicked(){
  
  c = color(map(lines.size(),1,5000,1,255),0,0);
  
  boolean dir = true;
  PVector iPos,fPos;
  int currentSize = lines.size();
  
  //Adding new Lines
  for(int i = 0; i < currentSize; i++){
    Line currentLine = lines.get(i);
    iPos = new PVector(currentLine.xi,currentLine.yi);
    fPos = new PVector(currentLine.xf,currentLine.yf);
    PVector v = PVector.sub(fPos,iPos);
    v.setMag(v.mag()/2);
    
    PVector p = new PVector(v.y*-1,v.x);
    if(dir){
      p.mult(1);
      dir = false;
    }else{
      p.mult(-1);
      dir = true;
    }
    
    PVector f = PVector.add(v,p);
    
    lines.add(new Line(currentLine.xi, currentLine.yi, currentLine.xi + f.x, currentLine.yi + f.y));
    lines.add(new Line(currentLine.xi + f.x, currentLine.yi + f.y, currentLine.xf, currentLine.yf));
  }
  
  //Removing old Lines
  for(int i = 0; i < currentSize; i++){
    lines.remove(0); 
  }  
}