// ignore_for_file: depend_on_referenced_packages

import 'package:intl/intl.dart';

class Formaters {
  static String simpleCurrencyFormater(num number) {
    return NumberFormat.simpleCurrency(locale: 'pt_BR').format(number);
  }
}
