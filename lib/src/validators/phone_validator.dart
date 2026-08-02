import '../core/regex_patterns.dart';
import '../core/validation_messages.dart';
import '../core/validation_types.dart';

Validator phoneValidator({String? message}) {
  return (String? value) {
    if (value == null || value.trim().isEmpty) {
      return null;
    }

    final phone = value.trim();

    if (!RegexPatterns.phone.hasMatch(phone)) {
      return message ?? ValidationMessages.invalidPhone;
    }

    return null;
  };
}
