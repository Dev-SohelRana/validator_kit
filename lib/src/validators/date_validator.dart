import '../core/validation_messages.dart';
import '../core/validation_types.dart';

Validator dateValidator({
  List<String> formats = const [
    'yyyy-MM-dd',
    'dd/MM/yyyy',
    'MM/dd/yyyy',
    'dd-MM-yyyy',
    'MM-dd-yyyy',
  ],
  String message = ValidationMessages.invalidDate,
}) {
  return (String? value) {
    if (value == null || value.trim().isEmpty) {
      return null;
    }

    final input = value.trim();

    for (final format in formats) {
      if (_isValidDate(input, format)) {
        return null;
      }
    }

    return message;
  };
}

bool _isValidDate(String input, String format) {
  final separator = format.contains('/') ? '/' : '-';

  final values = input.split(separator);

  if (values.length != 3) {
    return false;
  }

  int day;
  int month;
  int year;

  try {
    switch (format) {
      case 'yyyy-MM-dd':
        year = int.parse(values[0]);
        month = int.parse(values[1]);
        day = int.parse(values[2]);
        break;

      case 'dd/MM/yyyy':
      case 'dd-MM-yyyy':
        day = int.parse(values[0]);
        month = int.parse(values[1]);
        year = int.parse(values[2]);
        break;

      case 'MM/dd/yyyy':
      case 'MM-dd-yyyy':
        month = int.parse(values[0]);
        day = int.parse(values[1]);
        year = int.parse(values[2]);
        break;

      default:
        return false;
    }
  } catch (_) {
    return false;
  }

  if (year < 1) return false;
  if (month < 1 || month > 12) return false;

  final lastDay = DateTime(year, month + 1, 0).day;

  if (day < 1 || day > lastDay) {
    return false;
  }

  return true;
}
