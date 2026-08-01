import 'package:validator_kit/src/core/regex_patterns.dart';
import 'package:validator_kit/src/core/validation_messages.dart';

import '../core/validation_types.dart';

Validator passwordValidator({
  int minLength = 8,
  bool uppercase = true,
  bool lowercase = true,
  bool number = true,
  bool specialCharacter = true,
  String? message,
}) {
  return (String? value) {
    if (value == null || value.trim().isEmpty) {
      return null;
    }

    final password = value.trim();
    if (password.length < minLength) {
      return message ?? ValidationMessages.passwordMinLength(minLength);
    }

    if (uppercase && !RegexPatterns.uppercase.hasMatch(password)) {
      return message ?? ValidationMessages.passwordUppercase;
    }

    if (lowercase && !RegexPatterns.lowercase.hasMatch(password)) {
      return message ?? ValidationMessages.passwordLowercase;
    }

    if (number && !RegexPatterns.number.hasMatch(password)) {
      return message ?? ValidationMessages.passwordNumber;
    }

    if (specialCharacter &&
        !RegexPatterns.specialCharacter.hasMatch(password)) {
      return message ?? ValidationMessages.passwordSpecialCharacter;
    }

    return null;
  };
}
