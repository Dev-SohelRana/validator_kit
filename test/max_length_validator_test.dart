import 'package:flutter_test/flutter_test.dart';
import 'package:validator_kit/validator_kit.dart';

void main() {
  group('ValidatorKit.maxLength', () {
    test('returns an error above the maximum length', () {
      expect(
          ValidatorKit.maxLength(4)('five!'), 'Must not exceed 4 characters.');
    });

    test('accepts values at or below the maximum length', () {
      final validator = ValidatorKit.maxLength(4);

      expect(validator('four'), isNull);
      expect(validator('fit'), isNull);
    });

    test('uses a custom error message', () {
      expect(ValidatorKit.maxLength(4, message: 'Too long.')('five!'),
          'Too long.');
    });
  });
}
