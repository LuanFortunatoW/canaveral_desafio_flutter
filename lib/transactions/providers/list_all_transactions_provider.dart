import 'package:api_example/transactions/providers/transactions_providers.dart';
import 'package:riverpod/riverpod.dart';

final listAllTransactionsProvider = FutureProvider(
  (ref) => ref.watch(transactionsUsecaseProvider).listAll(),
);
