class Password {
  String _password;

  Password({required String password}) : _password = password;

  bool isValid() {
    if (_password == null) return false; // Add null check

    if (_password.length < 8 || _password.length > 16) {
      return false;
    }

    if (!_containsUppercase() || !_containsLowercase() || !_containsNumbers()) {
      return false;
    }

    return true;
  }

  bool _containsUppercase() {
    return _password.contains(RegExp(r'[A-Z]'));
  }

  bool _containsLowercase() {
    return _password.contains(RegExp(r'[a-z]'));
  }

  bool _containsNumbers() {
    return _password.contains(RegExp(r'[0-9]'));
  }

  @override
  String toString() {
    return "Password: ${isValid()}"; // Call the isValid() method here
  }
}

class User {
  int id;
  String name;
  int age;
  double height;
  String? user_password; // Nullable password property
  Password password; // Instance of the Password class

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    required String user_password,
  }) : password = Password(password: user_password);

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
      'user_password': user_password,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password'],
    );
  }

  @override
  String toString() {
    return "User(id : $id ,name: $name, age: $age, height: $height, ${password.toString()})";
  }
}
