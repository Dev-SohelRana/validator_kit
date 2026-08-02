import 'package:flutter_test/flutter_test.dart';
import 'package:validator_kit/src/core/validation_messages.dart';
import 'package:validator_kit/validator_kit.dart';

void main() {
  group('Credit Card Validator', () {
    test('accepts valid Visa card', () {
      final validator = ValidatorKit.creditCard();

      expect(validator('4111111111111111'), null);
    });

    test('accepts valid MasterCard', () {
      final validator = ValidatorKit.creditCard();

      expect(validator('5555555555554444'), null);
    });

    test('accepts card with spaces', () {
      final validator = ValidatorKit.creditCard();

      expect(validator('4111 1111 1111 1111'), null);
    });

    test('accepts card with dashes', () {
      final validator = ValidatorKit.creditCard();

      expect(validator('4111-1111-1111-1111'), null);
    });

    test('rejects invalid card', () {
      final validator = ValidatorKit.creditCard();

      expect(
        validator('1234567890123456'),
        ValidationMessages.invalidCreditCard,
      );
    });

    test('rejects invalid characters', () {
      final validator = ValidatorKit.creditCard();

      expect(validator('abcd'), ValidationMessages.invalidCreditCard);
    });

    test('ignores empty value', () {
      final validator = ValidatorKit.creditCard();

      expect(validator(''), null);
    });
  });
}
