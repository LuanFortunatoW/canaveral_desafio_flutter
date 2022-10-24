import 'transactions_strings.dart';

/// The translations for Portuguese (`pt`).
class TransactionsStringsPt extends TransactionsStrings {
  TransactionsStringsPt([String locale = 'pt']) : super(locale);

  @override
  String get languageSymbol => 'pt_BR';

  @override
  String get appTitle => 'chalenge accelerate';

  @override
  String get mobile => 'Mobile';

  @override
  String get detailsStart => 'São';

  @override
  String get detailsTransactions => 'movimentações';

  @override
  String get detailsEnd => 'disponíveis para visualização';

  @override
  String get filters => 'Filtros';

  @override
  String get transactions => 'Movimentações';

  @override
  String toTransfer(String from, String to) {
    return '$from para $to';
  }
}
