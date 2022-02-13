import 'package:flutter/material.dart';

class CreditCardBase extends StatelessWidget {
  final Widget? child;
  final Color backgroundColor;

  const CreditCardBase(
      {Key? key, required this.child, required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(24))),
      child: child,
    );
  }
}
