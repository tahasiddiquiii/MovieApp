import 'package:flutter_test/flutter_test.dart';
import 'package:test_flutter/common/extensions/num_extensions.dart';

main() {
  group('num extensions test', () {
    test('should convert double digit into string with "/ 10" ', () {
      const number = 8.702;
      final actual = number.convertToScaleString(10);
      const expected = "8.7 / 10";
      expect(actual, expected);
    });

    test('should convert 0 to "0.0 /10" ', () {
      const number = 0;
      final actual = number.convertToScaleString(10);
      const expected = "0.0 / 10";
      expect(actual, expected);
    });

    test('should convert afetr rounding off to 4.6/10 ', () {
      const number = 4.5555;
      final actual = number.convertToScaleString(10);
      const expected = "4.6 / 10";
      expect(actual, expected);
    });
  });
}
