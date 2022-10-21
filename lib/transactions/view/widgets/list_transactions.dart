// ignore_for_file: depend_on_referenced_packages
import 'package:api_example/shared/fakeApi/utils/formaters.dart';
import 'package:flutter/material.dart';

import 'package:nebraska/nebraska.dart';

import '../../models/transaction_view_data.dart';

class ListTransactions extends StatelessWidget {
  const ListTransactions({
    Key? key,
    required this.data,
  }) : super(key: key);

  final List<TransactionViewData> data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: data.length,
        itemBuilder: (context, index) {
          TransactionViewData transaction = data[index];
          return _ListTileTransaction(transaction: transaction);
        },
      ),
    );
  }
}

class _ListTileTransaction extends StatelessWidget {
  const _ListTileTransaction({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  final TransactionViewData transaction;

  @override
  Widget build(BuildContext context) {
    final NebraskaThemeData theme =
        NebraskaTheme.of(context).copyWith(ContextTheme.brand);

    return Column(
      children: [
        DividerHorizontal(
          spacing: theme.sizes.spacing.x400,
        ),
        RowChipStatus(
          title: Text(
            transaction.title,
            style: theme.typography.p3,
          ),
          subtitle: Text(
            '${transaction.from} para ${transaction.to}',
            style: theme.typography.u1,
          ),
          titleDetail: Text(
            Formaters.simpleCurrencyFormater(
              transaction.amount.toDouble(),
            ),
            style: theme.typography.h4,
          ),
          chip: ChipStatus(
            chipText: transaction.status.replaceFirst(
              transaction.status.characters.first,
              transaction.status.characters.first.toUpperCase(),
            ),
            type: transaction.status == 'created'
                ? ChipStatusType.information
                : transaction.status == 'processing'
                    ? ChipStatusType.alert
                    : transaction.status == 'processed'
                        ? ChipStatusType.positive
                        : ChipStatusType.negative,
          ),
        ),
      ],
    );
  }
}
