double calculateArea(double height, double base){
  var area = (height * base)/ 2;
  double areaFixed = double.parse(area.toStringAsFixed(2));
  return(areaFixed);
}
