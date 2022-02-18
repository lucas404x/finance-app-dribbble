import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  final Color backgroundColor;
  final String image;
  final double width;
  final double height;
  final double profileSize;
  final double borderRadius;

  const ProfilePicture(
      {Key? key,
      required this.image,
      required this.backgroundColor,
      this.width = 64,
      this.height = 64,
      this.profileSize = 48,
      this.borderRadius = 20})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Image.asset(
            image,
            width: profileSize,
            height: profileSize,
          ),
        ),
      ),
    );
  }
}
