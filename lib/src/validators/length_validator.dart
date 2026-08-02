import '../core/validation_messages.dart';
import '../core/validation_types.dart';

Validator lengthValidator({
  required int min,
  required int max,
  String? message,
}) {
  assert(min >= 0, 'Minimum length cannot be negative.');
  assert(
    max >= min,
    'Maximum length must be greater than or equal to minimum length.',
  );

  return (String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }

    final length = value.length;

    if (length < min || length > max) {
      return message ?? ValidationMessages.length(min, max);
    }

    return null;
  };
}
