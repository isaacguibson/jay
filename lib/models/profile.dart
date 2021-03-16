import './transaction.dart';
import './avatar.dart';

class Profile {

  final String name;
  final double income;
  final Avatar avatar;
  List<Transaction> transactions;

  Profile(this.name, this.income, this.avatar, {transactions = const []});
  
}