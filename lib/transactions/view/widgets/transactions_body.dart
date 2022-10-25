import 'package:api_example/l10n/transactions_strings.dart';
import 'package:api_example/transactions/view/widgets/transactions_filter.dart';
import 'package:flutter/material.dart';

import 'header_stack.dart';
// ignore: depend_on_referenced_packages
import 'package:nebraska/nebraska.dart';

import 'list_transactions.dart';

class TransactionsBody extends StatelessWidget {
  const TransactionsBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        HeaderStack(),
        _ListTitle(),
        ListTransactions(),
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
        TransactionsStrings.of(context)!.transactions,
        style: theme.typography.p2,
      ),
      detailTitle: const TransactionsFilter(),
    );
  }
}
