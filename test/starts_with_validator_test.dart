import 'package:flutter_test/flutter_test.dart';
import 'package:validator_kit/validator_kit.dart';

void main() {
  group('Starts With Validator', () {
    test('accepts matching prefix', () {
      final validator = ValidatorKit.startsWith('Mr.');

      expect(validator('Mr. John'), null);
    });

    test('rejects invalid prefix', () {
      final validator = ValidatorKit.startsWith('Mr.');

      expect(validator('John'), 'Must start with "Mr.".');
    });

    test('case insensitive', () {
      final validator = ValidatorKit.startsWith(
        'flutter',
        caseSensitive: false,
      );

      expect(validator('FLUTTER is awesome'), null);
    });

    test('ignores empty value', () {
      final validator = ValidatorKit.startsWith('Mr.');

      expect(validator(''), null);
    });
  });
}
