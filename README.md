<img
src="https://raw.githubusercontent.com/Dev-SohelRana/validator_kit/main/assets/banner.png"
alt="Validator Kit Banner">

<h1 align="center">Validator Kit</h1>

<p align="center">
A lightweight, reusable, customizable and null-safe <b>Flutter form validation package</b> that helps you validate forms with clean and readable code.
</p>

<p align="center">
Perfect for <b>Flutter forms</b>, <b>form validation</b>, <b>email validation</b>, <b>password validation</b>, <b>phone validation</b>, <b>URL validation</b>, and custom <b>input validation</b>. Validator Kit makes it easy to build production-ready Flutter applications with a simple and consistent validation API.
</p>

<p align="center">

[![pub package](https://img.shields.io/pub/v/validator_kit.svg)](https://pub.dev/packages/validator_kit)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Flutter](https://img.shields.io/badge/Flutter-Compatible-blue.svg)](https://flutter.dev)

</p>

---

<img
src="https://raw.githubusercontent.com/Dev-SohelRana/validator_kit/main/assets/logo.png"
width="180">

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
- ✅ Date Validator
- ✅ Credit Card Validator
- ✅ Minimum Value Validator
- ✅ Maximum Value Validator
- ✅ Range Validator
- ✅ Minimum Length Validator
- ✅ Maximum Length Validator
- ✅ Fixed Length Validator
- ✅ Contains Validator
- ✅ Starts With Validator
- ✅ Ends With Validator
- ✅ Equal Validator
- ✅ Not Equal Validator
- ✅ Combine Multiple Validators
- ✅ Validate Without TextFormField
- ✅ Custom Error Messages
- ✅ Null-safe
- ✅ Lightweight & Fast

---

# 📱 Preview

<img
src="https://raw.githubusercontent.com/Dev-SohelRana/validator_kit/main/assets/preview.png"
width="900">

---

## 🎬 Demo

<img
src="https://raw.githubusercontent.com/Dev-SohelRana/validator_kit/main/assets/demo.gif"
width="900">

---

# 📦 Installation

Add the package to your **pubspec.yaml**

```yaml
dependencies:
  validator_kit: latest_version
```

or install directly from pub.dev.

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

# ⚡ Quick Start

```dart
TextFormField(
  validator: ValidatorKit.combine([
    ValidatorKit.required(),
    ValidatorKit.email(),
  ]),
)
```

---

# 📚 Available Validators

## Required

```dart
ValidatorKit.required()
```

---

## Email

```dart
ValidatorKit.email()
```

---

## Phone

```dart
ValidatorKit.phone()
```

---

## Username

```dart
ValidatorKit.username()
```

---

## Password

```dart
ValidatorKit.password()
```

---

## Confirm Password

```dart
ValidatorKit.confirmPassword(
  () => passwordController.text,
)
```

---


## URL

```dart
ValidatorKit.url()
```

---

## Number

```dart
ValidatorKit.number()
```

---

## Minimum Number

```dart
ValidatorKit.min(18)
```

---

## Maximum Number

```dart
ValidatorKit.max(100)
```

---

## Range Number

```dart
ValidatorKit.range(
  min: 18,
  max: 60,
)
```

---

## Length

```dart
ValidatorKit.length(
  min: 5,
  max: 20,
)
```

Example:

```dart
validator: ValidatorKit.combine([
  ValidatorKit.required(),
  ValidatorKit.length(
    min: 5,
    max: 20,
  ),
])
```

---

## Minimum Length

```dart
ValidatorKit.minLength(8)
```

---

## Maximum Length

```dart
ValidatorKit.maxLength(30)
```

---

## Contains

```dart
ValidatorKit.contains('Flutter')
```

Example:

```dart
validator: ValidatorKit.combine([
  ValidatorKit.required(),
  ValidatorKit.contains('Flutter'),
])
```

---

## Starts With

```dart
ValidatorKit.startsWith('Mr.')
```

Example:

```dart
validator: ValidatorKit.combine([
  ValidatorKit.required(),
  ValidatorKit.startsWith('Mr.'),
])
```

---

## Ends With

```dart
ValidatorKit.endsWith('.com')
```

Example:

```dart
validator: ValidatorKit.combine([
  ValidatorKit.required(),
  ValidatorKit.endsWith('.com'),
])
```

---

## Equal

```dart
ValidatorKit.equal('Flutter')
```

Example:

```dart
validator: ValidatorKit.combine([
  ValidatorKit.required(),
  ValidatorKit.equal('Flutter'),
])
```

---

## Not Equal

```dart
ValidatorKit.notEqual('admin')
```

Example:

```dart
validator: ValidatorKit.combine([
  ValidatorKit.required(),
  ValidatorKit.notEqual('admin'),
])
```

---


## Pattern

```dart
ValidatorKit.pattern(
  RegExp(r'^[A-Z]{2,5}-\d{4}-\d{4}$'),
  message: 'Enter a valid Employee ID',
)
```

---

## Credit Card

```dart
ValidatorKit.creditCard()
```

Example:

```dart
validator: ValidatorKit.combine([
  ValidatorKit.required(),
  ValidatorKit.creditCard(),
])
```

---

## Date

```dart
ValidatorKit.date()
```

Example:

```dart
validator: ValidatorKit.combine([
  ValidatorKit.required(),
  ValidatorKit.date(),
])
```

---

## Combine Validators

```dart
validator: ValidatorKit.combine([
  ValidatorKit.required(),
  ValidatorKit.email(),
  ValidatorKit.minLength(8),
])
```

---

## Disable Validation

If you want to disable validation conditionally:

```dart
ValidatorKit.none()
```

Example

```dart
validator: isGuest
    ? ValidatorKit.none()
    : ValidatorKit.required(),
```

---

## Custom Error Message

```dart
ValidatorKit.email(
  message: 'Please enter a valid email.',
)
```

---

# 💻 Complete Example

```dart
TextFormField(
  decoration: const InputDecoration(
    labelText: 'Email',
  ),
  validator: ValidatorKit.combine([
    ValidatorKit.required(),
    ValidatorKit.email(),
    ValidatorKit.minLength(8),
  ]),
)
```

---

# ❤️ Why Validator Kit?

Validator Kit is a modern **Flutter validator package** designed to simplify **form validation** in Flutter applications.

Whether you need an **email validator**, **password validator**, **phone validator**, **URL validator**, **username validator**, or custom **input validation**, Validator Kit provides a clean, reusable and developer-friendly API.

### Why developers choose Validator Kit

- 🚀 Lightweight and fast
- 🧩 Easy to integrate into any Flutter project
- 📝 Clean and readable API
- 🔄 Combine multiple validators easily
- 🎯 Supports custom error messages
- ✅ Fully null-safe
- ♻️ Reusable across multiple projects
- 📱 Perfect for Flutter Forms
- 💙 Production ready
---

## 🛣️ Roadmap

- 🌍 Localization
- 🌐 IPv4 Validator
- 🌐 IPv6 Validator
- 🆔 IBAN Validator
- 🪪 UUID Validator
- 📍 Latitude & Longitude Validator
- 📦 File Validator
- 📅 Time Validator
- 🔥 Async Validators
- ⚙️ Validator Builder
- 🌎 Multi-language Error Messages

---

# 🤝 Contributing

Contributions are welcome!

If you'd like to improve Validator Kit, feel free to open an issue or submit a pull request.

---

# ⭐ Support

If you like this package, please give it a ⭐ on GitHub.

It helps the project grow and motivates future improvements.

---
## 🤝 Connect with Me

If this package helps you, feel free to connect.

- 💻 GitHub: [Dev-SohelRana](https://github.com/Dev-SohelRana)

- 💼 LinkedIn: [Md. Sohel Rana](https://www.linkedin.com/in/mdsohelrana201/)

- 🌐 Portfolio: https://dev-sohelrana.github.io/sohelrana-portfolio/

---

# 📄 License

This project is licensed under the MIT License.

---

## 🔍 Keywords

Flutter Validator • Form Validation • Validator Package • Flutter Forms • Email Validator • Password Validator • Phone Validator • URL Validator • Username Validator • Input Validation • Null Safe • Flutter Package • Dart Validator • Form Validator • Flutter Validation Library

---