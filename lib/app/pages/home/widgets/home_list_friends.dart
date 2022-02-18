import 'package:flutter/material.dart';

import '../../../constants/app_assets.dart';
import '../../../widgets/profile_picture.dart';

class HomeListFriends extends StatelessWidget {
  const HomeListFriends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _friends = AppAssets.memojisFriends;

    return SizedBox(
      height: 72,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 16),
          child: ProfilePicture(
              width: 72,
              borderRadius: 22,
              profileSize: 40,
              image: _friends[index],
              backgroundColor: Colors.blue),
        ),
        itemCount: _friends.length,
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
