import '../core/validation_messages.dart';
import '../core/validation_types.dart';

Validator containsValidator(
  String text, {
  bool caseSensitive = true,
  String? message,
}) {
  return (String? value) {
    if (value == null || value.trim().isEmpty) {
      return null;
    }

    final input = value.trim();

    final contains = caseSensitive
        ? input.contains(text)
        : input.toLowerCase().contains(text.toLowerCase());

    if (!contains) {
      return message ?? ValidationMessages.contains(text);
    }

    return null;
  };
}
