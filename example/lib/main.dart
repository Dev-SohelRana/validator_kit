import 'package:flutter/material.dart';
import 'package:validator_kit/validator_kit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: DemoPage());
  }
}

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  final _formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Validator Kit')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Email'),
                  validator: ValidatorKit.combine([
                    ValidatorKit.required(),
                    ValidatorKit.email(),
                    ValidatorKit.minLength(8),
                  ]),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Website'),
                  validator: ValidatorKit.combine([
                    ValidatorKit.required(),
                    ValidatorKit.url(),
                  ]),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Phone'),
                  keyboardType: TextInputType.phone,
                  validator: ValidatorKit.combine([
                    ValidatorKit.required(),
                    ValidatorKit.phone(),
                  ]),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Employee ID'),
                  validator: ValidatorKit.combine([
                    ValidatorKit.required(),
                    ValidatorKit.pattern(
                      RegExp(r'^[A-Z]{3}[0-9]{4}$'),
                      message: 'Invalid Employee ID',
                    ),
                  ]),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Username'),
                  validator: ValidatorKit.combine([
                    ValidatorKit.required(),
                    ValidatorKit.username(),
                  ]),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(labelText: 'Password'),
                  validator: ValidatorKit.combine([
                    ValidatorKit.required(),
                    ValidatorKit.password(),
                  ]),
                ),

                const SizedBox(height: 20),

                TextFormField(
                  controller: confirmPasswordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Confirm Password',
                  ),
                  validator: ValidatorKit.combine([
                    ValidatorKit.required(),
                    ValidatorKit.confirmPassword(() => passwordController.text),
                  ]),
                ),
                const SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {
                    _formKey.currentState!.validate();
                  },
                  child: const Text("Validate"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
