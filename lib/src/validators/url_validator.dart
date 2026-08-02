import '../core/regex_patterns.dart';
import '../core/validation_messages.dart';
import '../core/validation_types.dart';

Validator urlValidator({String? message}) {
  return (String? value) {
    if (value == null || value.trim().isEmpty) {
      return null;
    }

    if (!RegexPatterns.url.hasMatch(value.trim())) {
      return message ?? ValidationMessages.invalidUrl;
    }

    return null;
  };
}
