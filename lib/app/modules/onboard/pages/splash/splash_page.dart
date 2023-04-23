import 'package:flutter/material.dart';
import 'package:flutter_bdd/app/modules/onboard/pages/splash/splash_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

/// SplashPage is the first page that the user will see when the app is opened.
///
/// It is responsible for loading the app's data and redirecting the user to the
/// correct page.
class SplashPage extends StatefulWidget {
  /// Creates a SplashPage.
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final store = Modular.get<SplashStore>();

  @override
  void initState() {
    super.initState();

    store.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('Splash Page'),
            SizedBox(height: 16),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
