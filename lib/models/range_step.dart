class FlutterSliderRangeStep {
  const FlutterSliderRangeStep({
    required this.from,
    required this.to,
    required this.step,
  });

  final double from;
  final double to;
  final double step;

  @override
  String toString() =>
      'FlutterSliderRangeStep(from: $from, to: $to, step: $step)';
}
