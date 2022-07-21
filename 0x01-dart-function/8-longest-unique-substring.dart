String longestUniqueSubstring(String str){

  String letters = "";
  for(var i = 0; i < str.length; i++){
    if(letters.contains(str[i])){
      letters = letters.substring(letters.indexOf(str[i]) + 1);
     }
    letters += str[i];
  }
  return(letters);
}
  