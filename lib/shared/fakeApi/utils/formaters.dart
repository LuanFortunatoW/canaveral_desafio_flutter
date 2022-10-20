import 'package:intl/intl.dart';

class Formaters {
  static String simpleCurrencyFormater(num number) {
    return NumberFormat.simpleCurrency().format(number);
  }
}
