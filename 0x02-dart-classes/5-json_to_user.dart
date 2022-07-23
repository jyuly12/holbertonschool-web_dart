class User{
  String name = '';
  int id = 0;
  int age = 0;
  double height = 0;
  
  User({id: int, name: String, age: int, height: double}){
    this.id = id;
    this.name = name;
    this.age = age;
    this.height = height;
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
        id: userJson['id'],
        name: userJson['name'],
        age: userJson['age'],
        height: userJson['height']);
  }
  
  Map<String, dynamic> toJson(){
    return{
      'id': id,
      'name': name,
      'age': age,
      'height': height
    };
  }

  @override
  toString(){
    return('User(id : $id ,name: $name, age: $age, height: $height)');
  }
}