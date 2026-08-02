import '../core/validation_messages.dart';
import '../core/validation_types.dart';

Validator minValidator(num minValue, {String? message}) {
  return (String? value) {
    if (value == null || value.trim().isEmpty) {
      return null;
    }

    final number = num.tryParse(value.trim());

    if (number == null) {
      return ValidationMessages.invalidNumber;
    }

    if (number < minValue) {
      return message ?? ValidationMessages.min(minValue);
    }

    return null;
  };
}
