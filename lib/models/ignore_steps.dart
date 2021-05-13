class FlutterSliderIgnoreSteps {
  const FlutterSliderIgnoreSteps({
    required this.from,
    required this.to,
  }) : assert(from <= to);

  final double from;
  final double to;

  @override
  String toString() => 'FlutterSliderIgnoreSteps(from: $from, to: $to)';
}
