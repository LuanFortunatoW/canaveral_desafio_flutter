import 'package:api_example/routes/app_routes.dart';
import 'package:api_example/transactions/models/transaction_view_data.dart';
import 'package:api_example/transactions/providers/list_all_transactions_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
// ignore: depend_on_referenced_packages
import 'package:hooks_riverpod/hooks_riverpod.dart';

final listAllTransactionsErrorProvider =
    FutureProvider<List<TransactionViewData>>(
  (ref) => Future.error('Error'),
);

class SetupWidgetTester extends StatelessWidget {
  const SetupWidgetTester({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        onGenerateRoute: (settings) {
          return AppRoutes.onGenerateRoute(settings);
        },
        home: Material(
          child: MediaQuery(
            data: const MediaQueryData(),
            child: child,
          ),
        ),
      ),
    );
  }
}

class SetupErrorWidgetTester extends StatelessWidget {
  const SetupErrorWidgetTester({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        listAllTransactionsProvider.overrideWithProvider(
          listAllTransactionsErrorProvider,
        ),
      ],
      child: MaterialApp(
        onGenerateRoute: (settings) {
          return AppRoutes.onGenerateRoute(settings);
        },
        home: Material(
          child: MediaQuery(
            data: const MediaQueryData(),
            child: child,
          ),
        ),
      ),
    );
  }
}

Future<void> loadPage(WidgetTester tester, Widget child) async {
  final widget = SetupWidgetTester(
    child: child,
  );
  await tester.pumpWidget(widget);
  await tester.pumpAndSettle();
}

Future<void> loadPageError(WidgetTester tester, Widget child) async {
  final widget = SetupErrorWidgetTester(
    child: child,
  );
  await tester.pumpWidget(widget);
  await tester.pumpAndSettle();
}
