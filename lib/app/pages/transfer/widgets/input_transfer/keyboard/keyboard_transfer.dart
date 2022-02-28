import 'package:flutter/material.dart';

import 'keyboard_confirm_button.dart';
import 'keyboard_key.dart';

class KeyboardTransfer extends StatelessWidget {
  final void Function(String) onKeyPressed;
  final void Function() onDeleteKeyPressed;
  final void Function() onConfirmPressed;

  const KeyboardTransfer({
    Key? key,
    required this.onKeyPressed,
    required this.onConfirmPressed,
    required this.onDeleteKeyPressed,
  }) : super(key: key);

  @override
  build(BuildContext context) {
    return Table(
      defaultColumnWidth: const FixedColumnWidth(110),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(children: [
          KeyboardKey(char: '1', onKeyPressed: onKeyPressed),
          KeyboardKey(char: '2', onKeyPressed: onKeyPressed),
          KeyboardKey(char: '3', onKeyPressed: onKeyPressed)
        ]),
        TableRow(children: [
          KeyboardKey(char: '4', onKeyPressed: onKeyPressed),
          KeyboardKey(char: '5', onKeyPressed: onKeyPressed),
          KeyboardKey(char: '6', onKeyPressed: onKeyPressed)
        ]),
        TableRow(children: [
          KeyboardKey(char: '7', onKeyPressed: onKeyPressed),
          KeyboardKey(char: '8', onKeyPressed: onKeyPressed),
          KeyboardKey(char: '9', onKeyPressed: onKeyPressed)
        ]),
        TableRow(children: [
          KeyboardKey(char: '⌫', onKeyPressed: (_) => onDeleteKeyPressed()),
          KeyboardKey(char: '0', onKeyPressed: onKeyPressed),
          KeyboardConfirmButton(onPressed: onConfirmPressed),
        ]),
      ],
    );
  }
}
