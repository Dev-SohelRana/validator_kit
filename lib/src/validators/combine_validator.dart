import '../core/validation_types.dart';

Validator combineValidators(List<Validator> validators) {
  return (String? value) {
    for (final validator in validators) {
      final result = validator(value);

      if (result != null) {
        return result;
      }
    }

    return null;
  };
}
