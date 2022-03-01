import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import 'credit_card_base.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CreditCardBase(
      backgroundColor: AppColors.ebonyClay,
      child: SizedBox(
        width: 185,
        height: 275,
      ),
    );
  }
}
