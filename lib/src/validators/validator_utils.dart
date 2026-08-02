import '../core/validation_types.dart';

class ValidatorUtils {
  ValidatorUtils._();

  static bool validate(Validator validator, String? value) {
    return validator(value) == null;
  }
}
