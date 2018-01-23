ArrayList<Square> squares = new ArrayList<Square>();
int size;
int clicks = 1;

void setup(){
  size(600,600);
  size = width/3;
}

void draw(){
  background(50);
  
  for(Square s : squares){
    s.display();
  }
  
}

void mouseClicked(){
  
  float newSize = size/clicks;
  float x = 0, y = 0;
  int currentSize;
  
  if(squares.size() != 0){
    
    currentSize = squares.size();
    int toRemove[] = new int[currentSize-1];
    
    for(int iii = 0; iii < currentSize; iii++){
      Square s = squares.get(iii);
      x = s.x;
      y = s.y;
      //Lines
      for(int i = 0; i < 3; i++){
        //Columns
        for(int ii = 0; ii < 3; ii++){
          if(i*ii!=1){
            squares.add(new Square(255,x,y,newSize));
          }
          x+=newSize;
        }
        x=s.x;
        y+=newSize;
      }
    }
    
    for(int i=0; i <= toRemove.length; i++){
      squares.remove(0); 
    }
    
  }else{
    //Lines
    for(int i = 0; i < 3; i++){
      //Columns
      for(int ii = 0; ii < 3; ii++){
        if(i*ii!=1){
          squares.add(new Square(255,x,y,newSize));
        }
        x+=size;
      }
      x=0;
      y+=size;
    }
  }
  
  clicks *= 3;
  
}