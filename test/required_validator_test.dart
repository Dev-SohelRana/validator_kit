import 'package:flutter_test/flutter_test.dart';
import 'package:validator_kit/validator_kit.dart';

void main() {
  group('Validators.required', () {
    test('returns an error for null, empty, and whitespace-only values', () {
      final validator = Validators.required();

      expect(validator(null), 'This field is required.');
      expect(validator(''), 'This field is required.');
      expect(validator('   '), 'This field is required.');
    });

    test('accepts a non-empty value', () {
      expect(Validators.required()('Jane'), isNull);
    });

    test('uses a custom error message', () {
      expect(Validators.required(message: 'Name is required.')(''),
          'Name is required.');
    });
  });
}
