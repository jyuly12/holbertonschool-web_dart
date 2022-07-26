import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async{
  try {
    var response = await fetchUserData();
    var decode = json.decode(response);
    return('Hello ${decode['username']}');
  } catch (exc) {
    return("error caught: $exc");
  }
}
Future<String> loginUser() async{
  try{
    if (await checkCredentials() == true){
      print('There is a user: true');
      return(await greetUser());
    } else {
      print('There is a user: false'); 
      return 'Wrong credentials';
    }
  }catch (exc){
    return("error caught: $exc");
  }
}