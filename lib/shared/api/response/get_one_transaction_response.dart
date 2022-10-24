import 'package:json_annotation/json_annotation.dart';

import 'transaction_response.dart';

part 'get_one_transaction_response.g.dart';

@JsonSerializable()
class GetOneTransactionResponse {
  List<TransactionResponse> transactions;

  GetOneTransactionResponse({
    required this.transactions,
  });

  factory GetOneTransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$GetOneTransactionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetOneTransactionResponseToJson(this);
}
