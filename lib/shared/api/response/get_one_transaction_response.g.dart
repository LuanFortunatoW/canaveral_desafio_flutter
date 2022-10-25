// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_one_transaction_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetOneTransactionResponse _$GetOneTransactionResponseFromJson(
        Map<String, dynamic> json) =>
    GetOneTransactionResponse(
      transactions: (json['transactions'] as List<dynamic>)
          .map((e) => TransactionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetOneTransactionResponseToJson(
        GetOneTransactionResponse instance) =>
    <String, dynamic>{
      'transactions': instance.transactions,
    };
