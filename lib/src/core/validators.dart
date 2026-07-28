import 'package:validator_kit/src/validators/combine_validator.dart';
import 'package:validator_kit/src/validators/confirm_password_validator.dart';
import 'package:validator_kit/src/validators/max_length_validator.dart';
import 'package:validator_kit/src/validators/min_length_validator.dart';
import 'package:validator_kit/src/validators/number_validator.dart';
import 'package:validator_kit/src/validators/password_validator.dart';
import 'package:validator_kit/src/validators/pattern_validator.dart';
import 'package:validator_kit/src/validators/phone_validator.dart';
import 'package:validator_kit/src/validators/url_validator.dart';
import 'package:validator_kit/src/validators/username_validator.dart';

import '../validators/email_validator.dart';
import '../validators/required_validator.dart';
import 'validation_types.dart';

class Validators {
  Validators._();

  static Validator combine(List<Validator> validators) {
    return combineValidators(validators);
  }

  static Validator required({
    String message = 'This field is required.',
  }) =>
      requiredValidator(message: message);

  static Validator email({
    String message = 'Please enter a valid email address.',
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

  static Validator password(
    String Function() param0, {
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
    String? message,
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
