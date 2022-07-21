List<double> convertToF(List<double> temperaturesInC){
  var toF = temperaturesInC
    .map((num) => double.parse((((num * 9) / 5) + 32).toStringAsFixed(2)))
    .toList();
  return(toF);
}
