import 'package:flutter/material.dart';

import '../../constants/app_assets.dart';
import '../../widgets/profile_list.dart';
import 'widgets/home_body_cards.dart';
import 'widgets/home_header_with_profile.dart';
import 'widgets/home_transfer_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<String> _profiles = AppAssets.memojisFriends;

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            HomeHeaderWithProfile(),
            Padding(padding: EdgeInsets.only(top: 24), child: HomeBodyCards()),
            Padding(
                padding: EdgeInsets.only(top: 24),
                child: HomeTransferSection()),
            Padding(
                padding: EdgeInsets.only(top: 24),
                child: ProfileList(profiles: _profiles))
          ],
        ),
      )),
    );
  }
}
