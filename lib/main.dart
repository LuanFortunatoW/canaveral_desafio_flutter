import 'package:api_example/routes/app_routes.dart';
import 'package:api_example/transactions/view/transactions_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Desafio Flutter',
      debugShowCheckedModeBanner: false,
      initialRoute: TransactionsPage.route,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
