// ignore_for_file: depend_on_referenced_packages

import 'package:api_example/transactions/models/transaction_view_data.dart';
import 'package:riverpod/riverpod.dart';
import 'package:decimal/decimal.dart';

final listAllTransactionsFakeProvider =
    FutureProvider<List<TransactionViewData>>(
  (ref) => [
    TransactionViewData(
        id: 'id',
        title: 'title',
        description: 'description',
        status: 'status',
        amount: Decimal.zero,
        date: DateTime.now(),
        from: 'from',
        to: 'to'),
  ],
);

final listAllTransactionsErrorProvider =
    FutureProvider<List<TransactionViewData>>(
  (ref) => Future.error('Error'),
);
