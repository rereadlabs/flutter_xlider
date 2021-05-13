import 'package:flutter/material.dart';

class FlutterSliderSizedBox {
  const FlutterSliderSizedBox({
    this.decoration,
    this.foregroundDecoration,
    this.transform,
    required this.height,
    required this.width,
  }) : assert(width > 0 && height > 0);

  final BoxDecoration? decoration;
  final BoxDecoration? foregroundDecoration;
  final Matrix4? transform;
  final double width;
  final double height;

  @override
  String toString() {
    // ignore: lines_longer_than_80_chars
    return 'FlutterSliderSizedBox(decoration: $decoration, foregroundDecoration: $foregroundDecoration, transform: $transform, width: $width, height: $height)';
  }
}
