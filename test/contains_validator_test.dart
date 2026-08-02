import 'package:flutter_test/flutter_test.dart';
import 'package:validator_kit/validator_kit.dart';

void main() {
  group('Contains Validator', () {
    test('accepts matching text', () {
      final validator = ValidatorKit.contains('flutter');

      expect(validator('I love flutter'), null);
    });

    test('rejects missing text', () {
      final validator = ValidatorKit.contains('flutter');

      expect(validator('I love dart'), 'Must contain "flutter".');
    });

    test('case insensitive', () {
      final validator = ValidatorKit.contains('flutter', caseSensitive: false);

      expect(validator('FLUTTER'), null);
    });

    test('ignores empty value', () {
      final validator = ValidatorKit.contains('flutter');

      expect(validator(''), null);
    });
  });
}
