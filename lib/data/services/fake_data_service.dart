import '../models/user_model.dart';
import '../models/transaction_model.dart';

class FakeDataService {

  UserModel getUser() {
    return UserModel(
      name: "MD. ASIF HOSSAIN",
      phone: "01311857773",
      balance: 25000,
    );
  }

  List<TransactionModel> getTransactions() {
    return [
      TransactionModel(
        title: "Send Money",
        amount: 500,
        date: "Today",
        isDebit: true,
      ),
      TransactionModel(
        title: "Cash In",
        amount: 1000,
        date: "Yesterday",
        isDebit: false,
      ),
    ];
  }
}