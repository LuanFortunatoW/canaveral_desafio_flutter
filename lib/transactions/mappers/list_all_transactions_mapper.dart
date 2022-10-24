import 'package:api_example/shared/api/response/list_all_transactions_response.dart';
import 'package:api_example/transactions/models/transaction_view_data.dart';

extension ListAllTransactionsMapper on ListAllTransactionsResponse {
  List<TransactionViewData> toViewData() {
    return transaction
        .map(
          (transactionEntity) => TransactionViewData(
              id: transactionEntity.id,
              title: transactionEntity.title,
              description: transactionEntity.description,
              status: transactionEntity.status,
              amount: transactionEntity.amount,
              date: transactionEntity.date,
              from: transactionEntity.from,
              to: transactionEntity.to),
        )
        .toList();
  }
}
