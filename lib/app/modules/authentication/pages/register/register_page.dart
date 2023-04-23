import 'package:flutter/material.dart';
import 'package:flutter_bdd/app/modules/authentication/pages/register/register_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

/// RegisterPage is the page responsible for the Register feature.
///
/// It is responsible for providing the dependencies of the Register feature.
class RegisterPage extends StatefulWidget {
  /// Creates a RegisterPage.
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final controller = Modular.get<RegisterStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: const Key('register_page'),
      appBar: AppBar(
        title: const Text('Register Page'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                const SizedBox(height: 16),
                TextFormField(
                  key: const Key('name'),
                  decoration: const InputDecoration(
                    labelText: 'Name',
                  ),
                  onChanged: (value) => controller.user.name = value,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some name';
                    }

                    return null;
                  },
                ),
                const SizedBox(height: 8),
                TextFormField(
                  key: const Key('email'),
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                  onChanged: (value) => controller.user.email = value,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some email';
                    }

                    if (!RegExp(
                      r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+',
                    ).hasMatch(value)) {
                      return 'Please enter a valid email';
                    }

                    return null;
                  },
                ),
                const SizedBox(height: 8),
                TextFormField(
                  key: const Key('password'),
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  ),
                  onChanged: (value) => controller.user.password = value,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some password';
                    }

                    if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }

                    return null;
                  },
                ),
                const Spacer(),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    key: const Key('register'),
                    onPressed: controller.register,
                    child: const Text('Register'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
