import 'package:flutter_test/flutter_test.dart';
import 'package:validator_kit/validator_kit.dart';

void main() {
  group('Validators.combine', () {
    test('returns null when every validator passes', () {
      final validator = Validators.combine([
        Validators.required(),
        Validators.minLength(3),
      ]);

      expect(validator('Jane'), isNull);
    });

    test('returns the first failing validator message', () {
      final validator = Validators.combine([
        Validators.required(),
        Validators.minLength(3),
      ]);

      expect(validator(''), 'This field is required.');
      expect(validator('Jo'), 'Must be at least 3 characters.');
    });
  });
}
