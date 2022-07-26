import 'dart:convert';
import "package:http/http.dart" as http;


printBbCharacters() async {
  try {
    var res = await http.get(Uri.parse('https://www.breakingbadapi.com/api/characters'),
    );
    var decode = json.decode(res.body);

    for (var i = 0; i < decode.length; i++) 
      print("${decode[i]['name']}");
    
  } catch (err) {
      print('error caught: $err');
  }
}