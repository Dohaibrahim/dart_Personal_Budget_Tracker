import 'transaction_.dart';
import 'package:collection/collection.dart';

class budget_ {
  List<transaction_> income = [];
  List<transaction_> expenses = [];

  void addTransaction(transaction_ transaction) {
    if (transaction.type == "income") {
      income.add(transaction);
    } else if (transaction.type == "expense") {
      expenses.add(transaction);
    } else {
      print("the type must be income or expense");
    }
  }

  double totalIncome() {
    return income.map((t) => t.amount).reduce((a, b) => a + b);
  }

  double totalExpenses() {
    return expenses
        .map((t) => t.amount)
        .reduce((value, element) => value + element);
  }

  double balance() {
    return totalIncome() - totalExpenses();
  }

  void displaySummary() {
    print("here is the transaction details:");
    income.forEach((element) {
      print("${element.description}: \$${element.amount}");
    });
    expenses.forEach((element) {
      print("${element.description}: \$${element.amount}");
    });
    print("total income: ${totalIncome()}");
    print("total expense: ${totalExpenses()}");
    print("balance: ${balance()}");
  }
}
