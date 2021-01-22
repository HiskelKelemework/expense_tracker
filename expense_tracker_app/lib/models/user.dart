class User {
  int id;
  String name;

  User.fromJSON(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'];
}
