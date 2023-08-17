extension NumExtension on num? {
  String convertToScaleString(int scale) {
    if (this == null) {
      return '0 / $scale';
    }
    double scaledValue = (this ?? 0) * (scale / 10);
    String formattedValue = scaledValue.toStringAsFixed(1);
    return '$formattedValue / $scale';
  }
}