import 'package:flutter_test/flutter_test.dart';
import 'package:validator_kit/validator_kit.dart';

void main() {
  group('ValidatorKit.required', () {
    test('returns an error for null, empty, and whitespace-only values', () {
      final validator = ValidatorKit.required();

      expect(validator(null), 'This field is required.');
      expect(validator(''), 'This field is required.');
      expect(validator('   '), 'This field is required.');
    });

    test('accepts a non-empty value', () {
      expect(ValidatorKit.required()('Jane'), isNull);
    });

    test('uses a custom error message', () {
      expect(ValidatorKit.required(message: 'Name is required.')(''),
          'Name is required.');
    });
  });
}
