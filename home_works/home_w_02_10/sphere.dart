

double pi = 3.14;

double Volume(double radius ){
  double vol = (4 / 3) * pi * (radius * 3);
  return vol; 
}


double SerfaceArea(double radius){
  double surAr = 4 * pi * (radius * 2);
  return surAr;
}

void main(){
  double radius = 12.0;
  print("Volume of Sphere : ${Volume(radius)}");
  print("Surface Area of Sphere : ${SerfaceArea(radius)}");
}