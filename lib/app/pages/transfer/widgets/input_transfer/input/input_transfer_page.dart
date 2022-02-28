import 'package:flutter/material.dart';

import '../keyboard/keyboard_transfer.dart';

class InputTransfer extends StatefulWidget {
  final void Function(String) onConfirmPressed;
  const InputTransfer({
    Key? key,
    required this.onConfirmPressed,
  }) : super(key: key);

  @override
  State<InputTransfer> createState() => _InputTransferState();
}

class _InputTransferState extends State<InputTransfer> {
  String _value = "0";

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '\$$_value',
          style: _textTheme.headline5?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Divider(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: KeyboardTransfer(
            onConfirmPressed: () => widget.onConfirmPressed.call(_value),
            onDeleteKeyPressed: () {},
            onKeyPressed: (String char) {},
          ),
        )
      ],
    );
  }
}
