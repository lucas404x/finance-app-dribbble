import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/app_assets.dart';
import '../../constants/app_colors.dart';
import 'credit_card_base.dart';

class VisaCard extends StatelessWidget {
  const VisaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;

    return CreditCardBase(
      backgroundColor: AppColors.burningOrange,
      child: SizedBox(
        height: 270,
        width: 170,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 32,
            left: 24,
            right: 24,
            bottom: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '*** 1255',
                    style: _textTheme.bodyText2?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '\$54 653',
                    style: _textTheme.headline5?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SvgPicture.asset(
                AppAssets.visaLogo,
                color: Colors.white,
                width: 48,
              )
            ],
          ),
        ),
      ),
    );
  }
}
