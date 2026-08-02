import 'package:flutter_test/flutter_test.dart';
import 'package:validator_kit/validator_kit.dart';

void main() {
  test('accepts value less than maximum', () {
    final validator = ValidatorKit.max(100);

    expect(validator('50'), null);
  });

  test('accepts maximum value', () {
    final validator = ValidatorKit.max(100);

    expect(validator('100'), null);
  });

  test('rejects larger value', () {
    final validator = ValidatorKit.max(100);

    expect(validator('120'), 'Must not exceed 100.');
  });

  test('ignores empty value', () {
    final validator = ValidatorKit.max(100);

    expect(validator(''), null);
  });

  test('rejects invalid number', () {
    final validator = ValidatorKit.max(100);

    expect(validator('abc'), 'Please enter a valid number.');
  });
}
