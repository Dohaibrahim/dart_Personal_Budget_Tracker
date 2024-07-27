//import 'package:my_project/my_project.dart' as my_project;

import 'budget_.dart';
import 'transaction_.dart';

void main() {
  //transaction_ trans = transaction_(3000.0, "salary", "income");
  budget_ budget = budget_();

  budget.addTransaction(transaction_(3000, "salary", "income"));
  budget.addTransaction(transaction_(7000, "salary", "income"));
  budget.addTransaction(transaction_(10000, "rent", "expense"));

  budget.totalIncome();
  budget.totalExpenses();
  budget.displaySummary();
}
