import 'package:flutter/material.dart';

class FlutterSliderTooltipBox {
  const FlutterSliderTooltipBox({
    this.decoration,
    this.foregroundDecoration,
    this.transform,
  });

  final BoxDecoration? decoration;
  final BoxDecoration? foregroundDecoration;
  final Matrix4? transform;

  @override
  String toString() =>
      // ignore: lines_longer_than_80_chars
      'FlutterSliderTooltipBox(decoration: $decoration, foregroundDecoration: $foregroundDecoration, transform: $transform)';
}
