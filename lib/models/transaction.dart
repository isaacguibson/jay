import 'package:flutter/foundation.dart';

class Transaction {
  final int id;
  final double amount;
  final String title;
  final DateTime date;

  const Transaction({
      @required this.id,
      @required this.amount,
      @required this.date,
      @required this.title
  });
}
