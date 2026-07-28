import '../core/regex_patterns.dart';
import '../core/validation_messages.dart';
import '../core/validation_types.dart';

Validator usernameValidator({
  String? message,
}) {
  return (String? value) {
    if (value == null || value.trim().isEmpty) {
      return null;
    }

    if (!RegexPatterns.username.hasMatch(value.trim())) {
      return message ?? ValidationMessages.invalidUsername;
    }

    return null;
  };
}
