import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/button.dart';

class KeyboardTransfer extends StatelessWidget {
  const KeyboardTransfer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;

    return Table(
      defaultColumnWidth: const FixedColumnWidth(110),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(children: [
          _buildKeyboardNumberButton('1', _textTheme),
          _buildKeyboardNumberButton('2', _textTheme),
          _buildKeyboardNumberButton('3', _textTheme),
        ]),
        TableRow(children: [
          _buildKeyboardNumberButton('4', _textTheme),
          _buildKeyboardNumberButton('5', _textTheme),
          _buildKeyboardNumberButton('6', _textTheme),
        ]),
        TableRow(children: [
          _buildKeyboardNumberButton('7', _textTheme),
          _buildKeyboardNumberButton('8', _textTheme),
          _buildKeyboardNumberButton('9', _textTheme),
        ]),
        TableRow(children: [
          _buildKeyboardNumberButton('⌫', _textTheme),
          _buildKeyboardNumberButton('0', _textTheme),
          _buildConfirmButton(),
        ]),
      ],
    );
  }
}

_buildKeyboardNumberButton(String char, TextTheme textTheme) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Center(
      child: Text(
        char,
        style: textTheme.headline6?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

_buildConfirmButton() {
  return const Padding(
    padding: EdgeInsets.all(16),
    child: Center(
      child: Button(
        child: Icon(
          Icons.check,
          color: Colors.white,
        ),
        backgroundColor: AppColors.ebonyClay,
      ),
    ),
  );
}
