class Line{
  float xi,yi,xf,yf;
  Line(float xi_, float yi_, float xf_, float yf_){
    xi = xi_;
    yi = yi_;
    xf = xf_;
    yf = yf_;
  }
  
  void display(){
    line(xi,yi,xf,yf);
  }
  
}