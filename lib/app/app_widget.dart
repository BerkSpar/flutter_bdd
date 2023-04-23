import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

/// AppWidget is the root of the application.
///
/// It is responsible for providing the main widget of the application.
class AppWidget extends StatelessWidget {
  /// Creates a AppWidget.
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter BDD',
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
