import 'package:flutter/material.dart';

class FlutterSliderHandler {
  const FlutterSliderHandler({
    required this.child,
    this.decoration,
    this.foregroundDecoration,
    this.transform,
    this.disabled = false,
    this.opacity = 1,
  }) : assert(opacity >= 0 && opacity <= 1);

  final BoxDecoration? decoration;
  final BoxDecoration? foregroundDecoration;
  final Matrix4? transform;
  final Widget child;
  final bool disabled;
  final double opacity;

  @override
  String toString() {
    // ignore: lines_longer_than_80_chars
    return 'FlutterSliderHandler(decoration: $decoration, foregroundDecoration: $foregroundDecoration, transform: $transform, child: $child, disabled: $disabled, opacity: $opacity)';
  }

  FlutterSliderHandler copyWith({
    BoxDecoration? decoration,
    BoxDecoration? foregroundDecoration,
    Matrix4? transform,
    Widget? child,
    bool? disabled,
    double? opacity,
  }) {
    return FlutterSliderHandler(
      decoration: decoration ?? this.decoration,
      foregroundDecoration: foregroundDecoration ?? this.foregroundDecoration,
      transform: transform ?? this.transform,
      child: child ?? this.child,
      disabled: disabled ?? this.disabled,
      opacity: opacity ?? this.opacity,
    );
  }
}
