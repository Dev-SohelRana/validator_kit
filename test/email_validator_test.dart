import 'package:flutter_test/flutter_test.dart';
import 'package:validator_kit/validator_kit.dart';

void main() {
  group('Validators.email', () {
    test('accepts valid email addresses', () {
      final validator = Validators.email();

      expect(validator('jane@example.com'), isNull);
      expect(validator(' jane.doe+work@example.co.uk '), isNull);
    });

    test('returns an error for invalid email addresses', () {
      final validator = Validators.email();

      expect(validator('jane@'), 'Please enter a valid email address.');
      expect(validator('not-an-email'), 'Please enter a valid email address.');
    });

    test('allows empty values so it can be combined with required', () {
      final validator = Validators.email();

      expect(validator(null), isNull);
      expect(validator(''), isNull);
    });
  });
}
