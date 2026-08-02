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
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Age'),
                  keyboardType: TextInputType.number,
                  validator: ValidatorKit.combine([
                    ValidatorKit.required(),
                    ValidatorKit.min(18),
                  ]),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Score'),
                  keyboardType: TextInputType.number,
                  validator: ValidatorKit.combine([
                    ValidatorKit.required(),
                    ValidatorKit.max(100),
                  ]),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Age Range'),
                  keyboardType: TextInputType.number,
                  validator: ValidatorKit.combine([
                    ValidatorKit.required(),
                    ValidatorKit.range(min: 18, max: 60),
                  ]),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Bio'),
                  validator: ValidatorKit.combine([
                    ValidatorKit.required(),
                    ValidatorKit.contains('Flutter'),
                  ]),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Name'),
                  validator: ValidatorKit.combine([
                    ValidatorKit.required(),
                    ValidatorKit.startsWith('Mr.'),
                  ]),
                ),

                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Framework'),
                  validator: ValidatorKit.combine([
                    ValidatorKit.required(),
                    ValidatorKit.equal('Flutter'),
                  ]),
                ),

                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Username Length',
                  ),
                  validator: ValidatorKit.combine([
                    ValidatorKit.required(),
                    ValidatorKit.length(min: 5, max: 20),
                  ]),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Credit Card'),
                  keyboardType: TextInputType.number,
                  validator: ValidatorKit.combine([
                    ValidatorKit.required(),
                    ValidatorKit.creditCard(),
                  ]),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Date of Birth'),
                  validator: ValidatorKit.combine([
                    ValidatorKit.required(),
                    ValidatorKit.date(),
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
