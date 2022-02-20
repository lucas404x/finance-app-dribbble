import 'dart:math';

import 'package:flutter/material.dart';

Gradient generateGradientColor(Color color) {
  final hslColor = HSLColor.fromColor(color);

  List<Color> colors = [
    _generateRandomHSLColor(hslColor).toColor(),
    _generateRandomHSLColor(hslColor).toColor(),
  ];

  return LinearGradient(
      begin: Alignment.topLeft, end: Alignment.bottomRight, colors: colors);
}

HSLColor _generateRandomHSLColor(HSLColor color) {
  Random random = Random();
  double hue = _generateHue(random, color.hue);
  double saturation = _generateSaturation(random);
  double lightness = _generateLightness(random);

  return color.withHue(hue).withSaturation(saturation).withLightness(lightness);
}

double _generateHue(Random random, double baseHue) {
  int randomDifference = random.nextInt(10);

  if (baseHue + randomDifference > 360.0) {
    return baseHue - randomDifference;
  }

  if (baseHue - randomDifference < 0.0) {
    return baseHue + randomDifference;
  }

  final sumRemainder = (baseHue + randomDifference) % 10;
  final subtractRemainder = (baseHue - randomDifference) % 10;

  if (sumRemainder < subtractRemainder) {
    return baseHue + randomDifference;
  } else {
    return baseHue - randomDifference;
  }
}

double _generateSaturation(Random random) {
  const double minSaturation = 0.5;
  const double maxSaturation = 1.0;

  double result = random.nextDouble();
  if (result < minSaturation) {
    return minSaturation;
  }

  if (result > maxSaturation) {
    return maxSaturation;
  }

  return result;
}

double _generateLightness(Random random) {
  const double minLightness = 0.6;
  const double maxLightness = 0.85;

  double result = random.nextDouble();
  if (result < minLightness) {
    return minLightness;
  }

  if (result > maxLightness) {
    return maxLightness;
  }

  return result;
}
