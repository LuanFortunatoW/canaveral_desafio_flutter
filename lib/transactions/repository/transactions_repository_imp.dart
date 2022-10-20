import 'package:api_example/shared/fakeApi/enpoint/transactions_endpoint.dart';
import 'package:api_example/shared/fakeApi/response/get_one_transaction_response.dart';
import 'package:api_example/shared/fakeApi/response/list_all_transactions_response.dart';
import 'package:api_example/shared/fakeApi/response/transaction_response.dart';
import 'package:api_example/transactions/repository/transactions_repository.dart';

class TransactionsRepositoryImp implements TransactionsRepository {
  final TransactionsEndpoint _endpoint;

  TransactionsRepositoryImp(this._endpoint);

  @override
  Future<GetOneTransactionResponse> getOne() async {
    final response = await _endpoint.getOne();
    return GetOneTransactionResponse.fromJson(response.data);
  }

  @override
  Future<ListAllTransactionsResponse> listAll() async {
    final response = await _endpoint.listAll();

    return ListAllTransactionsResponse(
      transactions: List.from(
        response.data
            .map(
              (json) => TransactionResponse.fromJson(json),
            )
            .toList(),
      ),
    );
  }
}
