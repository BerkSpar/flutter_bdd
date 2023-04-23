import 'package:flutter/material.dart';
import 'package:flutter_bdd/app/modules/authentication/pages/signin/signin_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

/// Signin Page is the page responsible for the Signin feature.
///
/// It is responsible for providing the dependencies of the Signin feature.
class SigninPage extends StatefulWidget {
  /// Creates a SigninPage.
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final controller = Modular.get<SigninStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: const Key('signin_page'),
      appBar: AppBar(
        title: const Text('Signin Page'),
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
                    key: const Key('signin'),
                    onPressed: controller.signIn,
                    child: const Text('Signin'),
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
