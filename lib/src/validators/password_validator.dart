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
      return message ?? 'Password must be at least $minLength characters.';
    }

    if (uppercase && !RegExp(r'[A-Z]').hasMatch(password)) {
      return message ?? 'Password must contain an uppercase letter.';
    }

    if (lowercase && !RegExp(r'[a-z]').hasMatch(password)) {
      return message ?? 'Password must contain a lowercase letter.';
    }

    if (number && !RegExp(r'[0-9]').hasMatch(password)) {
      return message ?? 'Password must contain a number.';
    }

    if (specialCharacter &&
        !RegExp(r'[!@#\$%^&*(),.?":{}|<>]').hasMatch(password)) {
      return message ?? 'Password must contain a special character.';
    }

    return null;
  };
}
