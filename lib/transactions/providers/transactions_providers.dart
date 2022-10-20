import 'package:api_example/shared/fakeApi/enpoint/transactions_endpoint_imp.dart';
import 'package:api_example/transactions/repository/transactions_repository_imp.dart';
import 'package:api_example/transactions/usecase/transactions_usecase_imp.dart';

import 'package:riverpod/riverpod.dart';

final transactionsEndpointProvider = StateProvider(
  (ref) => TransactionsEndpointImp(),
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
