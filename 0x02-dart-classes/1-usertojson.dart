class User{
  String name = '';
  int age = 0;
  double height = 0;
  
  User({name: String, age: int, height: double}){
    this.name = name;
    this.age = age;
    this.height = height;
  }
  Map<String, dynamic> toJson(){
    return{
      'name': name,
      'age': age,
      'height': height
    };
  }
}