import 'transactions_endpoint.dart';
import 'package:dio/dio.dart';

// TODO: implement api
class TransactionsEndpointImp implements TransactionsEndpoint {
  @override
  Future<Response> getOne() async {
    return Response(
      requestOptions: RequestOptions(path: '/'),
      data: {
        "id": "5f89f9f23e427f64fc2ea101",
        "title": "Depósito",
        "description": "aute aliqua eu excepteur et",
        "status": "processing",
        "amount": 51668.85,
        "date": "2020-01-01",
        "from": "Férias",
        "to": "Conta Warren"
      },
    );
  }

  @override
  Future<Response> listAll() async {
    return Response(
      requestOptions: RequestOptions(path: '/'),
      data: [
        {
          "id": "5f89f9f257fe42957bf6dbfd",
          "title": "Resgate",
          "description": "et labore proident aute nulla",
          "status": "created",
          "amount": 2078.66,
          "date": "2018-12-22",
          "from": "Aposentadoria",
          "to": "Conta Warren"
        },
        {
          "id": "5f89f9f271e4213092bd4e41",
          "title": "Depósito",
          "description": "excepteur veniam proident irure pariatur",
          "status": "created",
          "amount": 148856.29,
          "date": "2017-07-23",
          "from": "Trade",
          "to": "Conta Warren"
        },
        {
          "id": "5f89f9f2f318e70ff298f528",
          "title": "Movimentação interna",
          "description": "eu officia laborum labore aute",
          "status": "processed",
          "amount": 25092.8,
          "date": "2016-08-25",
          "from": "Férias",
          "to": "Trade"
        }
      ],
    );
  }
}
