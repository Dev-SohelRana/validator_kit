import 'package:flutter_test/flutter_test.dart';
import 'package:validator_kit/validator_kit.dart';

void main() {
  group('Ends With Validator', () {
    test('accepts matching suffix', () {
      final validator = ValidatorKit.endsWith('.com');

      expect(validator('google.com'), null);
    });

    test('rejects invalid suffix', () {
      final validator = ValidatorKit.endsWith('.com');

      expect(validator('google.org'), 'Must end with ".com".');
    });

    test('case insensitive', () {
      final validator = ValidatorKit.endsWith('.png', caseSensitive: false);

      expect(validator('IMAGE.PNG'), null);
    });

    test('ignores empty value', () {
      final validator = ValidatorKit.endsWith('.com');

      expect(validator(''), null);
    });
  });
}
