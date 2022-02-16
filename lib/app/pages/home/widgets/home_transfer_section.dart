import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class HomeTransferSection extends StatelessWidget {
  const HomeTransferSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _themeText = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Transfer to',
            style: _themeText.headline5?.copyWith(fontWeight: FontWeight.bold)),
        TextButton(
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
            onPressed: () {},
            child: Text('+ Add new',
                style: _themeText.bodyText1?.copyWith(
                    fontWeight: FontWeight.bold, color: AppColors.purple)))
      ],
    );
  }
}
