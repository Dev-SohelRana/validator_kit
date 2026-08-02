import 'package:flutter_test/flutter_test.dart';
import 'package:validator_kit/validator_kit.dart';

void main() {
  test('accepts value greater than minimum', () {
    final validator = ValidatorKit.min(18);

    expect(validator('20'), null);
  });

  test('accepts minimum value', () {
    final validator = ValidatorKit.min(18);

    expect(validator('18'), null);
  });

  test('rejects smaller value', () {
    final validator = ValidatorKit.min(18);

    expect(validator('10'), 'Must be at least 18.');
  });

  test('ignores empty value', () {
    final validator = ValidatorKit.min(18);

    expect(validator(''), null);
  });

  test('rejects invalid number', () {
    final validator = ValidatorKit.min(18);

    expect(validator('abc'), 'Please enter a valid number.');
  });
}
