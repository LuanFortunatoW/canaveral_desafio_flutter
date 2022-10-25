import 'package:api_example/transactions/models/transaction_view_data.dart';
import 'package:api_example/transactions/providers/filter_list_provider.dart';
import 'package:api_example/transactions/providers/list_all_transactions_provider.dart';
import 'package:api_example/transactions/providers/text_filter_provider.dart';
import 'package:flutter/material.dart';
import 'package:nebraska/nebraska.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../l10n/transactions_strings.dart';

class TransactionsFilter extends StatefulHookConsumerWidget {
  const TransactionsFilter({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<TransactionsFilter> createState() => _TransactionsFilterState();
}

class _TransactionsFilterState extends ConsumerState<TransactionsFilter> {
  @override
  Widget build(BuildContext context) {
    final NebraskaThemeData theme =
        NebraskaTheme.of(context).copyWith(ContextTheme.brand);
    final filterList = ref.watch(filterListProvider.notifier);

    return FilterSelect(
      // ignore: invalid_use_of_protected_member
      selectedValues: filterList.state.length,
      checked: filterList.checked,
      label: TransactionsStrings.of(context)!.filters,
      onPressed: () async {
        setState(() => filterList.checked = true);

        final bottomSheetCallback = await showModalBottomSheet(
          backgroundColor: theme.colors.core.background.secondary,
          context: context,
          builder: (context) {
            return const _BottomSheetFilter();
          },
        );
        filterList.setValues(bottomSheetCallback);
        setState(() {});
      },
    );
  }
}

class _BottomSheetFilter extends StatefulHookConsumerWidget {
  const _BottomSheetFilter({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<_BottomSheetFilter> createState() => _BottomSheetFilterState();
}

class _BottomSheetFilterState extends ConsumerState<_BottomSheetFilter> {
  List selectedValues = [];
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final NebraskaThemeData theme =
        NebraskaTheme.of(context).copyWith(ContextTheme.brand);

    final filterList = ref.watch(filterListProvider.notifier);
    final data = ref.watch(listAllTransactionsProvider).value!;

    return ContentBottomSheet(
      title: TransactionsStrings.of(context)!.filters,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: theme.sizes.spacing.x500,
          horizontal: theme.sizes.spacing.x600,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              TransactionsStrings.of(context)!.transactionTitleFilter,
              style: theme.typography.h3,
            ),
            TextField(
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
              style: theme.typography.u2,
              controller: controller,
              onChanged: (value) {
                ref.read(textFilterProvider.notifier).state = controller.text;
              },
            ),
            const Divider(),
            Text(
              TransactionsStrings.of(context)!.transactionStatusFilter,
              style: theme.typography.p4,
            ),
            FilterList(
              multiple: true,
              options: generateFilterData(data, filterList),
              callback: (options) {
                setState(() {
                  selectedValues = options;
                });
              },
            ),
            const Divider(),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: ButtonPrimary(
                label: TransactionsStrings.of(context)!.confirmFilter,
                onPressed: () {
                  Navigator.pop(context, selectedValues);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<FilterData> generateFilterData(
    List<TransactionViewData> data,
    FilterListNotifier filterList,
  ) {
    final Set<String> allStatus = {};
    for (var transaction in data) {
      allStatus.add(transaction.status);
    }
    final List<FilterData> result = [];
    for (var status in allStatus) {
      result.add(
        FilterData(
          label: status,
          value: status,
          checked: filterList.verifyContainsStatus(status),
        ),
      );
    }
    return result;
  }
}
