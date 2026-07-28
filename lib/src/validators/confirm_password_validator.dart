import '../core/validation_types.dart';

Validator confirmPasswordValidator(
  String Function() passwordProvider, {
  String? message,
}) {
  return (String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }

    if (value != passwordProvider()) {
      return message ?? 'Passwords do not match.';
    }

    return null;
  };
}
