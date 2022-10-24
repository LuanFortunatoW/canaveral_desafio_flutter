// ignore_for_file: depend_on_referenced_packages

import 'package:api_example/shared/api/enpoint/transactions_endpoint.dart';
import 'package:api_example/shared/api/enpoint/transactions_endpoint_imp.dart';
import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';

import '../shared/api_factory.dart';
import '../shared/mocks.dart';

void main() {
  late Response<Map<String, dynamic>> sucess;
  late DioMock dioMock;
  late TransactionsEndpoint transactionsEndpoint;

  When mockGetResponse() => when(
        () =>
            dioMock.get(any(), queryParameters: any(named: 'queryParameters')),
      );

  mockResponse(Map<String, dynamic> factory, int statusCode) => Response(
        data: factory,
        statusCode: statusCode,
        requestOptions: RequestOptions(path: faker.internet.httpUrl()),
      );

  setUp(() {
    dioMock = DioMock();
    transactionsEndpoint = TransactionsEndpointImp(
      dioMock,
    );
  });

  setUp(() {
    sucess = mockResponse(ApiFactory.listAll(), 200);
  });

  test(
    'WHEN listAll is requested THEN returns 200',
    (() async {
      mockGetResponse().thenAnswer((_) async => sucess);
      final result = await transactionsEndpoint.listAll();
      expect(result.statusCode, equals(200));
      expect(result, sucess);
    }),
  );

  test(
    'WHEN getOne is requested THEN returns 200',
    (() async {
      mockGetResponse().thenAnswer((_) async => sucess);
      final result = await transactionsEndpoint.getOne(
        faker.guid.random.integer(100),
      );
      expect(result.statusCode, equals(200));
      expect(result, sucess);
    }),
  );
}
