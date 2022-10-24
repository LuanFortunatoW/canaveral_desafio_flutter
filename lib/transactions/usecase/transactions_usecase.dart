import 'package:api_example/transactions/models/transaction_view_data.dart';

abstract class TransactionsUsecase {
  Future<TransactionViewData> getOne(int id);

  Future<List<TransactionViewData>> listAll();
}
