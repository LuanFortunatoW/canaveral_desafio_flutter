import 'package:json_annotation/json_annotation.dart';

import 'transaction_response.dart';

part 'list_all_transactions_response.g.dart';

@JsonSerializable()
class ListAllTransactionsResponse {
  final List<TransactionResponse> transaction;

  ListAllTransactionsResponse({
    required this.transaction,
  });

  factory ListAllTransactionsResponse.fromJson(Map<String, dynamic> json) =>
      _$ListAllTransactionsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ListAllTransactionsResponseToJson(this);
}
