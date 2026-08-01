/// Default validation error messages used by Validator Kit.
///
/// You can override these messages by passing a custom `message`
/// to individual validators.
class ValidationMessages {
  ValidationMessages._();

  /// Error message for required fields.
  static const required = 'This field is required.';

  /// Error message for invalid email addresses.
  static const invalidEmail = 'Please enter a valid email address.';

  /// Error message for invalid phone numbers.
  static const invalidPhone = 'Please enter a valid phone number.';

  /// Error message for invalid URLs.
  static const invalidUrl = 'Please enter a valid URL.';

  /// Error message for invalid usernames.
  static const invalidUsername = 'Please enter a valid username.';

  /// Error message for invalid passwords.
  static const invalidPassword = 'Please enter a valid password.';

  /// Error message for invalid numbers.
  static const invalidNumber = 'Please enter a valid number.';

  /// Returns an error message for minimum length validation.
  static String minLength(int value) => 'Must be at least $value characters.';

  /// Returns an error message for maximum length validation.
  static String maxLength(int value) => 'Must not exceed $value characters.';

  /// Returns an error message for minimum numeric value validation.
  static String min(num value) => 'Must be at least $value.';

  /// Returns an error message for maximum numeric value validation.
  static String max(num value) => 'Must not exceed $value.';

  /// Error message when a password is shorter than the minimum length.
  static String passwordMinLength(int length) =>
      'Password must be at least $length characters.';

  /// Error message when the password does not contain an uppercase letter.
  static const passwordUppercase = 'Password must contain an uppercase letter.';

  /// Error message when the password does not contain a lowercase letter.
  static const passwordLowercase = 'Password must contain a lowercase letter.';

  /// Error message when the password does not contain a number.
  static const passwordNumber = 'Password must contain a number.';

  /// Error message when the password does not contain a special character.
  static const passwordSpecialCharacter =
      'Password must contain a special character.';

  /// Error message when two passwords do not match.
  static const passwordMismatch = 'Passwords do not match.';

  /// Error message for invalid pattern matching.
  static const invalidPattern = 'Invalid format.';
}
