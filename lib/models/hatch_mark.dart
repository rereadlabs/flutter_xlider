import 'package:flutter_xlider/models/enums.dart';
import 'package:flutter_xlider/models/hatch_mark_label.dart';
import 'package:flutter_xlider/models/slider_box.dart';

class FlutterSliderHatchMark {
  const FlutterSliderHatchMark({
    this.disabled = false,
    this.density = 1,
    this.linesDistanceFromTrackBar = 0,
    this.labelsDistanceFromTrackBar = 0,
    this.labels,
    this.smallLine,
    this.bigLine,
    this.linesAlignment = FlutterSliderHatchMarkAlignment.right,
    this.labelBox,
    this.displayLines = false,
  }) : assert(density > 0 && density <= 2);

  final bool disabled;
  final double density;
  final double linesDistanceFromTrackBar;
  final double labelsDistanceFromTrackBar;
  final List<FlutterSliderHatchMarkLabel>? labels;
  final FlutterSliderSizedBox? smallLine;
  final FlutterSliderSizedBox? bigLine;
  final FlutterSliderSizedBox? labelBox;
  final FlutterSliderHatchMarkAlignment linesAlignment;
  final bool displayLines;

  @override
  String toString() {
    // ignore: lines_longer_than_80_chars
    return 'FlutterSliderHatchMark(disabled: $disabled, density: $density, linesDistanceFromTrackBar: $linesDistanceFromTrackBar, labelsDistanceFromTrackBar: $labelsDistanceFromTrackBar, labels: $labels, smallLine: $smallLine, bigLine: $bigLine, labelBox: $labelBox, linesAlignment: $linesAlignment, displayLines: $displayLines)';
  }
}
