import '../core/validation_messages.dart';
import '../core/validation_types.dart';

Validator startsWithValidator(
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

    final startsWith = caseSensitive
        ? input.startsWith(text)
        : input.toLowerCase().startsWith(text.toLowerCase());

    if (!startsWith) {
      return message ?? ValidationMessages.startsWith(text);
    }

    return null;
  };
}
