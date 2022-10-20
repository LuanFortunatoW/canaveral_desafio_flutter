import 'package:api_example/transactions/providers/list_all_transactions_provider.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nebraska/nebraska.dart';

import 'widgets/header_container.dart';
import 'widgets/list_transactions.dart';

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
        data: (data) {
          return Column(
            children: [
              const HeaderContainer(),
              const _ListTitle(),
              Expanded(
                child: ListTransactions(data: data),
              )
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

class _ListTitle extends StatelessWidget {
  const _ListTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionTitle(
      title: const Text('Movimentações'),
      detailTitle: FilterSelect(
        label: 'Filtros',
        checked: false,
        disabled: false,
        onPressed: () {},
      ),
    );
  }
}
