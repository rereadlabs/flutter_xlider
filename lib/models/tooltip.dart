import 'package:flutter/material.dart';

import 'package:flutter_xlider/models/enums.dart';
import 'package:flutter_xlider/models/tooltip_box.dart';
import 'package:flutter_xlider/models/tooltip_position_offset.dart';

class FlutterSliderTooltip {
  const FlutterSliderTooltip({
    this.custom,
    this.format,
    this.textStyle,
    this.boxStyle,
    this.leftPrefix,
    this.leftSuffix,
    this.rightPrefix,
    this.rightSuffix,
    this.alwaysShowTooltip = false,
    this.disableAnimation = false,
    this.disabled = false,
    this.direction,
    this.positionOffset,
  });
  final Widget Function(Object value)? custom;
  final String Function(String? value)? format;
  final TextStyle? textStyle;
  final FlutterSliderTooltipBox? boxStyle;
  final Widget? leftPrefix;
  final Widget? leftSuffix;
  final Widget? rightPrefix;
  final Widget? rightSuffix;
  final bool alwaysShowTooltip;
  final bool disabled;
  final bool disableAnimation;
  final FlutterSliderTooltipDirection? direction;
  final FlutterSliderTooltipPositionOffset? positionOffset;

  @override
  String toString() {
    // ignore: lines_longer_than_80_chars
    return 'FlutterSliderTooltip(custom: $custom, format: $format, textStyle: $textStyle, boxStyle: $boxStyle, leftPrefix: $leftPrefix, leftSuffix: $leftSuffix, rightPrefix: $rightPrefix, rightSuffix: $rightSuffix, alwaysShowTooltip: $alwaysShowTooltip, disabled: $disabled, disableAnimation: $disableAnimation, direction: $direction, positionOffset: $positionOffset)';
  }
}
