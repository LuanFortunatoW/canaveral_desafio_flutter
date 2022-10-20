import 'package:flutter/material.dart';

import 'package:nebraska/nebraska.dart';

import '../../../shared/fakeApi/utils/formaters.dart';
import '../../models/transaction_view_data.dart';

class ListTransactions extends StatelessWidget {
  const ListTransactions({
    Key? key,
    required this.data,
  }) : super(key: key);

  final List<TransactionViewData> data;

  @override
  Widget build(BuildContext context) {
    final NebraskaThemeData theme =
        NebraskaTheme.of(context).copyWith(ContextTheme.brand);
    return ListView.separated(
      separatorBuilder: (context, index) {
        return DividerHorizontal(
          spacing: theme.sizes.spacing.x500,
        );
      },
      itemCount: data.length,
      itemBuilder: (context, index) {
        TransactionViewData transaction = data[index];
        return _ListTileTransaction(transaction: transaction);
      },
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
    return RowChipStatus(
      title: Text(
        transaction.title,
      ),
      subtitle: Text(
        '${transaction.from} para ${transaction.to}',
      ),
      titleDetail: Text(
        Formaters.simpleCurrencyFormater(
          transaction.amount.toDouble(),
        ),
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
    );
  }
}
