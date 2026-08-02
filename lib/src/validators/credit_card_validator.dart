import '../core/validation_messages.dart';
import '../core/validation_types.dart';

Validator creditCardValidator({
  String message = ValidationMessages.invalidCreditCard,
}) {
  return (String? value) {
    if (value == null || value.trim().isEmpty) {
      return null;
    }

    // Remove spaces and dashes
    final number = value.replaceAll(RegExp(r'[\s-]'), '');

    // Only digits
    if (!RegExp(r'^\d+$').hasMatch(number)) {
      return message;
    }

    // Card length
    if (number.length < 13 || number.length > 19) {
      return message;
    }

    // Luhn Algorithm
    int sum = 0;
    bool alternate = false;

    for (int i = number.length - 1; i >= 0; i--) {
      int digit = int.parse(number[i]);

      if (alternate) {
        digit *= 2;

        if (digit > 9) {
          digit -= 9;
        }
      }

      sum += digit;
      alternate = !alternate;
    }

    return sum % 10 == 0 ? null : message;
  };
}
