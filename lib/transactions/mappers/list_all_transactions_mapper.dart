import 'package:api_example/transactions/models/transaction_view_data.dart';

import '../../shared/fakeApi/response/list_all_transactions_response.dart';

extension ListAllTransactionsMapper on ListAllTransactionsResponse {
  List<TransactionViewData> toViewData() {
    return transactions
        .map(
          (transaction) => TransactionViewData(
              id: transaction.id,
              title: transaction.title,
              description: transaction.description,
              status: transaction.status,
              amount: transaction.amount,
              date: transaction.date,
              from: transaction.from,
              to: transaction.to),
        )
        .toList();
  }
}
