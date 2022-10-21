import 'package:flutter/material.dart';

import 'header_container.dart';
import 'transactions_info_container.dart';

class HeaderStack extends StatelessWidget {
  const HeaderStack({
    Key? key,
    required this.transactionsLenght,
  }) : super(key: key);

  final int transactionsLenght;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const HeaderContainer(),
        TransactionsInfoContainer(transactionsLenght: transactionsLenght),
      ],
    );
  }
}
