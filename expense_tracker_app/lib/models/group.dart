import 'package:expense_tracker_app/models/user.dart';

class ExpenseGroup {
  int id;
  String description;
  List<User> members;

  ExpenseGroup.fromJSON(Map<String, dynamic> json)
      : id = json['id'],
        description = json['description'],
        members = json['members'];
}
