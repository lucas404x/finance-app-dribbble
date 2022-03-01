import 'package:flutter/material.dart';

import '../../../widgets/credit_card/add_new_credit_card.dart';
import '../../../widgets/credit_card/background_card.dart';
import '../../../widgets/credit_card/visa_card.dart';

class HomeBodyCards extends StatelessWidget {
  const HomeBodyCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Positioned(
          left: 165,
          child: Transform.scale(
            scale: .8,
            child: const BackgroundCard(),
          ),
        ),
        Positioned(
          left: 145,
          child: Transform.scale(
            scale: .9,
            child: const VisaCard(),
          ),
        ),
        const AddNewCreditCard()
      ],
    );
  }
}
