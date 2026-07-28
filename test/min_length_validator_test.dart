import 'package:flutter_test/flutter_test.dart';
import 'package:validator_kit/validator_kit.dart';

void main() {
  group('Validators.minLength', () {
    test('returns an error below the minimum length', () {
      expect(Validators.minLength(5)('four'), 'Must be at least 5 characters.');
    });

    test('accepts values at or above the minimum length', () {
      final validator = Validators.minLength(5);

      expect(validator('five!'), isNull);
      expect(validator('longer'), isNull);
    });

    test('allows empty values', () {
      final validator = Validators.minLength(5);

      expect(validator(null), isNull);
      expect(validator(''), isNull);
    });
  });
}
