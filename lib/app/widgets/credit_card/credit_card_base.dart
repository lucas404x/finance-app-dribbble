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
          boxShadow: [
            BoxShadow(
              offset: Offset.zero,
              color: Colors.black.withOpacity(.1),
              blurRadius: 10,
              spreadRadius: 5,
            )
          ],
          borderRadius: const BorderRadius.all(Radius.circular(24))),
      child: child,
    );
  }
}
