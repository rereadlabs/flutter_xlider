import 'package:flutter/material.dart';

class FlutterSliderTrackBar {
  const FlutterSliderTrackBar({
    this.inactiveTrackBar,
    this.activeTrackBar,
    this.activeDisabledTrackBarColor = const Color(0xffb5b5b5),
    this.inactiveDisabledTrackBarColor = const Color(0xffe5e5e5),
    this.activeTrackBarHeight = 3.5,
    this.inactiveTrackBarHeight = 3,
    this.centralWidget,
    this.activeTrackBarDraggable = true,
  }) : assert(activeTrackBarHeight > 0 && inactiveTrackBarHeight > 0);

  final BoxDecoration? inactiveTrackBar;
  final BoxDecoration? activeTrackBar;
  final Color activeDisabledTrackBarColor;
  final Color inactiveDisabledTrackBarColor;
  final double activeTrackBarHeight;
  final double inactiveTrackBarHeight;
  final Widget? centralWidget;
  final bool activeTrackBarDraggable;

  @override
  String toString() {
    // ignore: lines_longer_than_80_chars
    return 'FlutterSliderTrackBar(inactiveTrackBar: $inactiveTrackBar, activeTrackBar: $activeTrackBar, activeDisabledTrackBarColor: $activeDisabledTrackBarColor, inactiveDisabledTrackBarColor: $inactiveDisabledTrackBarColor, activeTrackBarHeight: $activeTrackBarHeight, inactiveTrackBarHeight: $inactiveTrackBarHeight, centralWidget: $centralWidget, activeTrackBarDraggable: $activeTrackBarDraggable)';
  }
}
