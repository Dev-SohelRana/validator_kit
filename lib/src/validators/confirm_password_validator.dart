import 'package:validator_kit/src/core/validation_messages.dart';

import '../core/validation_types.dart';

Validator confirmPasswordValidator(
  String Function() passwordProvider, {
  String? message,
}) {
  return (String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }

    if (value != passwordProvider()) {
      return message ?? ValidationMessages.passwordMismatch;
    }
    return null;
  };
}
