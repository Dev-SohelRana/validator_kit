import 'package:flutter_test/flutter_test.dart';
import 'package:validator_kit/validator_kit.dart';

void main() {
  group('ValidatorKit.number', () {
    test('accepts integer, decimal, and signed numeric values', () {
      final validator = ValidatorKit.number();

      expect(validator('42'), isNull);
      expect(validator('3.14'), isNull);
      expect(validator('-12'), isNull);
    });

    test('returns an error for non-numeric values', () {
      expect(ValidatorKit.number()('twelve'), 'Please enter a valid number.');
    });

    test('allows an empty value and supports a custom message', () {
      expect(ValidatorKit.number()('  '), isNull);
      expect(ValidatorKit.number(message: 'Enter a number.')('abc'),
          'Enter a number.');
    });
  });
}
