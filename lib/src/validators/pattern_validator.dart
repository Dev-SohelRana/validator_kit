import 'package:validator_kit/src/core/validation_messages.dart';

import '../core/validation_types.dart';

Validator patternValidator(
  RegExp pattern, {
  String? message,
}) {
  return (String? value) {
    if (value == null || value.trim().isEmpty) {
      return null;
    }

    if (!pattern.hasMatch(value.trim())) {
      return message ?? ValidationMessages.invalidPattern;
    }

    return null;
  };
}
