import 'package:flutter/material.dart';

import '../../models/transaction_view_data.dart';
import 'header_stack.dart';
// ignore: depend_on_referenced_packages
import 'package:nebraska/nebraska.dart';

import 'list_transactions.dart';

class TransactionsBody extends StatelessWidget {
  const TransactionsBody({
    Key? key,
    required this.data,
  }) : super(key: key);

  final List<TransactionViewData> data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderStack(transactionsLenght: data.length),
        const _ListTitle(),
        ListTransactions(data: data)
      ],
    );
  }
}

class _ListTitle extends StatelessWidget {
  const _ListTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NebraskaThemeData theme =
        NebraskaTheme.of(context).copyWith(ContextTheme.brand);

    return SectionTitle(
      title: Text(
        'Movimentações',
        style: theme.typography.p2,
      ),
      detailTitle: FilterSelect(
        label: 'Filtros',
        onPressed: () {},
      ),
    );
  }
}
