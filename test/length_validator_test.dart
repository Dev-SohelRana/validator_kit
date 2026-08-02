import 'package:flutter_test/flutter_test.dart';
import 'package:validator_kit/validator_kit.dart';

void main() {
  group('Length Validator', () {
    test('accepts valid length', () {
      final validator = ValidatorKit.length(min: 5, max: 10);

      expect(validator('Flutter'), null);
    });

    test('rejects too short', () {
      final validator = ValidatorKit.length(min: 5, max: 10);

      expect(validator('abc'), 'Must be between 5 and 10 characters.');
    });

    test('rejects too long', () {
      final validator = ValidatorKit.length(min: 5, max: 10);

      expect(validator('abcdefghijkl'), 'Must be between 5 and 10 characters.');
    });

    test('ignores empty value', () {
      final validator = ValidatorKit.length(min: 5, max: 10);

      expect(validator(''), null);
    });
  });
}
