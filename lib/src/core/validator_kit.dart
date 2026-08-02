import '../validators/combine_validator.dart';
import '../validators/confirm_password_validator.dart';
import '../validators/date_validator.dart';
import '../validators/email_validator.dart';
import '../validators/ends_with_validator.dart';
import '../validators/equal_validator.dart';
import '../validators/length_validator.dart';
import '../validators/max_length_validator.dart';
import '../validators/min_length_validator.dart';
import '../validators/not_equal_validator.dart';
import '../validators/number_validator.dart';
import '../validators/password_validator.dart';
import '../validators/pattern_validator.dart';
import '../validators/phone_validator.dart';
import '../validators/required_validator.dart';
import '../validators/url_validator.dart';
import '../validators/username_validator.dart';
import '../validators/min_validator.dart';
import '../validators/max_validator.dart';
import '../validators/range_validator.dart';
import '../validators/contains_validator.dart';
import '../validators/starts_with_validator.dart';
import '../validators/credit_card_validator.dart';

import 'validation_messages.dart';
import 'validation_types.dart';

/// A lightweight, reusable, and customizable Flutter form validation package.
///
/// `ValidatorKit` provides a collection of commonly used validators for
/// Flutter forms, including email, password, phone number, URL,
/// username, required fields, length validation, pattern matching,
/// and validator composition.
///
/// Example:
///
/// ```dart
/// TextFormField(
///   validator: ValidatorKit.combine([
///     ValidatorKit.required(),
///     ValidatorKit.email(),
///   ]),
/// )
/// ```
class ValidatorKit {
  ValidatorKit._();

  /// Returns a validator that always succeeds.
  ///
  /// Useful when validation needs to be disabled conditionally.
  ///
  /// Example:
  ///
  /// ```dart
  /// validator: isGuest
  ///     ? ValidatorKit.none()
  ///     : ValidatorKit.required(),
  /// ```
  static Validator none() {
    return (_) => null;
  }

  /// Combines multiple validators into a single validator.
  ///
  /// Validators are executed in order, and the first validation
  /// error message is returned.
  ///
  /// Example:
  ///
  /// ```dart
  /// validator: ValidatorKit.combine([
  ///   ValidatorKit.required(),
  ///   ValidatorKit.email(),
  ///   ValidatorKit.minLength(8),
  /// ])
  /// ```
  static Validator combine(List<Validator> validators) {
    return combineValidators(validators);
  }

  /// Returns a validator that checks whether the field is empty.
  ///
  /// Example:
  ///
  /// ```dart
  /// validator: ValidatorKit.required()
  /// ```
  static Validator required({String message = ValidationMessages.required}) =>
      requiredValidator(message: message);

  /// Returns a validator that checks whether the input
  /// is a valid email address.
  ///
  /// Example:
  ///
  /// ```dart
  /// validator: ValidatorKit.email()
  /// ```
  static Validator email({String message = ValidationMessages.invalidEmail}) =>
      emailValidator(message: message);

  /// Returns a validator that checks whether the input
  /// contains at least [length] characters.
  ///
  /// Example:
  ///
  /// ```dart
  /// validator: ValidatorKit.minLength(8)
  /// ```
  static Validator minLength(int length, {String? message}) {
    return minLengthValidator(length, message: message);
  }

  /// Returns a validator that checks whether the input
  /// does not exceed [length] characters.
  ///
  /// Example:
  ///
  /// ```dart
  /// validator: ValidatorKit.maxLength(30)
  /// ```
  static Validator maxLength(int length, {String? message}) {
    return maxLengthValidator(length, message: message);
  }

  /// Returns a validator that checks whether the input
  /// contains only numeric characters.
  ///
  /// Example:
  ///
  /// ```dart
  /// validator: ValidatorKit.number()
  /// ```
  static Validator number({String? message}) {
    return numberValidator(message: message);
  }

