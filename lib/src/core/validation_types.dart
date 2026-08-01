/// A validator function used throughout Validator Kit.
///
/// A validator receives the current field value and returns:
/// - `null` if the value is valid.
/// - A validation error message if the value is invalid.
///
/// Example:
///
/// ```dart
/// final Validator emailValidator = ValidatorKit.email();
///
/// final result = emailValidator('john@example.com');
/// print(result); // null
/// ```
typedef Validator = String? Function(String? value);
