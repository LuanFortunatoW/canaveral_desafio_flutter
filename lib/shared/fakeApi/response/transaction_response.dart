import 'package:decimal/decimal.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transaction_response.g.dart';

@JsonSerializable()
class TransactionResponse {
  final String id;
  final String title;
  final String description;
  final String status;
  final Decimal amount;
  final DateTime date;
  final String from;
  final String to;
  TransactionResponse({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
    required this.amount,
    required this.date,
    required this.from,
    required this.to,
  });

  factory TransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionResponseToJson(this);
}
