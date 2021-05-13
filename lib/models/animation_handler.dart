import 'package:flutter/material.dart';

class FlutterSliderHandlerAnimation {
  const FlutterSliderHandlerAnimation({
    this.curve = Curves.elasticOut,
    this.reverseCurve,
    this.duration = const Duration(milliseconds: 700),
    this.scale = 1.3,
  });

  final Curve curve;
  final Curve? reverseCurve;
  final Duration duration;
  final double scale;

  @override
  String toString() {
    // ignore: lines_longer_than_80_chars
    return 'FlutterSliderHandlerAnimation(curve: $curve, reverseCurve: $reverseCurve, duration: $duration, scale: $scale)';
  }
}
