import 'package:financial_dribbble_app/app/widgets/activity_profile.dart';
import 'package:flutter/material.dart';

import '../core/models/activity_model.dart';

class ActivityListItem extends StatelessWidget {
  final ActivityModel activityModel;

  const ActivityListItem({Key? key, required this.activityModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ActivityProfile(
          borderRadius: 18,
          emojiSize: 20,
          width: 64,
          height: 64,
          backgroundColor: Colors.green[100] ?? Colors.green,
        ),
        const SizedBox(width: 8),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    activityModel.username,
                    style: _textTheme.bodyText1
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    activityModel.value,
                    style: _textTheme.bodyText1?.copyWith(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(height: 8),
              Text(
                'From the card **** ${activityModel.lastDigitsCard}',
                style: _textTheme.subtitle2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
