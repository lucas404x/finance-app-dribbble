import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  final void Function()? onPressed;
  
  const Button({Key? key, required this.child, required this.backgroundColor, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(24))),
            primary: backgroundColor),
        onPressed: () {},
        child: child);
  }
}
