import 'package:flutter/material.dart';
import '../../../../../constants/app_colors.dart';
import '../../../../../widgets/button.dart';

class KeyboardConfirmButton extends StatelessWidget {
  final Function onPressed;
  const KeyboardConfirmButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Button(
          onPressed: () { 
            onPressed.call(); 
          },
          child: const Icon(
            Icons.check,
            color: Colors.white,
          ),
          backgroundColor: AppColors.ebonyClay,
        ),
      ),
    );
  }
}
