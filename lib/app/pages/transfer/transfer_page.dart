import 'package:flutter/material.dart';

import '../../core/helpers/scroll_behavior_without_glow.dart';
import '../../core/models/profile_model.dart';
import '../../core/repositories/profile_repository.dart';
import '../../widgets/profile/profile_list_wheel.dart';
import 'widgets/keyboard_transfer/keyboard_transfer.dart';
import 'widgets/transfer_page_header.dart';

class TransferPage extends StatefulWidget {
  final int profileId;

  const TransferPage({Key? key, required this.profileId}) : super(key: key);

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  late final ProfileRepository _profileRepository;
  late final List<ProfileModel> _profiles;
  late double _currentPaymentValue = 0.0;
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
    final _textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: ScrollConfiguration(
          behavior: ScrollBehaviorWithoutGlow(),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 32.0),
                  child: TransferPageHeader(),
                ),
                const SizedBox(height: 32.0),
                ProfileListWheel(
                  profiles: _profiles,
                  initialPage: _currentPage,
                  onPageChanged: (currentPage, _) {
                    setState(() {
                      _currentPage = currentPage;
                    });
                  },
                ),
                const SizedBox(height: 32.0),
                Center(
                  child: Text(
                    '\$$_currentPaymentValue',
                    style: _textTheme.headline5?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Divider(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: KeyboardTransfer(
                    onConfirmPressed: () {},
                    onKeyPressed: (String char) {
                      debugPrint(char);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
