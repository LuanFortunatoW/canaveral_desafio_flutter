// ignore_for_file: depend_on_referenced_packages

import 'package:decimal/decimal.dart';

class TransactionViewData {
  String id;
  String title;
  String description;
  String status;
  Decimal amount;
  DateTime date;
  String from;
  String to;

  TransactionViewData({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
    required this.amount,
    required this.date,
    required this.from,
    required this.to,
  });
}
