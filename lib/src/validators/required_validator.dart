import 'package:validator_kit/src/core/validation_messages.dart';
import 'package:validator_kit/src/core/validation_types.dart';

Validator requiredValidator({String? message}) {
  return (String? value) {
    if (value == null || value.trim().isEmpty) {
      return message ?? ValidationMessages.required;
    }

    return null;
  };
}
