import 'package:flutter/material.dart';

class KeyboardKey extends StatelessWidget {
  final String char;
  final void Function(String) onKeyPressed;

  const KeyboardKey({
    Key? key,
    required this.char,
    required this.onKeyPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: () => onKeyPressed.call(char),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            char,
            style: _textTheme.headline6?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
