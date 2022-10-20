// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_one_transaction_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetOneTransactionResponse _$GetOneTransactionResponseFromJson(
        Map<String, dynamic> json) =>
    GetOneTransactionResponse(
      transaction: TransactionResponse.fromJson(
          json['transaction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetOneTransactionResponseToJson(
        GetOneTransactionResponse instance) =>
    <String, dynamic>{
      'transaction': instance.transaction,
    };
