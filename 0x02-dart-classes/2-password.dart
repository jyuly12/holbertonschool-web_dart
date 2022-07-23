class Password{
  String password = '';

  isValid(){
    return ((password.length >= 8) &&
        (password.length <= 16)) &&
        this.password.contains(new RegExp(r"[A-Z]")) &&
        this.password.contains(new RegExp(r"[a-z]")) &&
        this.password.contains(new RegExp(r"[0-9]"));
  }

  @override
  toString(){
    return('Your Password is: $password');
  }
}