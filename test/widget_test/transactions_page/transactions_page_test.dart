import 'package:api_example/transactions/view/transactions_page.dart';
import 'package:api_example/transactions/view/widgets/bottom_sheet_transaction_info.dart';
import 'package:api_example/transactions/view/widgets/header_stack.dart';
import 'package:api_example/transactions/view/widgets/list_transactions.dart';
import 'package:api_example/transactions/view/widgets/transactions_filter.dart';
import 'package:flutter_test/flutter_test.dart';
// ignore: depend_on_referenced_packages
import 'package:nebraska/nebraska.dart';

import '../setup_widget_tester.dart';

void main() {
  group(
    'Testing Transactions page',
    () {
      testWidgets(
        'WHEN setup transactions page THEN return correct widgets ',
        (widgetTester) async {
          await loadPage(widgetTester, const TransactionsPage());

          final listTransactions = find.byType(ListTransactions);
          final header = find.byType(HeaderStack);

          expect(listTransactions, findsOneWidget);
          expect(header, findsOneWidget);
        },
      );
      testWidgets(
        'WHEN error loading transactions page THEN return helper ',
        (widgetTester) async {
          await loadPageError(widgetTester, const TransactionsPage());

          final helperView = find.byType(HelperView);

          expect(helperView, findsOneWidget);
        },
      );

      testWidgets(
        'WHEN click filter THEN ensure return BottomSheetFilter ',
        (widgetTester) async {
          await loadPage(widgetTester, const TransactionsPage());

          await widgetTester.tap(find.byType(TransactionsFilter));
          await widgetTester.pumpAndSettle();

          final bottomSheet = find.byType(ContentBottomSheet);

          expect(bottomSheet, findsOneWidget);
        },
      );

      testWidgets(
        'WHEN click transaction THEN ensure return BottomSheetTransactionInfo ',
        (widgetTester) async {
          await loadPage(widgetTester, const TransactionsPage());

          await widgetTester.tap(find.byType(RowChipStatus));
          await widgetTester.pumpAndSettle();

          final bottomSheet = find.byType(BottomSheetTransactionInfo);

          expect(bottomSheet, findsOneWidget);
        },
      );
    },
  );
}
