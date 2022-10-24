// ignore_for_file: depend_on_referenced_packages
import 'package:api_example/shared/api/enpoint/transactions_endpoint_imp.dart';
import 'package:api_example/shared/api/providers/base_url_provider.dart';
import 'package:api_example/shared/api/providers/dio_provider.dart';
import 'package:api_example/transactions/repository/transactions_repository_imp.dart';
import 'package:api_example/transactions/usecase/transactions_usecase_imp.dart';

import 'package:riverpod/riverpod.dart';

final transactionsEndpointProvider = StateProvider(
  (ref) => TransactionsEndpointImp(
    ref.watch(dioProvider),
    ref.watch(baseUrlProvider),
  ),
);

final transactionsRepositoryProvider = StateProvider(
  (ref) => TransactionsRepositoryImp(
    ref.watch(
      transactionsEndpointProvider,
    ),
  ),
);

final transactionsUsecaseProvider = StateProvider(
  (ref) => TransactionsUsecaseImp(
    ref.watch(
      transactionsRepositoryProvider,
    ),
  ),
);
