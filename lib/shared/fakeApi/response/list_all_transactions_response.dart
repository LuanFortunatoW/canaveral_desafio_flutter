import 'package:api_example/shared/fakeApi/response/transaction_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'list_all_transactions_response.g.dart';

@JsonSerializable()
class ListAllTransactionsResponse {
  final List<TransactionResponse> transactions;

  ListAllTransactionsResponse({
    required this.transactions,
  });

  factory ListAllTransactionsResponse.fromJson(Map<String, dynamic> json) =>
      _$ListAllTransactionsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ListAllTransactionsResponseToJson(this);
}
