import 'package:api_example/transactions/view/transactions_screen.dart';
import 'package:flutter/material.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({Key? key}) : super(key: key);

  static const String route = '/transactions_page';

  static Route? navigate() {
    PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return const TransactionsPage();
      },
    );
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return const TransactionsScreen();
  }
}
