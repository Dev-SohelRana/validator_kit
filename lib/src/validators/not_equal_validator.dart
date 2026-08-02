import '../core/validation_messages.dart';
import '../core/validation_types.dart';

Validator notEqualValidator(
  String forbidden, {
  bool caseSensitive = true,
  String? message,
}) {
  assert(forbidden.isNotEmpty, 'Forbidden value cannot be empty.');

  return (String? value) {
    if (value == null || value.trim().isEmpty) {
      return null;
    }

    final input = value.trim();

    final isForbidden = caseSensitive
        ? input == forbidden
        : input.toLowerCase() == forbidden.toLowerCase();

    if (isForbidden) {
      return message ?? ValidationMessages.notEqual(forbidden);
    }

    return null;
  };
}
