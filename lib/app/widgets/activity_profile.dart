import 'package:flutter/material.dart';

class ActivityProfile extends StatelessWidget {
  final double width;
  final double height;
  final double emojiSize;
  final double borderRadius;
  final Color backgroundColor;

  const ActivityProfile(
      {Key? key,
      this.width = 48,
      this.height = 48,
      this.emojiSize = 48,
      this.borderRadius = 20,
      this.backgroundColor = Colors.green})
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
          child: Text(
            '🤑',
            style: TextStyle(fontSize: emojiSize),
          ),
        ),
      ),
    );
  }
}
