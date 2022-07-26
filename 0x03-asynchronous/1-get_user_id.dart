import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  var response = await fetchUserData();
  var decode = json.decode(response);
  return(decode['id']);
}