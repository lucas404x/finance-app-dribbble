import 'package:flutter/material.dart';

import '../../core/models/profile_model.dart';
import '../../core/repositories/profile_repository.dart';
import '../../widgets/profile_list.dart';
import 'widgets/home_body_cards.dart';
import 'widgets/home_header_with_profile.dart';
import 'widgets/home_transfer_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ProfileModel> _profiles = ProfileRepository().getAllProfiles();

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HomeHeaderWithProfile(),
            const Padding(
                padding: EdgeInsets.only(top: 24), child: HomeBodyCards()),
            const Padding(
                padding: EdgeInsets.only(top: 24),
                child: HomeTransferSection()),
            Padding(
                padding: const EdgeInsets.only(top: 24),
                child: ProfileList(profiles: _profiles))
          ],
        ),
      )),
    );
  }
}
