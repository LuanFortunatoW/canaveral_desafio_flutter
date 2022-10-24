// ignore_for_file: depend_on_referenced_packages
import 'package:dio/dio.dart';

import 'transactions_endpoint.dart';

class TransactionsEndpointImp implements TransactionsEndpoint {
  final Dio _dio;
  final String _baseUrl;

  TransactionsEndpointImp(
    this._dio,
    this._baseUrl,
  );

  @override
  Future<Response> getOne(int id) async {
    return _dio.get('$_baseUrl/transactions/$id');
  }

  @override
  Future<Response> listAll() async {
    final response = _dio.get('$_baseUrl/transactions');
    return response;
  }
}
