import 'package:flutter/material.dart';

class FlutterSliderHatchMarkLabel {
  FlutterSliderHatchMarkLabel({
    required this.percent,
    required this.label,
  }) : assert(percent >= 0);

  final double percent;
  final Widget label;

  @override
  String toString() =>
      'FlutterSliderHatchMarkLabel(percent: $percent, label: $label)';
}
