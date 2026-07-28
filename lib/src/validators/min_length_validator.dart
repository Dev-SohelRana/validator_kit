import 'package:validator_kit/src/core/validation_messages.dart';
import '../core/validation_types.dart';

Validator minLengthValidator(
  int length, {
  String? message,
}) {
  return (String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }

    if (value.length < length) {
      return message ?? ValidationMessages.minLength(length);
    }

    return null;
  };
}
