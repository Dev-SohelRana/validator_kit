import 'package:flutter_test/flutter_test.dart';
import 'package:validator_kit/validator_kit.dart';

void main() {
  group('Validators.number', () {
    test('accepts integer, decimal, and signed numeric values', () {
      final validator = Validators.number();

      expect(validator('42'), isNull);
      expect(validator('3.14'), isNull);
      expect(validator('-12'), isNull);
    });

    test('returns an error for non-numeric values', () {
      expect(Validators.number()('twelve'), 'Please enter a valid number.');
    });

    test('allows an empty value and supports a custom message', () {
      expect(Validators.number()('  '), isNull);
      expect(Validators.number(message: 'Enter a number.')('abc'),
          'Enter a number.');
    });
  });
}