  /// Returns a validator for strong passwords.
  ///
  /// By default the password must:
  /// - contain at least 8 characters
  /// - include an uppercase letter
  /// - include a lowercase letter
  /// - include a number
  /// - include a special character
  ///
  /// Example:
  ///
  /// ```dart
  /// validator: ValidatorKit.password()
  /// ```
  static Validator password({
    int minLength = 8,
    bool uppercase = true,
    bool lowercase = true,
    bool number = true,
    bool specialCharacter = true,
    String? message,
  }) {
    return passwordValidator(
      minLength: minLength,
      uppercase: uppercase,
      lowercase: lowercase,
      number: number,
      specialCharacter: specialCharacter,
      message: message,
    );
  }

  /// Returns a validator that checks whether the input
  /// is a valid URL.
  ///
  /// Example:
  ///
  /// ```dart
  /// validator: ValidatorKit.url()
  /// ```
  static Validator url({String? message}) {
    return urlValidator(message: message);
  }

  /// Returns a validator that checks whether the input
  /// is a valid phone number.
  ///
  /// Example:
  ///
  /// ```dart
  /// validator: ValidatorKit.phone()
  /// ```
  static Validator phone({String message = ValidationMessages.invalidPhone}) {
    return phoneValidator(message: message);
  }

  /// Returns a validator that checks whether the input
  /// matches the given regular expression.
  ///
  /// Example:
  ///
  /// ```dart
  /// validator: ValidatorKit.pattern(
  ///   RegExp(r'^[A-Z]{3}[0-9]{4}$'),
  /// )
  /// ```
  static Validator pattern(RegExp pattern, {String? message}) {
    return patternValidator(pattern, message: message);
  }

  /// Returns a validator that checks whether the input
  /// is a valid username.
  ///
  /// Example:
  ///
  /// ```dart
  /// validator: ValidatorKit.username()
  /// ```
  static Validator username({String? message}) {
    return usernameValidator(message: message);
  }

  /// Returns a validator that checks whether the confirmation
  /// password matches the original password.
  ///
  /// Example:
  ///
  /// ```dart
  /// validator: ValidatorKit.confirmPassword(
  ///   () => passwordController.text,
  /// )
  /// ```
  static Validator confirmPassword(
    String Function() passwordProvider, {
    String? message,
  }) {
    return confirmPasswordValidator(passwordProvider, message: message);
  }

  /// Returns a validator that checks whether
  /// the entered number is greater than or equal to [value].
  ///
  /// Example:
  ///
  /// ```dart
  /// ValidatorKit.min(18)
  /// ```
  static Validator min(num value, {String? message}) {
    return minValidator(value, message: message);
  }

  /// Returns a validator that checks whether
  /// the entered number is less than or equal to [value].
  ///
  /// Example:
  ///
  /// ```dart
  /// ValidatorKit.max(100)
  /// ```
  static Validator max(num value, {String? message}) {
    return maxValidator(value, message: message);
  }

  /// Returns a validator that checks whether
  /// the entered number is between [min] and [max].
  ///
  /// Example:
  ///
  /// ```dart
  /// ValidatorKit.range(
  ///   min: 18,
  ///   max: 60,
  /// )
  /// ```
  static Validator range({
    required num min,
    required num max,
    String? message,
  }) {
    return rangeValidator(min: min, max: max, message: message);
  }

  /// Returns a validator that checks whether
  /// the input contains the specified [text].
  ///
  /// Example:
  ///
  /// ```dart
  /// ValidatorKit.contains('@')
  /// ```
  static Validator contains(
    String text, {
    bool caseSensitive = true,
    String? message,
  }) {
    return containsValidator(
      text,
      caseSensitive: caseSensitive,
      message: message,
    );
  }

  /// Returns a validator that checks whether
  /// the input starts with the specified [text].
  ///
  /// Example:
  ///
  /// ```dart
  /// ValidatorKit.startsWith('Mr.')
  /// ```
  static Validator startsWith(
    String text, {
    bool caseSensitive = true,
    String? message,
  }) {
    return startsWithValidator(
      text,
      caseSensitive: caseSensitive,
      message: message,
    );
  }

