import 'package:flutter/material.dart';

import '../../../widgets/credit_card/add_new_credit_card.dart';

class HomeBodyCards extends StatelessWidget {
  const HomeBodyCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [AddNewCreditCard()],
    );
  }
}
