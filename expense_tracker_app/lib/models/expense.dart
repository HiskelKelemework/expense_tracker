class Expense {
  int id;
  String description;
  double amount;
  DateTime createdAt;
  DateTime modifiedAt;

  Expense.fromJSON(Map<String, dynamic> json)
      : id = json['id'],
        description = json['description'],
        amount = json['amount'],
        createdAt = json['createdAt'],
        modifiedAt = json['modifiedAt'];
}
