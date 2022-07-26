import '2-util.dart';

Future<void> getUser() async {
  try {
    final response = await fetchUser();
    print (response);
  } catch (exc) {
    print("error caught: $exc");
  }
}