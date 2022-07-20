int add(int a, int b){
  return(a+b);
}
int sub(int a, int b){
  return(a-b);
}
String showFunc(int a, int b){
  int addFunc = add(a,b);
  int subFunc = sub(a,b);
  return('Add $a + $b = $addFunc\nSub $a - $b = $subFunc');
}