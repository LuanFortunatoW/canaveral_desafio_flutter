import 'package:api_example/transactions/view/transactions_page.dart';
import 'package:flutter/cupertino.dart';

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case TransactionsPage.route:
        return TransactionsPage.navigate();
    }
    return null;
  }
}
