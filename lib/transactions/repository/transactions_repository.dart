import 'package:api_example/shared/api/response/get_one_transaction_response.dart';
import 'package:api_example/shared/api/response/list_all_transactions_response.dart';

abstract class TransactionsRepository {
  Future<GetOneTransactionResponse> getOne(int id);

  Future<ListAllTransactionsResponse> listAll();
}
