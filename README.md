# Validator Kit

A lightweight, reusable, and customizable Flutter form validation package.

[![pub package](https://img.shields.io/pub/v/validator_kit.svg)](https://pub.dev/packages/validator_kit)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

## ✨ Features

- ✅ Required Validator
- ✅ Email Validator
- ✅ Phone Validator
- ✅ URL Validator
- ✅ Username Validator
- ✅ Password Validator
- ✅ Confirm Password Validator
- ✅ Number Validator
- ✅ Pattern Validator
- ✅ Min Length Validator
- ✅ Max Length Validator
- ✅ Combine Multiple Validators
- ✅ Custom Error Messages

---

## 📦 Installation

Add the package to your `pubspec.yaml`.

```yaml
dependencies:
  validator_kit: ^1.0.0
```

Then run:

```bash
flutter pub get
```

---

## 🚀 Quick Start

```dart
import 'package:validator_kit/validator_kit.dart';
```

Example:

```dart
TextFormField(
  validator: Validators.combine([
    Validators.required(),
    Validators.email(),
  ]),
)
```

---

# Validators

## Required

```dart
Validators.required()
```

---

## Email

```dart
Validators.email()
```

---

## Phone

```dart
Validators.phone()
```

---

## URL

```dart
Validators.url()
```

---

## Username

```dart
Validators.username()
```

---

## Password

```dart
Validators.password()
```

---

## Confirm Password

```dart
Validators.confirmPassword(
  () => passwordController.text,
)
```

---

## Number

```dart
Validators.number()
```

---

## Pattern

```dart
Validators.pattern(
  RegExp(r'^[A-Z]{3}[0-9]{4}$'),
  message: 'Invalid Employee ID',
)
```

---

## Minimum Length

```dart
Validators.minLength(8)
```

---

## Maximum Length

```dart
Validators.maxLength(30)
```

---

## Combine Validators

```dart
validator: Validators.combine([
  Validators.required(),
  Validators.email(),
  Validators.minLength(8),
])
```

---

## Custom Error Message

```dart
Validators.email(
  message: 'Please enter a valid email.',
)
```

---

## Example

```dart
TextFormField(
  validator: Validators.combine([
    Validators.required(),
    Validators.email(),
    Validators.minLength(8),
  ]),
)
```

---

## Roadmap

Upcoming features:

- Localization Support
- Date Validator
- Credit Card Validator
- IP Address Validator
- Async Validators
- Country-specific Phone Validation

---

## License

MIT License