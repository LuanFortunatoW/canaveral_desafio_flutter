import 'package:api_example/transactions/providers/list_all_transactions_provider.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nebraska/nebraska.dart';

import '../models/transaction_view_data.dart';

class TransactionsScreen extends ConsumerWidget {
  const TransactionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactions = ref.watch(listAllTransactionsProvider);

    return Scaffold(
      body: transactions.when(
        data: (data) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    TransactionViewData transaction = data[index];
                    return RowRegular(
                      title: Text(transaction.title),
                    );
                  },
                ),
              ),
            ],
          );
        },
        error: (error, stackTrace) {
          return HelperView(
            icon: NebraskaIcon.instance.schemaDefault.ea0160,
            type: HelperViewType.negative,
            title: 'Erro',
            description: 'Algo deu errado',
          );
        },
        loading: () => const CircularProgressIndicator(),
      ),
    );
  }
}
