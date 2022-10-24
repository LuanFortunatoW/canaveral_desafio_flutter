// ignore_for_file: depend_on_referenced_packages

import 'package:api_example/transactions/providers/list_all_transactions_provider.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nebraska/nebraska.dart';

import 'widgets/transactions_body.dart';

class TransactionsScreen extends ConsumerWidget {
  const TransactionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactions = ref.watch(listAllTransactionsProvider);
    final NebraskaThemeData theme =
        NebraskaTheme.of(context).copyWith(ContextTheme.brand);

    return Scaffold(
      backgroundColor: theme.colors.core.background.secondary,
      body: transactions.when(
        data: (data) => const TransactionsBody(),
        error: (error, stackTrace) => const _LoadingErrorHelper(),
        loading: () => const CircularProgressIndicator(),
      ),
    );
  }
}

class _LoadingErrorHelper extends StatelessWidget {
  const _LoadingErrorHelper({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HelperView(
      icon: NebraskaIcon.instance.schemaDefault.ea0160,
      type: HelperViewType.negative,
      title: 'Erro',
      description: 'Algo deu errado',
    );
  }
}
