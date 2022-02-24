import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../core/models/profile_model.dart';
import 'profile_list_item.dart';

class ProfileListWheel extends StatelessWidget {
  final Function(int, CarouselPageChangedReason) onPageChanged;
  final List<ProfileModel> profiles;
  final int initialPage;

  const ProfileListWheel({
    Key? key,
    required this.profiles,
    required this.onPageChanged,
    this.initialPage = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: double.infinity,
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 120,
            initialPage: initialPage,
            viewportFraction: 0.35,
            onPageChanged: onPageChanged),
        itemBuilder: (_, index, __) => Transform.scale(
          scale: initialPage == index ? 1.3 : 1.0,
          child: ProfileListItem(
            profile: profiles[index],
          ),
        ),
        itemCount: profiles.length,
      ),
    );
  }
}
