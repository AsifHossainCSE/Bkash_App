class TransactionModel {
  final String title;
  final double amount;
  final String date;
  final bool isDebit;

  TransactionModel({
    required this.title,
    required this.amount,
    required this.date,
    required this.isDebit,
  });
}