  /// Returns a validator that checks whether
  /// the input ends with the specified [text].
  ///
  /// Example:
  ///
  /// ```dart
  /// ValidatorKit.endsWith('.com')
  /// ```
  static Validator endsWith(
    String text, {
    bool caseSensitive = true,
    String? message,
  }) {
    return endsWithValidator(
      text,
      caseSensitive: caseSensitive,
      message: message,
    );
  }

  /// Returns a validator that checks whether
  /// the input is equal to the specified [value].
  ///
  /// Example:
  ///
  /// ```dart
  /// ValidatorKit.equal('Flutter')
  /// ```
  static Validator equal(
    String value, {
    bool caseSensitive = true,
    String? message,
  }) {
    return equalValidator(
      value,
      caseSensitive: caseSensitive,
      message: message,
    );
  }

  /// Returns a validator that checks whether
  /// the input is NOT equal to the specified [value].
  ///
  /// Example:
  ///
  /// ```dart
  /// ValidatorKit.notEqual('admin')
  /// ```
  static Validator notEqual(
    String value, {
    bool caseSensitive = true,
    String? message,
  }) {
    return notEqualValidator(
      value,
      caseSensitive: caseSensitive,
      message: message,
    );
  }

  /// Returns a validator that checks whether
  /// the input length is between [min] and [max].
  ///
  /// Example:
  ///
  /// ```dart
  /// ValidatorKit.length(
  ///   min: 8,
  ///   max: 20,
  /// )
  /// ```
  static Validator length({
    required int min,
    required int max,
    String? message,
  }) {
    return lengthValidator(min: min, max: max, message: message);
  }

  /// Returns a validator that checks whether
  /// the input is a valid credit card number.
  ///
  /// Supports Visa, MasterCard, American Express,
  /// Discover and other cards using the Luhn algorithm.
  ///
  /// Example:
  ///
  /// ```dart
  /// ValidatorKit.creditCard()
  /// ```
  static Validator creditCard({
    String message = ValidationMessages.invalidCreditCard,
  }) {
    return creditCardValidator(message: message);
  }

  /// Returns a validator that checks whether
  /// the input is a valid date.
  ///
  /// Supported formats:
  /// - yyyy-MM-dd
  /// - dd/MM/yyyy
  /// - MM/dd/yyyy
  /// - dd-MM-yyyy
  /// - MM-dd-yyyy
  ///
  /// Example:
  ///
  /// ```dart
  /// ValidatorKit.date()
  /// ```
  static Validator date({
    List<String> formats = const [
      'yyyy-MM-dd',
      'dd/MM/yyyy',
      'MM/dd/yyyy',
      'dd-MM-yyyy',
      'MM-dd-yyyy',
    ],
    String message = ValidationMessages.invalidDate,
  }) {
    return dateValidator(formats: formats, message: message);
  }

  /// Returns true if the value is a valid email.
  static bool isEmail(String? value) {
    return email()(value) == null;
  }

  /// Returns true if the value is a valid phone number.
  static bool isPhone(String? value) {
    return phone()(value) == null;
  }

  /// Returns true if the value is a valid URL.
  static bool isUrl(String? value) {
    return url()(value) == null;
  }

  /// Returns true if the value is a valid username.
  static bool isUsername(String? value) {
    return username()(value) == null;
  }

  /// Returns true if the value is numeric.
  static bool isNumber(String? value) {
    return number()(value) == null;
  }

  /// Returns true if the value is a valid credit card.
  static bool isCreditCard(String? value) {
    return creditCard()(value) == null;
  }

  /// Returns true if the value is a valid date.
  static bool isDate(String? value) {
    return date()(value) == null;
  }

  /// Returns true if the value is a valid password.
  static bool isPassword(String? value) {
    return password()(value) == null;
  }
}
