import '../../core/models/profile_model.dart';
import '../../core/repositories/profile_repository.dart';
import '../../widgets/profile/profile_list_wheel.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatefulWidget {
  final int profileId;

  const TransferPage({Key? key, required this.profileId}) : super(key: key);

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  late final ProfileRepository _profileRepository;
  late final List<ProfileModel> _profiles;
  late int _currentPage;

  @override
  void initState() {
    _profileRepository = ProfileRepository();
    setState(() {
      _profiles = _profileRepository.getAll();
      _currentPage = widget.profileId - 1;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: ProfileListWheel(
          profiles: _profiles,
          initialPage: _currentPage,
          onPageChanged: (currentPage, _) {
            setState(() {
              _currentPage = currentPage;
            });
          },
        ),
      )),
    );
  }
}
