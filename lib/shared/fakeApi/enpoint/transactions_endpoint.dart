// ignore_for_file: depend_on_referenced_packages
import 'package:dio/dio.dart';

abstract class TransactionsEndpoint {
  Future<Response> getOne();

  Future<Response> listAll();
}
