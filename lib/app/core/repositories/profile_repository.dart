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
          id: 1,
          name: 'Arthur',
          image: AppAssets.memojisFriends[0],
          color: AppColors.purple.value),
      ProfileModel(
          id: 2,
          name: 'Jefferson',
          image: AppAssets.memojisFriends[1],
          color: Colors.blue.value),
      ProfileModel(
          id: 3,
          name: 'Sofia',
          image: AppAssets.memojisFriends[2],
          color: Colors.indigo.value),
      ProfileModel(
          id: 4,
          name: 'Matt',
          image: AppAssets.memojisFriends[3],
          color: Colors.blueGrey.value),
      ProfileModel(
          id: 5,
          name: 'Robert',
          image: AppAssets.memojisFriends[4],
          color: Colors.green.value)
    ];
  }
}
