import '6-password.dart';

class User extends Password{
  String name = '';
  int id = 0;
  int age = 0;
  double height = 0;
  String user_password = '';
  
  User({id: int, name: String, age: int, height: double, user_password: String}): super(password: user_password){
    this.id = id;
    this.name = name;
    this.age = age;
    this.height = height;
    this.user_password = user_password;
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
        id: userJson['id'],
        name: userJson['name'],
        age: userJson['age'],
        height: userJson['height'],
        user_password: ''
        );
  }
  
  Map<String, dynamic> toJson(){
    return{
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  @override
  toString(){
    final password = new Password(password: this.user_password);
    return('User(id : $id ,name: $name, age: $age, height: $height, Password: ${password.isValid()})');
  }
}