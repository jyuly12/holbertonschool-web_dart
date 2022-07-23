class Password{
  String _password = '';

  Password({password: String}) {
    this._password = password;
  }

  isValid(){
    return ((_password.length >= 8) &&
        (_password.length <= 16)) &&
        this._password.contains(new RegExp(r"[A-Z]")) &&
        this._password.contains(new RegExp(r"[a-z]")) &&
        this._password.contains(new RegExp(r"[0-9]"));
  }

  @override
  toString(){
    return('Your Password is: $_password');
  }
}