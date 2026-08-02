import '../core/validation_messages.dart';
import '../core/validation_types.dart';

Validator equalValidator(
  String expected, {
  bool caseSensitive = true,
  String? message,
}) {
  assert(expected.isNotEmpty, 'Expected value cannot be empty.');

  return (String? value) {
    if (value == null || value.trim().isEmpty) {
      return null;
    }

    final input = value.trim();

    final isEqual = caseSensitive
        ? input == expected
        : input.toLowerCase() == expected.toLowerCase();

    if (!isEqual) {
      return message ?? ValidationMessages.equal(expected);
    }

    return null;
  };
}
