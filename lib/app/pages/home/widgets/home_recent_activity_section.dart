import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class HomeRecentActivitySection extends StatelessWidget {
  const HomeRecentActivitySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _themeText = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Recent activity',
            style: _themeText.headline5?.copyWith(fontWeight: FontWeight.bold)),
        IconButton(
            onPressed: () {},
            icon: const RotatedBox(
              quarterTurns: 2,
              child: Icon(
                Icons.arrow_back,
                color: AppColors.purple
              ),
            ))
      ],
    );
  }
}
