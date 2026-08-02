import 'package:flutter_test/flutter_test.dart';
import 'package:validator_kit/validator_kit.dart';

void main() {
  group('Equal Validator', () {
    test('accepts matching value', () {
      final validator = ValidatorKit.equal('Flutter');

      expect(validator('Flutter'), null);
    });

    test('rejects different value', () {
      final validator = ValidatorKit.equal('Flutter');

      expect(validator('Dart'), 'Must be equal to "Flutter".');
    });

    test('case insensitive', () {
      final validator = ValidatorKit.equal('flutter', caseSensitive: false);

      expect(validator('FLUTTER'), null);
    });

    test('ignores empty value', () {
      final validator = ValidatorKit.equal('Flutter');

      expect(validator(''), null);
    });
  });
}
