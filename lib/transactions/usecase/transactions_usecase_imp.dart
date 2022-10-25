import 'package:api_example/transactions/models/transaction_view_data.dart';
import '../mappers/get_one_transaction_mapper.dart';
import '../mappers/list_all_transactions_mapper.dart';
import '../repository/transactions_repository.dart';
import 'transactions_usecase.dart';

class TransactionsUsecaseImp implements TransactionsUsecase {
  final TransactionsRepository _repository;
  TransactionsUsecaseImp(this._repository);

  @override
  Future<TransactionViewData> getOne(int id) async {
    final response = await _repository.getOne(id);
    return response.toViewData();
  }

  @override
  Future<List<TransactionViewData>> listAll() async {
    final response = await _repository.listAll();

    return response.toViewData();
  }
}
