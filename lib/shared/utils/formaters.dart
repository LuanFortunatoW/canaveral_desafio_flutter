// ignore_for_file: depend_on_referenced_packages

import 'package:api_example/l10n/transactions_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class Formaters {
  static String simpleCurrencyFormater(num number, BuildContext context) {
    return NumberFormat.simpleCurrency(
      locale: TransactionsStrings.of(context)!.languageSymbol,
    ).format(number);
  }
}
