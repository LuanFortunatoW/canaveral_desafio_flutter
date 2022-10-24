// ignore_for_file: depend_on_referenced_packages
import 'package:api_example/l10n/transactions_strings.dart';
import 'package:api_example/routes/app_routes.dart';
import 'package:api_example/transactions/view/transactions_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:flutter_core/l10n/l10n.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nebraska/nebraska.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desafio Flutter',
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
      debugShowCheckedModeBanner: false,
      initialRoute: TransactionsPage.route,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
