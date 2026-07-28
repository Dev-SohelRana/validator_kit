import '../core/validation_messages.dart';
import '../core/validation_types.dart';

Validator numberValidator({
  String? message,
}) {
  return (String? value) {
    if (value == null || value.trim().isEmpty) {
      return null;
    }

    if (num.tryParse(value.trim()) == null) {
      return message ?? ValidationMessages.invalidNumber;
    }

    return null;
  };
}
