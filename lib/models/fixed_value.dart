class FlutterSliderFixedValue {
  const FlutterSliderFixedValue({
    required this.percent,
    required this.value,
  }) : assert(percent >= 0 && percent <= 100);

  final int percent;
  final Object value;

  @override
  String toString() =>
      'FlutterSliderFixedValue(percent: $percent, value: $value)';
}
