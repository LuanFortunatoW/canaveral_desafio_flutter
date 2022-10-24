// ignore_for_file: depend_on_referenced_packages
import 'package:api_example/routes/app_routes.dart';
import 'package:api_example/transactions/view/transactions_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nebraska/nebraska.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desafio Flutter',
      theme: NebraskaThemeData(brightness: Brightness.light).themeData,
      darkTheme: NebraskaThemeData(brightness: Brightness.dark).themeData,
      debugShowCheckedModeBanner: false,
      initialRoute: TransactionsPage.route,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
