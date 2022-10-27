// ignore_for_file: depend_on_referenced_packages

import 'package:api_example/shared/utils/chip_type_selector.dart';
import 'package:api_example/shared/utils/formaters.dart';
import 'package:api_example/transactions/models/transaction_view_data.dart';
import 'package:flutter/material.dart';
import 'package:nebraska/nebraska.dart';

import '../../../l10n/transactions_strings.dart';

class BottomSheetTransactionInfo extends StatelessWidget {
  const BottomSheetTransactionInfo({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  final TransactionViewData transaction;

  @override
  Widget build(BuildContext context) {
    final theme = NebraskaTheme.of(context);
    return ContentBottomSheet(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                transaction.title,
                style: theme.typography.p3,
              ),
              ChipStatus(
                chipText: transaction.status.replaceFirst(
                  transaction.status.characters.first,
                  transaction.status.characters.first.toUpperCase(),
                ),
                type: ChipTypeSelector.getChipType(transaction.status),
              ),
            ],
          ),
          SizedBox(height: theme.sizes.spacing.x700),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  text: "${TransactionsStrings.of(context)!.transferedFrom} ",
                  style: theme.typography.p5.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                    TextSpan(
                        text: transaction.from, style: theme.typography.p5),
                  ],
                ),
              ),
              Text(
                Formaters.simpleCurrencyFormater(
                  transaction.amount.toDouble(),
                  context,
                ),
              ),
            ],
          ),
          SizedBox(height: theme.sizes.spacing.x500),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  text: "${TransactionsStrings.of(context)!.to} ",
                  style: theme.typography.p5.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                    TextSpan(
                      text: transaction.to,
                      style: theme.typography.p5,
                    ),
                  ],
                ),
              ),
              Text(
                Formaters.simpleCurrencyFormater(
                  transaction.amount.toDouble(),
                  context,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
