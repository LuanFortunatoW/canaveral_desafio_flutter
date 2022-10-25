import 'package:api_example/shared/api/enpoint/transactions_endpoint.dart';
import 'package:api_example/shared/api/response/get_one_transaction_response.dart';
import 'package:api_example/shared/api/response/list_all_transactions_response.dart';
import 'package:api_example/transactions/repository/transactions_repository.dart';

class TransactionsRepositoryImp implements TransactionsRepository {
  final TransactionsEndpoint _endpoint;

  TransactionsRepositoryImp(this._endpoint);

  @override
  Future<GetOneTransactionResponse> getOne(int id) async {
    final response = await _endpoint.getOne(id);
    return GetOneTransactionResponse.fromJson(response.data);
  }

  @override
  Future<ListAllTransactionsResponse> listAll() async {
    final response = await _endpoint.listAll();

    return ListAllTransactionsResponse.fromJson(response.data);
  }
}
