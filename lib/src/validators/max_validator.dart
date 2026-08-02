import '../core/validation_messages.dart';
import '../core/validation_types.dart';

Validator maxValidator(num maxValue, {String? message}) {
  return (String? value) {
    if (value == null || value.trim().isEmpty) {
      return null;
    }

    final number = num.tryParse(value.trim());

    if (number == null) {
      return ValidationMessages.invalidNumber;
    }

    if (number > maxValue) {
      return message ?? ValidationMessages.max(maxValue);
    }

    return null;
  };
}
