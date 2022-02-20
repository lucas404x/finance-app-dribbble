import 'package:flutter/material.dart';

import '../../core/models/activity_model.dart';
import '../../core/models/profile_model.dart';
import '../../core/repositories/activity_repository.dart';
import '../../core/repositories/profile_repository.dart';
import '../../widgets/profile/profile_list.dart';
import 'widgets/home_activity_list.dart';
import 'widgets/home_body_cards.dart';
import 'widgets/home_header_with_profile.dart';
import 'widgets/home_recent_activity_section.dart';
import 'widgets/home_transfer_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ProfileModel> _profiles = ProfileRepository().getAll();
    final List<ActivityModel> _activities = ActivityRepository().getAll();

    return SafeArea(
      child: SingleChildScrollView(
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
                  child: ProfileList(profiles: _profiles)),
              const Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: HomeRecentActivitySection()),
              HomeActivityList(activities: _activities)
            ],
          ),
        ),
      ),
    );
  }
}
