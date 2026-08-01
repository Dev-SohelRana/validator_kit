import '../validators/combine_validator.dart';
import '../validators/confirm_password_validator.dart';
import '../validators/email_validator.dart';
import '../validators/max_length_validator.dart';
import '../validators/min_length_validator.dart';
import '../validators/number_validator.dart';
import '../validators/password_validator.dart';
import '../validators/pattern_validator.dart';
import '../validators/phone_validator.dart';
import '../validators/required_validator.dart';
import '../validators/url_validator.dart';
import '../validators/username_validator.dart';

import 'validation_messages.dart';
import 'validation_types.dart';

class ValidatorKit {
  ValidatorKit._();

  static Validator none() {
    return (_) => null;
  }

  static Validator combine(List<Validator> validators) {
    return combineValidators(validators);
  }

  static Validator required({
    String message = ValidationMessages.required,
  }) =>
      requiredValidator(message: message);

  static Validator email({
    String message = ValidationMessages.invalidEmail,
  }) =>
      emailValidator(message: message);

  static Validator minLength(
    int length, {
    String? message,
  }) {
    return minLengthValidator(
      length,
      message: message,
    );
  }

  static Validator maxLength(
    int length, {
    String? message,
  }) {
    return maxLengthValidator(
      length,
      message: message,
    );
  }

  static Validator number({
    String? message,
  }) {
    return numberValidator(
      message: message,
    );
  }

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

  static Validator url({
    String? message,
  }) {
    return urlValidator(
      message: message,
    );
  }

  static Validator phone({
    String message = ValidationMessages.invalidPhone,
  }) {
    return phoneValidator(
      message: message,
    );
  }

  static Validator pattern(
    RegExp pattern, {
    String? message,
  }) {
    return patternValidator(
      pattern,
      message: message,
    );
  }

  static Validator username({
    String? message,
  }) {
    return usernameValidator(
      message: message,
    );
  }

  static Validator confirmPassword(
    String Function() passwordProvider, {
    String? message,
  }) {
    return confirmPasswordValidator(
      passwordProvider,
      message: message,
    );
  }
}
