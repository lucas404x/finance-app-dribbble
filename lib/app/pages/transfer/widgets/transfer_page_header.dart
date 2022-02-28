import '../../../widgets/custom_back_button.dart';
import 'package:flutter/material.dart';

class TransferPageHeader extends StatelessWidget {
  const TransferPageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;

    return Row(
      children: [
        const CustomBackButton(),
        const Spacer(),
        Text(
          'Transfer',
          style: _textTheme.headline6,
        ),
        const Spacer()
      ],
    );
  }
}
