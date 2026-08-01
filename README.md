# Validator Kit

A lightweight, reusable, and customizable Flutter form validation package for Flutter.

Validator Kit helps you build clean and maintainable forms with minimal code while providing customizable validation messages.

[![pub package](https://img.shields.io/pub/v/validator_kit.svg)](https://pub.dev/packages/validator_kit)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

---

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
- ✅ Minimum Length Validator
- ✅ Maximum Length Validator
- ✅ Combine Multiple Validators
- ✅ Disable Validation (`ValidatorKit.none()`)
- ✅ Custom Error Messages
- ✅ Lightweight
- ✅ Easy to Use
- ✅ Null Safe

---

# 📦 Installation

Add the dependency to your `pubspec.yaml`.

```yaml
dependencies:
  validator_kit: ^1.0.0
```

Then run

```bash
flutter pub get
```

---

# 🚀 Import

```dart
import 'package:validator_kit/validator_kit.dart';
```

---

# Basic Example

```dart
TextFormField(
  validator: ValidatorKit.combine([
    ValidatorKit.required(),
    ValidatorKit.email(),
  ]),
)
```

---

# Available Validators

## Required

```dart
ValidatorKit.required()
```

## Email

```dart
ValidatorKit.email()
```

## Phone

```dart
ValidatorKit.phone()
```

## URL

```dart
ValidatorKit.url()
```

## Username

```dart
ValidatorKit.username()
```

## Number

```dart
ValidatorKit.number()
```

## Password

```dart
ValidatorKit.password()
```

## Confirm Password

```dart
ValidatorKit.confirmPassword(
  () => passwordController.text,
)
```

## Pattern

```dart
ValidatorKit.pattern(
  RegExp(r'^[A-Z]{3}[0-9]{4}$'),
  message: 'Invalid Employee ID',
)
```

## Minimum Length

```dart
ValidatorKit.minLength(8)
```

## Maximum Length

```dart
ValidatorKit.maxLength(30)
```

## Disable Validation

```dart
ValidatorKit.none()
```

Useful when validation should be skipped conditionally.

```dart
validator: isRequired
    ? ValidatorKit.required()
    : ValidatorKit.none(),
```

---

# Combine Multiple Validators

```dart
validator: ValidatorKit.combine([
  ValidatorKit.required(),
  ValidatorKit.email(),
  ValidatorKit.minLength(8),
])
```

---

# Custom Error Message

```dart
ValidatorKit.email(
  message: 'Please enter a valid email address.',
)
```

---

# Complete Example

```dart
TextFormField(
  validator: ValidatorKit.combine([
    ValidatorKit.required(),
    ValidatorKit.email(),
    ValidatorKit.minLength(8),
  ]),
)
```

---

# Roadmap

Upcoming features

- 🌍 Localization Support
- 📅 Date Validator
- 💳 Credit Card Validator
- 🌐 IP Address Validator
- 🔐 OTP Validator
- 🔢 PIN Validator
- 📱 Country-specific Phone Validator
- ⚡ Async Validators
- 🌎 Country-specific Validation Rules

---

# Contributing

Contributions, feature requests, and bug reports are always welcome.

If you have an idea that can improve Validator Kit, feel free to open an issue or submit a pull request.

---

# License

MIT License