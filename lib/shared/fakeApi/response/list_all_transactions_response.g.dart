// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_all_transactions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListAllTransactionsResponse _$ListAllTransactionsResponseFromJson(
        Map<String, dynamic> json) =>
    ListAllTransactionsResponse(
      transactions: (json['transactions'] as List<dynamic>)
          .map((e) => TransactionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListAllTransactionsResponseToJson(
        ListAllTransactionsResponse instance) =>
    <String, dynamic>{
      'transactions': instance.transactions,
    };
