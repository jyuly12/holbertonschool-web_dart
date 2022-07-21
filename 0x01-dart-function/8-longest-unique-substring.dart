String longestUniqueSubstring(String str){

  String letters = "";
  for(var i = 0; i < str.length; i++){
     if(letters.contains(str[i])){
       continue;
     }else
       letters += str[i];
  }
  return(letters);
}