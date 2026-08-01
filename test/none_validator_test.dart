import 'package:flutter_test/flutter_test.dart';
import 'package:validator_kit/validator_kit.dart';

void main() {
  group('ValidatorKit.none', () {
    final validator = ValidatorKit.none();

    test('always returns null', () {
      expect(validator(null), isNull);
      expect(validator(''), isNull);
      expect(validator('abc'), isNull);
      expect(validator('123'), isNull);
    });
  });
}
