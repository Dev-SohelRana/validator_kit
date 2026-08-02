class RegexPatterns {
  RegexPatterns._();

  static final RegExp email = RegExp(
    r'^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$',
  );

  static final RegExp url = RegExp(
    r'^(https?:\/\/)?([\w-]+\.)+[\w-]{2,}(\/\S*)?$',
    caseSensitive: false,
  );

  static final RegExp phone = RegExp(r'^\+?[0-9][0-9\s\-]{7,18}$');

  static final RegExp username = RegExp(r'^[a-zA-Z0-9_]{3,30}$');
  static final RegExp uppercase = RegExp(r'[A-Z]');

  static final RegExp lowercase = RegExp(r'[a-z]');

  static final RegExp number = RegExp(r'[0-9]');

  static final RegExp specialCharacter = RegExp(r'[!@#\$%^&*(),.?":{}|<>]');
}
