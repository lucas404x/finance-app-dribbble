import 'package:financial_dribbble_app/app/core/models/activity_model.dart';
import 'package:flutter/material.dart';

import '../../../widgets/activity_list_item.dart';

class HomeActivityList extends StatelessWidget {
  final List<ActivityModel> activities;

  const HomeActivityList({Key? key, required this.activities})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: activities.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 24),
        child: ActivityListItem(
          activityModel: activities[index],
        ),
      ),
    );
  }
}
