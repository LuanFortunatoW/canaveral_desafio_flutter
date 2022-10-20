// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionResponse _$TransactionResponseFromJson(Map<String, dynamic> json) =>
    TransactionResponse(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      status: json['status'] as String,
      amount: Decimal.fromJson(json['amount'] as String),
      date: DateTime.parse(json['date'] as String),
      from: json['from'] as String,
      to: json['to'] as String,
    );

Map<String, dynamic> _$TransactionResponseToJson(
        TransactionResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'status': instance.status,
      'amount': instance.amount,
      'date': instance.date.toIso8601String(),
      'from': instance.from,
      'to': instance.to,
    };
