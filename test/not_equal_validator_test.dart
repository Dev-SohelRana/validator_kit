import 'package:flutter_test/flutter_test.dart';
import 'package:validator_kit/validator_kit.dart';

void main() {
  group('Not Equal Validator', () {
    test('accepts different value', () {
      final validator = ValidatorKit.notEqual('admin');

      expect(validator('sohel'), null);
    });

    test('rejects forbidden value', () {
      final validator = ValidatorKit.notEqual('admin');

      expect(validator('admin'), 'Value cannot be "admin".');
    });

    test('case insensitive', () {
      final validator = ValidatorKit.notEqual('admin', caseSensitive: false);

      expect(validator('ADMIN'), 'Value cannot be "admin".');
    });

    test('ignores empty value', () {
      final validator = ValidatorKit.notEqual('admin');

      expect(validator(''), null);
    });
  });
}
