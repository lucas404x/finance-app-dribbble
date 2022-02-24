import 'package:flutter/material.dart';

import '../../core/models/profile_model.dart';
import '../../core/utils/color_utils.dart';
import 'profile_picture.dart';

class ProfileListItem extends StatelessWidget {
  final ProfileModel profile;

  const ProfileListItem({Key? key, required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double _size = 72.0;
    const double _radius = 20.0;
    final Color _profileColor = Color(profile.color);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Positioned(
                left: 8,
                top: 8,
                child: ProfilePicture(
                    width: _size,
                    height: _size,
                    borderRadius: _radius,
                    profileSize: 40,
                    image: profile.image,
                    backgroundColor: _profileColor)),
            _ProfileBorder(
              strokeWidth: 2.0,
              strokeRadius: _radius,
              size: _size,
              gradient: generateGradientColor(_profileColor),
            )
          ],
        ),
        const SizedBox(height: 8),
        Text(
          profile.name,
          style: Theme.of(context)
              .textTheme
              .bodyText1
              ?.copyWith(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class _ProfileBorder extends StatelessWidget {
  final double size;
  final double strokeWidth;
  final double strokeRadius;
  final Gradient gradient;

  const _ProfileBorder(
      {Key? key,
      required this.size,
      required this.strokeWidth,
      required this.strokeRadius,
      required this.gradient})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _OutlineBorderPainter(
          gradient: gradient,
          strokeRadius: strokeRadius,
          strokeWidth: strokeWidth),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: SizedBox(width: size, height: size),
      ),
    );
  }
}

class _OutlineBorderPainter extends CustomPainter {
  final double strokeWidth;
  final double strokeRadius;
  final Gradient gradient;

  _OutlineBorderPainter(
      {required this.strokeWidth,
      required this.strokeRadius,
      required this.gradient});

  @override
  void paint(Canvas canvas, Size size) {
    final _paint = Paint();

    // create outer rectangle equals size
    Rect outerRect = Offset.zero & size;
    var outerRRect =
        RRect.fromRectAndRadius(outerRect, Radius.circular(strokeRadius));

    // create inner rectangle smaller by strokeWidth
    Rect innerRect = Rect.fromLTWH(strokeWidth, strokeWidth,
        size.width - strokeWidth * 2, size.height - strokeWidth * 2);
    var innerRRect = RRect.fromRectAndRadius(
        innerRect, Radius.circular(strokeRadius - strokeWidth));

    // apply gradient shader
    _paint.shader = gradient.createShader(outerRect);

    // create difference between outer and inner paths and draw it
    Path path1 = Path()..addRRect(outerRRect);
    Path path2 = Path()..addRRect(innerRRect);
    var path = Path.combine(PathOperation.difference, path1, path2);
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
