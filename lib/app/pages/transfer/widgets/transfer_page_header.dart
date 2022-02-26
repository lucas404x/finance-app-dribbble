import '../../../widgets/custom_back_button.dart';
import 'package:flutter/material.dart';

class TransferPageHeader extends StatelessWidget {
  const TransferPageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CustomBackButton(),
        Text(
          'Transfer',
          style: _textTheme.headline6,
        ),
        Container()
      ],
    );
  }
}
