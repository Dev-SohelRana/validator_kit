library validator_kit;

/// Validator Kit
///
/// A lightweight and reusable Flutter form validation package.
///
/// Example:
/// ```dart
/// TextFormField(
///   validator: Validators.combine([
///     Validators.required(),
///     Validators.email(),
///   ]),
/// )
/// ```
///
export 'src/core/validators.dart';
