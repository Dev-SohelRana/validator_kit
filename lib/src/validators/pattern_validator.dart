import '../core/validation_types.dart';

Validator patternValidator(
  RegExp pattern, {
  String? message,
}) {
  return (String? value) {
    if (value == null || value.trim().isEmpty) {
      return null;
    }

    if (!pattern.hasMatch(value.trim())) {
      return message ?? 'Invalid format.';
    }

    return null;
  };
}
