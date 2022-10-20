import 'package:json_annotation/json_annotation.dart';

import 'package:api_example/shared/fakeApi/response/transaction_response.dart';

part 'get_one_transaction_response.g.dart';

@JsonSerializable()
class GetOneTransactionResponse {
  TransactionResponse transaction;

  GetOneTransactionResponse({
    required this.transaction,
  });

  factory GetOneTransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$GetOneTransactionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetOneTransactionResponseToJson(this);
}
