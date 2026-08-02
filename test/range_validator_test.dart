import 'package:flutter_test/flutter_test.dart';
import 'package:validator_kit/validator_kit.dart';

void main() {
  group('Range Validator', () {
    final validator = ValidatorKit.range(min: 18, max: 60);

    test('accepts minimum value', () {
      expect(validator('18'), null);
    });

    test('accepts maximum value', () {
      expect(validator('60'), null);
    });

    test('accepts value inside range', () {
      expect(validator('30'), null);
    });

    test('rejects value below minimum', () {
      expect(validator('10'), 'Must be between 18 and 60.');
    });

    test('rejects value above maximum', () {
      expect(validator('100'), 'Must be between 18 and 60.');
    });

    test('returns invalid number', () {
      expect(validator('abc'), 'Please enter a valid number.');
    });

    test('ignores empty value', () {
      expect(validator(''), null);
    });
  });
}
