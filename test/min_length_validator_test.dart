import 'package:flutter_test/flutter_test.dart';
import 'package:validator_kit/validator_kit.dart';

void main() {
  group('ValidatorKit.minLength', () {
    test('returns an error below the minimum length', () {
      expect(
        ValidatorKit.minLength(5)('four'),
        'Must be at least 5 characters.',
      );
    });

    test('accepts values at or above the minimum length', () {
      final validator = ValidatorKit.minLength(5);

      expect(validator('five!'), isNull);
      expect(validator('longer'), isNull);
    });

    test('allows empty values', () {
      final validator = ValidatorKit.minLength(5);

      expect(validator(null), isNull);
      expect(validator(''), isNull);
    });
  });
}
