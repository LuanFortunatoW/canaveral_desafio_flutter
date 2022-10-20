import 'package:dio/dio.dart';

abstract class TransactionsEndpoint {
  Future<Response> getOne();

  Future<Response> listAll();
}
