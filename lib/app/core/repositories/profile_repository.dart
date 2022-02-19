import '../interfaces/repository_interface.dart';
import 'package:flutter/material.dart';

import '../../constants/app_assets.dart';
import '../../constants/app_colors.dart';
import '../models/profile_model.dart';

class ProfileRepository implements IRepository<ProfileModel> {
  @override
  List<ProfileModel> getAll() {
    // TODO: Create JSON and load all objects
    return [
      ProfileModel(
          name: 'Alex',
          image: AppAssets.memojiProfile,
          color: AppColors.peach.value),
      ProfileModel(
          name: 'Arthur',
          image: AppAssets.memojisFriends[0],
          color: AppColors.purple.value),
      ProfileModel(
          name: 'Jefferson',
          image: AppAssets.memojisFriends[1],
          color: Colors.blue.value),
      ProfileModel(
          name: 'Sofia',
          image: AppAssets.memojisFriends[3],
          color: Colors.indigo.value),
      ProfileModel(
          name: 'Matt',
          image: AppAssets.memojisFriends[4],
          color: Colors.blueGrey.value),
      ProfileModel(
          name: 'Robert',
          image: AppAssets.memojisFriends[5],
          color: Colors.green.value)
    ];
  }
}
