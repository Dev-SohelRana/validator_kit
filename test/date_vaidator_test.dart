import 'package:flutter_test/flutter_test.dart';
import 'package:validator_kit/src/core/validation_messages.dart';
import 'package:validator_kit/validator_kit.dart';

void main() {
  group('Date Validator', () {
    test('accept yyyy-MM-dd', () {
      expect(ValidatorKit.date()('2025-12-31'), null);
    });

    test('accept dd/MM/yyyy', () {
      expect(ValidatorKit.date()('31/12/2025'), null);
    });

    test('accept MM/dd/yyyy', () {
      expect(ValidatorKit.date()('12/31/2025'), null);
    });

    test('reject invalid month', () {
      expect(ValidatorKit.date()('2025-13-31'), ValidationMessages.invalidDate);
    });

    test('reject invalid day', () {
      expect(ValidatorKit.date()('2025-02-30'), ValidationMessages.invalidDate);
    });

    test('accept leap year', () {
      expect(ValidatorKit.date()('2024-02-29'), null);
    });

    test('reject non leap year', () {
      expect(ValidatorKit.date()('2025-02-29'), ValidationMessages.invalidDate);
    });

    test('ignore empty value', () {
      expect(ValidatorKit.date()(''), null);
    });
  });
}
