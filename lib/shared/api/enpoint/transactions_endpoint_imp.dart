// ignore_for_file: depend_on_referenced_packages
import 'package:dio/dio.dart';

import 'transactions_endpoint.dart';

class TransactionsEndpointImp implements TransactionsEndpoint {
  final Dio _dio;

  TransactionsEndpointImp(
    this._dio,
  );

  @override
  Future<Response> getOne(int id) async {
    return _dio.get('/transactions/$id');
  }

  @override
  Future<Response> listAll() async {
    final response = _dio.get('/transactions');
    return response;
  }
}
