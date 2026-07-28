class ValidationMessages {
  ValidationMessages._();

  static const required = 'This field is required.';

  static const invalidEmail = 'Please enter a valid email address.';

  static const invalidPhone = 'Please enter a valid phone number.';

  static const invalidUrl = 'Please enter a valid URL.';

  static const invalidUsername = 'Please enter a valid username.';

  static const invalidPassword = 'Please enter a valid password.';

  static const invalidNumber = 'Please enter a valid number.';

  static String minLength(int value) => 'Must be at least $value characters.';

  static String maxLength(int value) => 'Must not exceed $value characters.';

  static String min(num value) => 'Must be at least $value.';

  static String max(num value) => 'Must not exceed $value.';
}
