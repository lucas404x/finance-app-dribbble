import 'package:financial_dribbble_app/app/constants/app_assets.dart';
import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../button.dart';
import 'credit_card_base.dart';

class AddNewCreditCard extends StatelessWidget {
  const AddNewCreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;

    return CreditCardBase(
      backgroundColor: AppColors.purple,
      child: Padding(
          padding:
              const EdgeInsets.only(top: 32, left: 24, right: 24, bottom: 32),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Total balance',
                  style: _textTheme.bodySmall?.copyWith(color: Colors.white)),
              Text('\$123 431',
                  style: _textTheme.headline4?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ]),
            const SizedBox(height: 84),
            Button(
                backgroundColor: AppColors.ebonyClay,
                child: Image.asset(
                  AppAssets.addCreditCardIcon,
                  width: 24,
                  height: 24,
                ),
                onPressed: () {})
          ])),
    );
  }
}
