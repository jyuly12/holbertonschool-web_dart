void outer(String name, String id){
  var user = name.split(" ");
  var userAlias = user[1].substring(0, 1) + "." + user[0];
  String inner(){
    return('Hello Agent $userAlias your id is $id');
  }
  print(inner());
}