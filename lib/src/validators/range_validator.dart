import '../core/validation_messages.dart';
import '../core/validation_types.dart';

Validator rangeValidator({
  required num min,
  required num max,
  String? message,
}) {
  assert(min <= max, 'Minimum value cannot be greater than maximum value.');

  return (String? value) {
    if (value == null || value.trim().isEmpty) {
      return null;
    }

    final number = num.tryParse(value.trim());

    if (number == null) {
      return ValidationMessages.invalidNumber;
    }

    if (number < min || number > max) {
      return message ?? ValidationMessages.range(min, max);
    }

    return null;
  };
}
