class UserModel {
  String name;
  int id;
  String email;
  UserModel({required this.name, required this.id, required this.email});
  factory UserModel.fromJson(var json) {
    return UserModel(name: json["name"], id: json["id"], email: json["email"]);
  }
}
