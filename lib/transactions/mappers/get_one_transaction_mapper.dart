import 'package:api_example/shared/fakeApi/response/get_one_transaction_response.dart';
import 'package:api_example/transactions/models/transaction_view_data.dart';

extension GetOneTransactionMapper on GetOneTransactionResponse {
  TransactionViewData toViewData() {
    return TransactionViewData(
      id: transaction.id,
      title: transaction.title,
      description: transaction.description,
      status: transaction.status,
      amount: transaction.amount,
      date: transaction.date,
      from: transaction.from,
      to: transaction.to,
    );
  }
}
