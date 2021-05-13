import 'package:flutter_xlider/models/range_step.dart';

class FlutterSliderStep {
  const FlutterSliderStep({
    this.step = 1,
    this.isPercentRange = true,
    this.rangeList,
  });

  final double step;
  final bool isPercentRange;
  final List<FlutterSliderRangeStep>? rangeList;

  @override
  String toString() =>
      // ignore: lines_longer_than_80_chars
      'FlutterSliderStep(step: $step, isPercentRange: $isPercentRange, rangeList: $rangeList)';
}
