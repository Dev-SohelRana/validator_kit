import '../core/validation_messages.dart';
import '../core/validation_types.dart';

Validator endsWithValidator(
  String text, {
  bool caseSensitive = true,
  String? message,
}) {
  assert(text.isNotEmpty, 'Text cannot be empty.');

  return (String? value) {
    if (value == null || value.trim().isEmpty) {
      return null;
    }

    final input = value.trim();

    final endsWith = caseSensitive
        ? input.endsWith(text)
        : input.toLowerCase().endsWith(text.toLowerCase());

    if (!endsWith) {
      return message ?? ValidationMessages.endsWith(text);
    }

    return null;
  };
}
