import 'package:validator_kit/src/core/regex_patterns.dart';
import 'package:validator_kit/src/core/validation_types.dart';

Validator emailValidator({
  String message = 'Please enter a valid email address.',
}) {
  return (String? value) {
    if (value == null || value.trim().isEmpty) {
      return null;
    }

    if (!RegexPatterns.email.hasMatch(value.trim())) {
      return message;
    }

    return null;
  };
}
