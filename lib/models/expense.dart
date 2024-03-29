class Expense {
  final int id; // unique id for every expense
  final String title; // what are we spending on
  final double amount; // how much we are spending
  final DateTime date; // when we aaree spending
  final String category; // which category on we spending

  // constructor
  Expense({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  });

  // 'Expense' to 'Map'
  Map<String, dynamic> toMap() => {
        // id will generate on its own
        'title': title,
        'amount': amount.toString(),
        'date': date.toString(),
        'category': category,
      };

  // 'Map' to 'Expense'
  factory Expense.fromString(Map<String, dynamic> value) => Expense(
      id: value['id'],
      title: value['title'],
      amount: double.parse(value['amount']),
      date: DateTime.parse(value['date']),
      category: value['category']);
}
