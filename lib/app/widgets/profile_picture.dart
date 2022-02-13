import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  final String image;
  final Color backgroundColor;

  const ProfilePicture(
      {Key? key, required this.image, required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Image.asset(
            image,
            width: 48,
            height: 48,
          ),
        ),
      ),
    );
  }
}
