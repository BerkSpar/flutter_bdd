import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

/// OnboardPage is show when the user first opens the app.
///
/// It is responsible for showing the user the app's features. It is also
/// responsible for showing the user how to create an account or login.
class OnboardPage extends StatefulWidget {
  /// Creates a OnboardPage.
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: const Key('onboard'),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Onboard Page'),
            const SizedBox(height: 16),
            ElevatedButton(
              key: const Key('register'),
              onPressed: () {
                Modular.to.pushNamed('/auth/register');
              },
              child: const Text('Register'),
            ),
            ElevatedButton(
              key: const Key('signin'),
              onPressed: () {
                Modular.to.pushNamed('/auth/signin');
              },
              child: const Text('Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}
