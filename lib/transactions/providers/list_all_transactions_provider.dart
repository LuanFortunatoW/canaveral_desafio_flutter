// ignore_for_file: depend_on_referenced_packages

import 'package:api_example/transactions/models/transaction_view_data.dart';
import 'package:api_example/transactions/providers/transactions_providers.dart';
import 'package:riverpod/riverpod.dart';

final listAllTransactionsProvider = FutureProvider<List<TransactionViewData>>(
  (ref) => ref.watch(transactionsUsecaseProvider).listAll(),
);
