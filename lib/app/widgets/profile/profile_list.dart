import 'package:flutter/material.dart';

import '../../core/models/profile_model.dart';
import '../../pages/transfer/transfer_page.dart';
import 'profile_list_item.dart';

class ProfileList extends StatelessWidget {
  final List<ProfileModel> profiles;

  const ProfileList({Key? key, required this.profiles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 16),
          child: GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => TransferPage(
                  profileId: profiles[index].id
                ),
              ),
            ),
            child: ProfileListItem(
              profile: profiles[index],
            ),
          ),
        ),
        itemCount: profiles.length,
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
