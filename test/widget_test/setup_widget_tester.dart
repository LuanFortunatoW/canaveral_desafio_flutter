// ignore_for_file: depend_on_referenced_packages

import 'package:api_example/l10n/transactions_strings.dart';
import 'package:api_example/routes/app_routes.dart';
import 'package:api_example/transactions/providers/list_all_transactions_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_core/l10n/l10n.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:nebraska/nebraska.dart';

import 'fake_repository/fake_providers.dart';

class SetupWidgetTester extends StatelessWidget {
  const SetupWidgetTester({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        listAllTransactionsProvider
            .overrideWithProvider(listAllTransactionsFakeProvider),
      ],
      child: MaterialApp(
        supportedLocales: L10n.all,
        localizationsDelegates: const [
          TransactionsStrings.delegate,
          CoreStrings.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        theme: NebraskaThemeData(brightness: Brightness.light).themeData,
        darkTheme: NebraskaThemeData(brightness: Brightness.dark).themeData,
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
        supportedLocales: L10n.all,
        localizationsDelegates: const [
          TransactionsStrings.delegate,
          CoreStrings.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        theme: NebraskaThemeData(brightness: Brightness.light).themeData,
        darkTheme: NebraskaThemeData(brightness: Brightness.dark).themeData,
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
