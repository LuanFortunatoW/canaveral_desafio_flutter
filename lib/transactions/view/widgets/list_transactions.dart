// ignore_for_file: depend_on_referenced_packages
import 'package:api_example/l10n/transactions_strings.dart';
import 'package:api_example/transactions/providers/filter_list_provider.dart';
import 'package:api_example/transactions/providers/list_all_transactions_provider.dart';
import 'package:api_example/transactions/providers/text_filter_provider.dart';
import 'package:api_example/transactions/view/widgets/bottom_sheet_transaction_info.dart';
import 'package:flutter/material.dart';

import 'package:nebraska/nebraska.dart';

import '../../../shared/utils/chip_type_selector.dart';
import '../../../shared/utils/formaters.dart';
import '../../models/transaction_view_data.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ListTransactions extends ConsumerWidget {
  const ListTransactions({
    Key? key,
  }) : super(key: key);

  List<TransactionViewData> filterDataByText(
    List<TransactionViewData> data,
    String textFilter,
  ) {
    if (textFilter.isNotEmpty) {
      List<TransactionViewData> filteredData = [];
      for (var transaction in data) {
        if (transaction.title.toUpperCase().contains(
              textFilter.toUpperCase(),
            )) {
          filteredData.add(transaction);
        }
      }
      return filteredData;
    }
    return data;
  }

  List<TransactionViewData> filterDataByStatus(
    List<TransactionViewData> data,
    Set<String> statusList,
  ) {
    if (statusList.isNotEmpty) {
      List<TransactionViewData> filteredData = [];
      for (var transaction in data) {
        if (statusList.contains(transaction.status)) {
          filteredData.add(transaction);
        }
      }
      return filteredData;
    }
    return data;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<TransactionViewData> data =
        ref.watch(listAllTransactionsProvider).value!;
    final textFilter = ref.watch(textFilterProvider);
    final statusFilter = ref.watch(filterListProvider);

    data = filterDataByText(data, textFilter);
    data = filterDataByStatus(data, statusFilter);

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

class _ListTileTransaction extends ConsumerWidget {
  const _ListTileTransaction({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  final TransactionViewData transaction;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            TransactionsStrings.of(context)!.toTransfer(
              transaction.from,
              transaction.to,
            ),
            style: theme.typography.u1,
          ),
          titleDetail: Text(
            Formaters.simpleCurrencyFormater(
              transaction.amount.toDouble(),
              context,
            ),
            style: theme.typography.h4,
          ),
          chip: ChipStatus(
            chipText: transaction.status.replaceFirst(
              transaction.status.characters.first,
              transaction.status.characters.first.toUpperCase(),
            ),
            type: ChipTypeSelector.getChipType(transaction.status),
          ),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return BottomSheetTransactionInfo(
                  transaction: transaction,
                );
              },
            );
          },
        ),
      ],
    );
  }
}
