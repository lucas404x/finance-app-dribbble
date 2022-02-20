import 'package:flutter/material.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../widgets/profile/profile_picture.dart';

class HomeHeaderWithProfile extends StatelessWidget {
  const HomeHeaderWithProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello,', style: _textTheme.headline6),
            Text(
              'Alex 🔥',
              style:
                  _textTheme.headline4?.copyWith(fontWeight: FontWeight.w800),
            )
          ],
        ),
        const ProfilePicture(
          image: AppAssets.memojiProfile,
          backgroundColor: AppColors.peach,
        )
      ],
    );
  }
}
