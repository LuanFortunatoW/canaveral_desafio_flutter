import '../../shared/fakeApi/response/get_one_transaction_response.dart';
import '../../shared/fakeApi/response/list_all_transactions_response.dart';

abstract class TransactionsRepository {
  Future<GetOneTransactionResponse> getOne();

  Future<ListAllTransactionsResponse> listAll();
}
